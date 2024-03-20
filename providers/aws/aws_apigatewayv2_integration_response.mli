(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_integration_response

val aws_apigatewayv2_integration_response :
  ?content_handling_strategy:string prop ->
  ?id:string prop ->
  ?response_templates:(string * string prop) list ->
  ?template_selection_expression:string prop ->
  api_id:string prop ->
  integration_id:string prop ->
  integration_response_key:string prop ->
  unit ->
  aws_apigatewayv2_integration_response

val yojson_of_aws_apigatewayv2_integration_response :
  aws_apigatewayv2_integration_response -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  content_handling_strategy : string prop;
  id : string prop;
  integration_id : string prop;
  integration_response_key : string prop;
  response_templates : (string * string) list prop;
  template_selection_expression : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_handling_strategy:string prop ->
  ?id:string prop ->
  ?response_templates:(string * string prop) list ->
  ?template_selection_expression:string prop ->
  api_id:string prop ->
  integration_id:string prop ->
  integration_response_key:string prop ->
  string ->
  t

val make :
  ?content_handling_strategy:string prop ->
  ?id:string prop ->
  ?response_templates:(string * string prop) list ->
  ?template_selection_expression:string prop ->
  api_id:string prop ->
  integration_id:string prop ->
  integration_response_key:string prop ->
  string ->
  t Tf_core.resource
