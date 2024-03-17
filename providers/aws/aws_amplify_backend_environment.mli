(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_amplify_backend_environment

type t = private {
  app_id : string prop;
  arn : string prop;
  deployment_artifacts : string prop;
  environment_name : string prop;
  id : string prop;
  stack_name : string prop;
}

val aws_amplify_backend_environment :
  ?deployment_artifacts:string prop ->
  ?id:string prop ->
  ?stack_name:string prop ->
  app_id:string prop ->
  environment_name:string prop ->
  string ->
  t
