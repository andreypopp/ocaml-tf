(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_route_response

val aws_apigatewayv2_route_response :
  ?id:string prop ->
  ?model_selection_expression:string prop ->
  ?response_models:string prop Tf_core.assoc ->
  api_id:string prop ->
  route_id:string prop ->
  route_response_key:string prop ->
  unit ->
  aws_apigatewayv2_route_response

val yojson_of_aws_apigatewayv2_route_response :
  aws_apigatewayv2_route_response -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_id : string prop;
  id : string prop;
  model_selection_expression : string prop;
  response_models : string Tf_core.assoc prop;
  route_id : string prop;
  route_response_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?model_selection_expression:string prop ->
  ?response_models:string prop Tf_core.assoc ->
  api_id:string prop ->
  route_id:string prop ->
  route_response_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?model_selection_expression:string prop ->
  ?response_models:string prop Tf_core.assoc ->
  api_id:string prop ->
  route_id:string prop ->
  route_response_key:string prop ->
  string ->
  t Tf_core.resource
