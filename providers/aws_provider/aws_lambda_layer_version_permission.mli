(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_layer_version_permission

val aws_lambda_layer_version_permission :
  ?id:string ->
  ?organization_id:string ->
  ?skip_destroy:bool ->
  action:string ->
  layer_name:string ->
  principal:string ->
  statement_id:string ->
  version_number:float ->
  string ->
  unit
