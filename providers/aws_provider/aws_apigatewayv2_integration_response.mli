(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_integration_response

val aws_apigatewayv2_integration_response :
  ?content_handling_strategy:string ->
  ?response_templates:(string * string) list ->
  ?template_selection_expression:string ->
  api_id:string ->
  integration_id:string ->
  integration_response_key:string ->
  string ->
  unit
