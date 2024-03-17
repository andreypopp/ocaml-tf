(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_layer_version_permission

type t = private {
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
  t
