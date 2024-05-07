(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_inspector_rules_packages

val aws_inspector_rules_packages :
  ?id:string prop -> unit -> aws_inspector_rules_packages

val yojson_of_aws_inspector_rules_packages :
  aws_inspector_rules_packages -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
