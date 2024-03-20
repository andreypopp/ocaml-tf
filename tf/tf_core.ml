type json = Yojson.Safe.t

let yojson_of_json json = json

type 'attrs resource = {
  type_ : string;
  id : string;
  json : json;
  attrs : 'attrs;
}

type tf_module = ..
type tf_module += Tf_default

module type COLLECTION = sig
  type t

  val add :
    ?tf_module:tf_module -> type_:string -> id:string -> json -> unit

  val yojson_of : ?tf_module:tf_module -> unit -> json
end

module Make_collection () : COLLECTION = struct
  module Key = struct
    type t = tf_module * string * string

    let hash = Hash.triple Hash.poly Hash.string Hash.string
    let equal = Equal.triple Equal.poly Equal.string Equal.string
  end

  module T = Hashtbl.Make (Key)

  type t = json T.t

  let t : t = T.create 100

  let add ?(tf_module = Tf_default) ~type_ ~id resource =
    let key = tf_module, type_, id in
    match T.find_opt t key with
    | None -> T.replace t key resource
    | Some _ -> failwith "duplicate resource"

  let yojson_of ?tf_module () : json =
    `Assoc
      (T.to_seq t
      |> Seq.filter_map (fun ((m, t, id), resource) ->
             match tf_module with
             | Some m' when Equal.poly m m' ->
                 Some (t, (id, resource))
             | None -> Some (t, (id, resource))
             | Some _ -> None)
      |> Seq.group (Equal.map ~f:fst String.equal)
      |> Seq.map (fun resources ->
             let ts, resources = Seq.split resources in
             let t = Seq.head_exn ts in
             t, `Assoc (Seq.to_list resources))
      |> Seq.to_list)
end

module Resource = Make_collection ()
module Data = Make_collection ()

module Prop = struct
  type 'a t =
    | S : string -> string t
    | I : int -> int t
    | B : bool -> bool t
    | D : json -> _ t
    | L : 'a t list -> 'a list t
    | C : string -> _ t  (** computed *)

  let rec yojson_of_t : type a. a t -> json =
   fun p ->
    match p with
    | S s -> `String s
    | I i -> `Int i
    | B b -> `Bool b
    | D j -> j
    | C c -> `String c
    | L c -> `List (List.map c ~f:yojson_of_t)

  let string s = S s
  let number i = I i
  let bool b = B b
  let dynamic j = D j
  let list xs = L xs

  let magic (type a) (x : a t) =
    match x with
    | S s -> D (`String s)
    | I s -> D (`Int s)
    | B s -> D (`Bool s)
    | D s -> D s
    | C s -> C s
    | L s -> D (`List (List.map s ~f:yojson_of_t))

  let computed type_ id prop =
    C (Printf.sprintf "${%s.%s.%s}" type_ id prop)

  let yojson_of_t _ t = yojson_of_t t
end

type 'a prop = 'a Prop.t

let yojson_of_prop = Prop.yojson_of_t
