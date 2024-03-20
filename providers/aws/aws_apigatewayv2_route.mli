(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type request_parameter

val request_parameter :
  request_parameter_key:string prop ->
  required:bool prop ->
  unit ->
  request_parameter

type aws_apigatewayv2_route

val aws_apigatewayv2_route :
  ?api_key_required:bool prop ->
  ?authorization_scopes:string prop list ->
  ?authorization_type:string prop ->
  ?authorizer_id:string prop ->
  ?id:string prop ->
  ?model_selection_expression:string prop ->
  ?operation_name:string prop ->
  ?request_models:(string * string prop) list ->
  ?route_response_selection_expression:string prop ->
  ?target:string prop ->
  api_id:string prop ->
  route_key:string prop ->
  request_parameter:request_parameter list ->
  unit ->
  aws_apigatewayv2_route

val yojson_of_aws_apigatewayv2_route : aws_apigatewayv2_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  api_key_required : bool prop;
  authorization_scopes : string list prop;
  authorization_type : string prop;
  authorizer_id : string prop;
  id : string prop;
  model_selection_expression : string prop;
  operation_name : string prop;
  request_models : (string * string) list prop;
  route_key : string prop;
  route_response_selection_expression : string prop;
  target : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_key_required:bool prop ->
  ?authorization_scopes:string prop list ->
  ?authorization_type:string prop ->
  ?authorizer_id:string prop ->
  ?id:string prop ->
  ?model_selection_expression:string prop ->
  ?operation_name:string prop ->
  ?request_models:(string * string prop) list ->
  ?route_response_selection_expression:string prop ->
  ?target:string prop ->
  api_id:string prop ->
  route_key:string prop ->
  request_parameter:request_parameter list ->
  string ->
  t

val make :
  ?api_key_required:bool prop ->
  ?authorization_scopes:string prop list ->
  ?authorization_type:string prop ->
  ?authorizer_id:string prop ->
  ?id:string prop ->
  ?model_selection_expression:string prop ->
  ?operation_name:string prop ->
  ?request_models:(string * string prop) list ->
  ?route_response_selection_expression:string prop ->
  ?target:string prop ->
  api_id:string prop ->
  route_key:string prop ->
  request_parameter:request_parameter list ->
  string ->
  t Tf_core.resource
