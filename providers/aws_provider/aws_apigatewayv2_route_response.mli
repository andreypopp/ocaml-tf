(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_route_response

val aws_apigatewayv2_route_response :
  ?id:string prop ->
  ?model_selection_expression:string prop ->
  ?response_models:(string * string prop) list ->
  api_id:string prop ->
  route_id:string prop ->
  route_response_key:string prop ->
  string ->
  unit
