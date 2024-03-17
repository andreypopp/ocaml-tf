(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_permission

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
  string ->
  t
