(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit
