(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lambda_layer_version_permission

val aws_lambda_layer_version_permission :
  ?id:string prop ->
  ?organization_id:string prop ->
  ?skip_destroy:bool prop ->
  action:string prop ->
  layer_name:string prop ->
  principal:string prop ->
  statement_id:string prop ->
  version_number:float prop ->
  unit ->
  aws_lambda_layer_version_permission

val yojson_of_aws_lambda_layer_version_permission :
  aws_lambda_layer_version_permission -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  id : string prop;
  layer_name : string prop;
  organization_id : string prop;
  policy : string prop;
  principal : string prop;
  revision_id : string prop;
  skip_destroy : bool prop;
  statement_id : string prop;
  version_number : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?organization_id:string prop ->
  ?skip_destroy:bool prop ->
  action:string prop ->
  layer_name:string prop ->
  principal:string prop ->
  statement_id:string prop ->
  version_number:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?organization_id:string prop ->
  ?skip_destroy:bool prop ->
  action:string prop ->
  layer_name:string prop ->
  principal:string prop ->
  statement_id:string prop ->
  version_number:float prop ->
  string ->
  t Tf_core.resource
