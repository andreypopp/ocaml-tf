(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_amplify_branch

val aws_amplify_branch :
  ?backend_environment_arn:string ->
  ?basic_auth_credentials:string ->
  ?description:string ->
  ?enable_auto_build:bool ->
  ?enable_basic_auth:bool ->
  ?enable_notification:bool ->
  ?enable_performance_mode:bool ->
  ?enable_pull_request_preview:bool ->
  ?environment_variables:(string * string) list ->
  ?framework:string ->
  ?pull_request_environment_name:string ->
  ?stage:string ->
  ?tags:(string * string) list ->
  ?ttl:string ->
  app_id:string ->
  branch_name:string ->
  string ->
  unit
