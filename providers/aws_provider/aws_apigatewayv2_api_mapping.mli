(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_api_mapping

type t = private {
  api_id : string prop;
  api_mapping_key : string prop;
  domain_name : string prop;
  id : string prop;
  stage : string prop;
}

val aws_apigatewayv2_api_mapping :
  ?api_mapping_key:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  stage:string prop ->
  string ->
  t
