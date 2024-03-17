(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_route_response

val aws_apigatewayv2_route_response :
  ?model_selection_expression:string ->
  ?response_models:(string * string) list ->
  api_id:string ->
  route_id:string ->
  route_response_key:string ->
  string ->
  unit
