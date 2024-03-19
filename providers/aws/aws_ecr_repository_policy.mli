(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ecr_repository_policy

val aws_ecr_repository_policy :
  ?id:string prop ->
  policy:string prop ->
  repository:string prop ->
  unit ->
  aws_ecr_repository_policy

val yojson_of_aws_ecr_repository_policy :
  aws_ecr_repository_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy:string prop ->
  repository:string prop ->
  string ->
  t
