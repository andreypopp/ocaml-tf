(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_integration_response

type t = private {
  api_id : string prop;
  content_handling_strategy : string prop;
  id : string prop;
  integration_id : string prop;
  integration_response_key : string prop;
  response_templates : (string * string) list prop;
  template_selection_expression : string prop;
}

val aws_apigatewayv2_integration_response :
  ?content_handling_strategy:string prop ->
  ?id:string prop ->
  ?response_templates:(string * string prop) list ->
  ?template_selection_expression:string prop ->
  api_id:string prop ->
  integration_id:string prop ->
  integration_response_key:string prop ->
  string ->
  t
