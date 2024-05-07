(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecr_repositories

val aws_ecr_repositories : unit -> aws_ecr_repositories
val yojson_of_aws_ecr_repositories : aws_ecr_repositories -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  names : string list prop;
}

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
