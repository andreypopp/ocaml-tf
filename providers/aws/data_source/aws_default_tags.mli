(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_default_tags

val aws_default_tags : ?id:string prop -> unit -> aws_default_tags
val yojson_of_aws_default_tags : aws_default_tags -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  tags : (string * string) list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
