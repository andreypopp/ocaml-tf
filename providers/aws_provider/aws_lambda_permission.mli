(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_permission

val aws_lambda_permission :
  ?event_source_token:string ->
  ?function_url_auth_type:string ->
  ?principal_org_id:string ->
  ?qualifier:string ->
  ?source_account:string ->
  ?source_arn:string ->
  action:string ->
  function_name:string ->
  principal:string ->
  string ->
  unit
