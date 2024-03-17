(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_integration__response_parameters
type aws_apigatewayv2_integration__tls_config
type aws_apigatewayv2_integration

val aws_apigatewayv2_integration :
  ?connection_id:string ->
  ?connection_type:string ->
  ?content_handling_strategy:string ->
  ?credentials_arn:string ->
  ?description:string ->
  ?integration_method:string ->
  ?integration_subtype:string ->
  ?integration_uri:string ->
  ?passthrough_behavior:string ->
  ?payload_format_version:string ->
  ?request_parameters:(string * string) list ->
  ?request_templates:(string * string) list ->
  ?template_selection_expression:string ->
  api_id:string ->
  integration_type:string ->
  response_parameters:
    aws_apigatewayv2_integration__response_parameters list ->
  tls_config:aws_apigatewayv2_integration__tls_config list ->
  string ->
  unit
