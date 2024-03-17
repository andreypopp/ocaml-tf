(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_integration__response_parameters
type aws_apigatewayv2_integration__tls_config
type aws_apigatewayv2_integration

type t = private {
  api_id : string prop;
  connection_id : string prop;
  connection_type : string prop;
  content_handling_strategy : string prop;
  credentials_arn : string prop;
  description : string prop;
  id : string prop;
  integration_method : string prop;
  integration_response_selection_expression : string prop;
  integration_subtype : string prop;
  integration_type : string prop;
  integration_uri : string prop;
  passthrough_behavior : string prop;
  payload_format_version : string prop;
  request_parameters : (string * string) list prop;
  request_templates : (string * string) list prop;
  template_selection_expression : string prop;
  timeout_milliseconds : float prop;
}

val aws_apigatewayv2_integration :
  ?connection_id:string prop ->
  ?connection_type:string prop ->
  ?content_handling_strategy:string prop ->
  ?credentials_arn:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_method:string prop ->
  ?integration_subtype:string prop ->
  ?integration_uri:string prop ->
  ?passthrough_behavior:string prop ->
  ?payload_format_version:string prop ->
  ?request_parameters:(string * string prop) list ->
  ?request_templates:(string * string prop) list ->
  ?template_selection_expression:string prop ->
  ?timeout_milliseconds:float prop ->
  api_id:string prop ->
  integration_type:string prop ->
  response_parameters:
    aws_apigatewayv2_integration__response_parameters list ->
  tls_config:aws_apigatewayv2_integration__tls_config list ->
  string ->
  t
