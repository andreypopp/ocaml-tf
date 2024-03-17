(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_route__request_parameter
type aws_apigatewayv2_route

val aws_apigatewayv2_route :
  ?api_key_required:bool ->
  ?authorization_scopes:string list ->
  ?authorization_type:string ->
  ?authorizer_id:string ->
  ?model_selection_expression:string ->
  ?operation_name:string ->
  ?request_models:(string * string) list ->
  ?route_response_selection_expression:string ->
  ?target:string ->
  api_id:string ->
  route_key:string ->
  request_parameter:aws_apigatewayv2_route__request_parameter list ->
  string ->
  unit
