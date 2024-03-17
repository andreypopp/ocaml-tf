(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_amplify_branch

val aws_amplify_branch :
  ?backend_environment_arn:string prop ->
  ?basic_auth_credentials:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_auto_build:bool prop ->
  ?enable_basic_auth:bool prop ->
  ?enable_notification:bool prop ->
  ?enable_performance_mode:bool prop ->
  ?enable_pull_request_preview:bool prop ->
  ?environment_variables:(string * string prop) list ->
  ?framework:string prop ->
  ?id:string prop ->
  ?pull_request_environment_name:string prop ->
  ?stage:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?ttl:string prop ->
  app_id:string prop ->
  branch_name:string prop ->
  string ->
  unit
