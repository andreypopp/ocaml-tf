(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type response_parameters

val response_parameters :
  mappings:string prop Tf_core.assoc ->
  status_code:string prop ->
  unit ->
  response_parameters

type tls_config

val tls_config :
  ?server_name_to_verify:string prop -> unit -> tls_config

type aws_apigatewayv2_integration

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
  ?request_parameters:string prop Tf_core.assoc ->
  ?request_templates:string prop Tf_core.assoc ->
  ?template_selection_expression:string prop ->
  ?timeout_milliseconds:float prop ->
  ?tls_config:tls_config list ->
  api_id:string prop ->
  integration_type:string prop ->
  response_parameters:response_parameters list ->
  unit ->
  aws_apigatewayv2_integration

val yojson_of_aws_apigatewayv2_integration :
  aws_apigatewayv2_integration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  request_parameters : string Tf_core.assoc prop;
  request_templates : string Tf_core.assoc prop;
  template_selection_expression : string prop;
  timeout_milliseconds : float prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?request_parameters:string prop Tf_core.assoc ->
  ?request_templates:string prop Tf_core.assoc ->
  ?template_selection_expression:string prop ->
  ?timeout_milliseconds:float prop ->
  ?tls_config:tls_config list ->
  api_id:string prop ->
  integration_type:string prop ->
  response_parameters:response_parameters list ->
  string ->
  t

val make :
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
  ?request_parameters:string prop Tf_core.assoc ->
  ?request_templates:string prop Tf_core.assoc ->
  ?template_selection_expression:string prop ->
  ?timeout_milliseconds:float prop ->
  ?tls_config:tls_config list ->
  api_id:string prop ->
  integration_type:string prop ->
  response_parameters:response_parameters list ->
  string ->
  t Tf_core.resource
