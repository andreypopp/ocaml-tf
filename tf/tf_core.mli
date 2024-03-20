type json = Yojson.Safe.t
type tf_module = ..
type tf_module += Tf_default

val yojson_of_json : json -> json

type 'attrs resource = {
  type_ : string;
  id : string;
  json : json;
  attrs : 'attrs;
}

module type COLLECTION = sig
  type t

  val add :
    ?tf_module:tf_module -> type_:string -> id:string -> json -> unit

  val yojson_of : ?tf_module:tf_module -> unit -> json
end

module Resource : COLLECTION
module Data : COLLECTION

module Prop : sig
  type 'a t
  (** configuration value which might or might not be computed but can be
      referenced by other resources *)

  val string : string -> string t
  val int : int -> float t
  val float : float -> float t
  val bool : bool -> bool t
  val string_opt : string option -> string t option
  val int_opt : int option -> float t option
  val float_opt : float option -> float t option
  val bool_opt : bool option -> bool t option
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
