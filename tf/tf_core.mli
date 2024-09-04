type tf_module = ..
type tf_module += Tf_default

type json = Yojson.Safe.t
(** json type used *)

val yojson_of_json : json -> json

type 'a assoc = (string * 'a) list
(** used for maps *)

val yojson_of_assoc : ('a -> json) -> 'a assoc -> json

type provider = { id : string; json : json }

type 'attrs resource = {
  type_ : string;
  id : string;
  json : json;
  attrs : 'attrs;
}

val gen_tf_json : unit -> json
(** generate final .tf.json module *)

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

module Required_providers : COLLECTION1
module Provider : COLLECTION1
module Variable : COLLECTION1
module Resource : COLLECTION2
module Data : COLLECTION2
module Output : COLLECTION1

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

  val string_var :
    ?default:string -> ?description:string -> string -> string t

  val int_var :
    ?default:int -> ?description:string -> string -> float t

  val float_var :
    ?default:float -> ?description:string -> string -> float t

  val bool_var :
    ?default:bool -> ?description:string -> string -> bool t

  val dynamic : json -> json t
  val list : 'a t list -> 'a list t

  val computed : string -> string -> string -> 'a t
  (** for use by generated code only *)

  val magic : 'a t -> 'b t
  (** an escape hatch, as terraform doesn't model its types properly *)

  val register_output : string -> 'a t -> unit
  (** register prop as output

      Later can be used for .ml code generation (see tf_run's gen-output-ml
      command) to bring tf output values into OCaml.
    *)

  val yojson_of_t : 'b -> 'a t -> json

  val to_hcl : _ t -> string
  (** produce HCL representation of the prop *)
end

module Var : sig
  type _ type_ =
    | String : string type_
    | Int : int type_
    | Float : float type_
    | Bool : bool type_

  type 'a t = {
    type_ : 'a type_;
    id : string;
    description : string option;
    default : json option;
  }

  type anyvar = Anyvar : _ t -> anyvar

  val registered : unit -> anyvar list
end

type 'a prop = 'a Prop.t

val yojson_of_prop : 'b -> 'a prop -> json
