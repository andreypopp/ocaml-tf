type json = Yojson.Safe.t

let yojson_of_json json = json

type provider = { id : string; json : json }

type 'attrs resource = {
  type_ : string;
  id : string;
  json : json;
  attrs : 'attrs;
}

type tf_module = ..
type tf_module += Tf_default

module type COLLECTION1 = sig
  type t

  val add : ?tf_module:tf_module -> id:string -> json -> unit
  val yojson_of : ?tf_module:tf_module -> unit -> json
end

module type COLLECTION2 = sig
  type t

  val add :
    ?tf_module:tf_module -> type_:string -> id:string -> json -> unit

  val yojson_of : ?tf_module:tf_module -> unit -> json
end

let sort_assoc s = Seq.sort ~cmp:(Ord.map fst String.compare) s

module Make_collection1 (S : sig
  val name : string
end) : COLLECTION1 = struct
  module Key = struct
    type t = tf_module * string

    let hash = Hash.pair Hash.poly Hash.string
    let equal = Equal.pair Equal.poly Equal.string
  end

  module T = Hashtbl.Make (Key)

  type t = json T.t

  let t : t = T.create 100

  let add ?(tf_module = Tf_default) ~id resource =
    let key = tf_module, id in
    match T.find_opt t key with
    | None -> T.replace t key resource
    | Some _ ->
        failwith (Printf.sprintf "duplicate %s: %s" S.name id)

  let yojson_of ?tf_module () : json =
    `Assoc
      (T.to_seq t
      |> Seq.filter_map (fun ((m, id), resource) ->
             match tf_module with
             | Some m' when Equal.poly m m' -> Some (id, resource)
             | None -> Some (id, resource)
             | Some _ -> None)
      |> sort_assoc
      |> Seq.to_list)
end

module Make_collection2 (S : sig
  val name : string
end) : COLLECTION2 = struct
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
    | Some _ ->
        failwith
          (Printf.sprintf "duplicate %s: %s.%s" S.name type_ id)

  let yojson_of ?tf_module () : json =
    `Assoc
      (T.to_seq t
      |> Seq.filter_map (fun ((m, t, id), resource) ->
             match tf_module with
             | Some m' when Equal.poly m m' ->
                 Some (t, (id, resource))
             | None -> Some (t, (id, resource))
             | Some _ -> None)
      |> Seq.sort ~cmp:(Ord.map fst String.compare)
      |> Seq.group (Equal.map ~f:fst String.equal)
      |> Seq.map (fun resources ->
             let ts, resources = Seq.split resources in
             let t = Seq.head_exn ts in
             t, `Assoc (resources |> sort_assoc |> Seq.to_list))
      |> sort_assoc
      |> Seq.to_list)
end

module Variable = Make_collection1 (struct
  let name = "variable"
end)

module Required_providers = Make_collection1 (struct
  let name = "required_providers"
end)

module Provider = Make_collection1 (struct
  let name = "provider"
end)

module Resource = Make_collection2 (struct
  let name = "resource"
end)

module Data = Make_collection2 (struct
  let name = "data source"
end)

module Output = Make_collection1 (struct
  let name = "output"
end)

module Var = struct
  type _ type_ =
    | String : string type_
    | Int : int type_
    | Float : float type_
    | Bool : bool type_

  let yojson_of_type_ : type a. a type_ -> json = function
    | String -> `String "string"
    | Int -> `String "number"
    | Float -> `String "number"
    | Bool -> `String "bool"

  type 'a t = {
    type_ : 'a type_;
    id : string;
    description : string option;
    default : json option;
  }

  type anyvar = Anyvar : _ t -> anyvar

  let all : anyvar list ref = ref []
  let registered () = !all

  let yojson_of_t ({ id = _; type_; description; default } : _ t) =
    `Assoc
      (List.filter_map
         ~f:(fun (k, v) -> Option.map (fun v -> k, v) v)
         [
           "type", Some (yojson_of_type_ type_);
           "description", Option.map yojson_of_string description;
           "default", default;
         ])
end

module Prop = struct
  type 'a t =
    | S : string -> string t
    | I : int -> float t
    | F : float -> float t
    | B : bool -> bool t
    | D : json -> _ t
    | L : 'a t list -> 'a list t
    | C : string -> _ t  (** computed *)

  let rec yojson_of_t : type a. a t -> json =
   fun p ->
    match p with
    | S s -> `String s
    | I i -> `Int i
    | F i -> `Float i
    | B b -> `Bool b
    | D j -> j
    | C c -> `String c
    | L c -> `List (List.map c ~f:yojson_of_t)

  let string s = S s
  let int i = I i
  let float i = F i
  let bool b = B b
  let dynamic j = D j
  let list xs = L xs
  let string_opt = Option.map string
  let int_opt = Option.map int
  let float_opt = Option.map float
  let bool_opt = Option.map bool

  let var' yojson_of_default type_ ?default ?description id =
    let default = Option.map yojson_of_default default in
    let v = { Var.type_; id; description; default } in
    Var.all := Var.Anyvar v :: !Var.all;
    Variable.add ~id (Var.yojson_of_t v);
    D (`String (Printf.sprintf "${var.%s}" id))

  let string_var = var' yojson_of_string String
  let int_var = var' yojson_of_int Int
  let float_var = var' yojson_of_float Float
  let bool_var = var' yojson_of_bool Bool

  let magic (type a) (x : a t) =
    match x with
    | S s -> D (`String s)
    | I s -> D (`Int s)
    | F s -> D (`Float s)
    | B s -> D (`Bool s)
    | D s -> D s
    | C s -> C s
    | L s -> D (`List (List.map s ~f:yojson_of_t))

  let computed type_ id prop =
    C (Printf.sprintf "${%s.%s.%s}" type_ id prop)

  let register_output id prop =
    Output.add ~id (`Assoc [ "value", yojson_of_t prop ])

  let yojson_of_t _ t = yojson_of_t t

  let rec to_hcl : type a. a t -> string = function
    | S s -> s
    | I i -> string_of_int i
    | F f -> string_of_float f
    | B b -> string_of_bool b
    | D json -> json_to_hcl json
    | L xs ->
        Printf.sprintf "[%s]"
          (String.concat ~sep:", " (List.map xs ~f:to_hcl))
    | C c -> c

  and json_to_hcl : json -> string = function
    | `String s -> s
    | `Int i -> string_of_int i
    | `Intlit i -> i
    | `Null -> "null"
    | `Assoc kvs ->
        Printf.sprintf "{%s}"
          (String.concat ~sep:", "
             (List.map kvs ~f:(fun (k, v) ->
                  Printf.sprintf "%s = %s" k (json_to_hcl v))))
    | `Float f -> string_of_float f
    | `Bool b -> string_of_bool b
    | `Tuple xs | `List xs ->
        Printf.sprintf "[%s]"
          (String.concat ~sep:", " (List.map xs ~f:string_of_yojson))
    | `Variant _ -> failwith "didn't expect `Variant"
end

type 'a prop = 'a Prop.t

let yojson_of_prop = Prop.yojson_of_t

let gen_tf_json () =
  let add_if_not_empty name json assoc =
    match json with
    | `Assoc [] -> assoc
    | `Assoc _ as json -> (name, json) :: assoc
    | _ -> assert false
  in
  let assoc =
    []
    |> add_if_not_empty "data" (Data.yojson_of ())
    |> add_if_not_empty "resource" (Resource.yojson_of ())
    |> add_if_not_empty "provider" (Provider.yojson_of ())
    |> add_if_not_empty "variable" (Variable.yojson_of ())
    |> add_if_not_empty "output" (Output.yojson_of ())
  in
  `Assoc
    (( "terraform",
       `Assoc
         [ "required_providers", Required_providers.yojson_of () ] )
    :: assoc)
