(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_method

val aws_api_gateway_method :
  ?api_key_required:bool prop ->
  ?authorization_scopes:string prop list ->
  ?authorizer_id:string prop ->
  ?id:string prop ->
  ?operation_name:string prop ->
  ?request_models:string prop Tf_core.assoc ->
  ?request_parameters:bool prop Tf_core.assoc ->
  ?request_validator_id:string prop ->
  authorization:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_method

val yojson_of_aws_api_gateway_method : aws_api_gateway_method -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_key_required : bool prop;
  authorization : string prop;
  authorization_scopes : string list prop;
  authorizer_id : string prop;
  http_method : string prop;
  id : string prop;
  operation_name : string prop;
  request_models : string Tf_core.assoc prop;
  request_parameters : bool Tf_core.assoc prop;
  request_validator_id : string prop;
  resource_id : string prop;
  rest_api_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_key_required:bool prop ->
  ?authorization_scopes:string prop list ->
  ?authorizer_id:string prop ->
  ?id:string prop ->
  ?operation_name:string prop ->
  ?request_models:string prop Tf_core.assoc ->
  ?request_parameters:bool prop Tf_core.assoc ->
  ?request_validator_id:string prop ->
  authorization:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  string ->
  t

val make :
  ?api_key_required:bool prop ->
  ?authorization_scopes:string prop list ->
  ?authorizer_id:string prop ->
  ?id:string prop ->
  ?operation_name:string prop ->
  ?request_models:string prop Tf_core.assoc ->
  ?request_parameters:bool prop Tf_core.assoc ->
  ?request_validator_id:string prop ->
  authorization:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  string ->
  t Tf_core.resource
