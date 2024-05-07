(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssoadmin_instances

val aws_ssoadmin_instances :
  ?id:string prop -> unit -> aws_ssoadmin_instances

val yojson_of_aws_ssoadmin_instances : aws_ssoadmin_instances -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  identity_store_ids : string list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
