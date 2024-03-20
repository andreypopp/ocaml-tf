(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lambda_permission

val aws_lambda_permission :
  ?event_source_token:string prop ->
  ?function_url_auth_type:string prop ->
  ?id:string prop ->
  ?principal_org_id:string prop ->
  ?qualifier:string prop ->
  ?source_account:string prop ->
  ?source_arn:string prop ->
  ?statement_id:string prop ->
  ?statement_id_prefix:string prop ->
  action:string prop ->
  function_name:string prop ->
  principal:string prop ->
  unit ->
  aws_lambda_permission

val yojson_of_aws_lambda_permission : aws_lambda_permission -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  event_source_token : string prop;
  function_name : string prop;
  function_url_auth_type : string prop;
  id : string prop;
  principal : string prop;
  principal_org_id : string prop;
  qualifier : string prop;
  source_account : string prop;
  source_arn : string prop;
  statement_id : string prop;
  statement_id_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?event_source_token:string prop ->
  ?function_url_auth_type:string prop ->
  ?id:string prop ->
  ?principal_org_id:string prop ->
  ?qualifier:string prop ->
  ?source_account:string prop ->
  ?source_arn:string prop ->
  ?statement_id:string prop ->
  ?statement_id_prefix:string prop ->
  action:string prop ->
  function_name:string prop ->
  principal:string prop ->
  string ->
  t

val make :
  ?event_source_token:string prop ->
  ?function_url_auth_type:string prop ->
  ?id:string prop ->
  ?principal_org_id:string prop ->
  ?qualifier:string prop ->
  ?source_account:string prop ->
  ?source_arn:string prop ->
  ?statement_id:string prop ->
  ?statement_id_prefix:string prop ->
  action:string prop ->
  function_name:string prop ->
  principal:string prop ->
  string ->
  t Tf_core.resource
