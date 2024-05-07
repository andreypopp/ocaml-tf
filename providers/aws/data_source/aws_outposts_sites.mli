(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_outposts_sites

val aws_outposts_sites :
  ?id:string prop -> unit -> aws_outposts_sites

val yojson_of_aws_outposts_sites : aws_outposts_sites -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ids : string list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
