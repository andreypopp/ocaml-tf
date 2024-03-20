(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecr_lifecycle_policy

val aws_ecr_lifecycle_policy :
  ?id:string prop ->
  policy:string prop ->
  repository:string prop ->
  unit ->
  aws_ecr_lifecycle_policy

val yojson_of_aws_ecr_lifecycle_policy :
  aws_ecr_lifecycle_policy -> json

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

val make :
  ?id:string prop ->
  policy:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
