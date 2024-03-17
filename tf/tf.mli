module Run : sig
  val run : unit -> unit
end

module Prelude : sig
  type json = Yojson.Safe.t

  val yojson_of_json : json -> json

  module type COLLECTION = sig
    type t

    val add : type_:string -> id:string -> json -> unit
    val yojson_of : unit -> json
  end

  module Resource : COLLECTION
  module Data : COLLECTION

  module Prop : sig
    type 'a t =
      | S : string -> string t
      | I : int -> int t
      | B : bool -> bool t
      | D : json -> json t
      | C : string -> 'b t

    val yojson_of_t : 'b -> 'a t -> json
    val resource_id : string -> string -> string t
    val string : string -> string t
    val number : int -> int t
    val bool : bool -> bool t
    val dynamic : json -> json t
    val computed : string -> string -> string -> 'a t
  end

  type 'a prop = 'a Prop.t

  val yojson_of_prop : ('a -> json) -> 'a prop -> json
end
