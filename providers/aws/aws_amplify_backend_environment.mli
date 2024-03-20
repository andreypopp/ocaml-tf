(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_amplify_backend_environment

val aws_amplify_backend_environment :
  ?deployment_artifacts:string prop ->
  ?id:string prop ->
  ?stack_name:string prop ->
  app_id:string prop ->
  environment_name:string prop ->
  unit ->
  aws_amplify_backend_environment

val yojson_of_aws_amplify_backend_environment :
  aws_amplify_backend_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_id : string prop;
  arn : string prop;
  deployment_artifacts : string prop;
  environment_name : string prop;
  id : string prop;
  stack_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deployment_artifacts:string prop ->
  ?id:string prop ->
  ?stack_name:string prop ->
  app_id:string prop ->
  environment_name:string prop ->
  string ->
  t

val make :
  ?deployment_artifacts:string prop ->
  ?id:string prop ->
  ?stack_name:string prop ->
  app_id:string prop ->
  environment_name:string prop ->
  string ->
  t Tf_core.resource
