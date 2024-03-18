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
    type 'a t
    (** terraform value which might or might not be computed but can be
        referenced by other resources *)

    val string : string -> string t
    val number : int -> int t
    val bool : bool -> bool t
    val dynamic : json -> json t
    val list : 'a t list -> 'a list t

    val computed : string -> string -> string -> 'a t
    (** for use by generated code only *)

    val magic : 'a t -> 'b t
    (** an escape hatch, as terraform doesn't model its types properly *)

    val yojson_of_t : 'b -> 'a t -> json
  end

  type 'a prop = 'a Prop.t

  val yojson_of_prop : 'b -> 'a prop -> json
end
