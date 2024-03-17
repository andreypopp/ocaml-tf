type json = Yojson.Safe.t

module Make_collection () = struct
  type t = (string * (string * json) list) list ref

  let t : t = ref []

  let add ~type_ ~id resource =
    t :=
      List.Assoc.update ~eq:String.equal type_ !t ~f:(function
        | None -> Some [ id, resource ]
        | Some xs -> Some ((id, resource) :: xs))

  let yojson_of_t t : json =
    `Assoc
      (List.map t ~f:(fun (resource_type, resources) ->
           resource_type, `Assoc resources))
end

module Resource = Make_collection ()
module Data = Make_collection ()

module Prop = struct
  type 'a t =
    | S : string -> string t
    | I : int -> int t
    | B : bool -> bool t
    | C : string -> _ t  (** computed *)

  let yojson_of_t (type a) _ (p : a t) : json =
    match p with
    | S s -> `String s
    | I i -> `Int i
    | B b -> `Bool b
    | C c -> `String c

  let resource_id t n = S (Printf.sprintf "%s.%s" t n)
  let string s = S s
  let number i = I i
  let bool b = B b

  let computed type_ id prop =
    C (Printf.sprintf "${%s.%s.%s}" type_ id prop)
end

type 'a prop = 'a Prop.t

let yojson_of_prop = Prop.yojson_of_t
