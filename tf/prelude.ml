type json = Yojson.Safe.t

let yojson_of_json json = json

module type COLLECTION = sig
  type t

  val add : type_:string -> id:string -> json -> unit
  val yojson_of : unit -> json
end

module Make_collection () : COLLECTION = struct
  type t = (string * (string * json) list) list ref

  let t : t = ref []

  let add ~type_ ~id resource =
    t :=
      List.Assoc.update ~eq:String.equal type_ !t ~f:(function
        | None -> Some [ id, resource ]
        | Some xs -> Some ((id, resource) :: xs))

  let yojson_of () : json =
    `Assoc
      (List.map !t ~f:(fun (resource_type, resources) ->
           resource_type, `Assoc resources))
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
