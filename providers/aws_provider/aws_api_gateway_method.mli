(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_method

type t = private {
  api_key_required : bool prop;
  authorization : string prop;
  authorization_scopes : string list prop;
  authorizer_id : string prop;
  http_method : string prop;
  id : string prop;
  operation_name : string prop;
  request_models : (string * string) list prop;
  request_parameters : (string * bool) list prop;
  request_validator_id : string prop;
  resource_id : string prop;
  rest_api_id : string prop;
}

val aws_api_gateway_method :
  ?api_key_required:bool prop ->
  ?authorization_scopes:string prop list ->
  ?authorizer_id:string prop ->
  ?id:string prop ->
  ?operation_name:string prop ->
  ?request_models:(string * string prop) list ->
  ?request_parameters:(string * bool prop) list ->
  ?request_validator_id:string prop ->
  authorization:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  string ->
  t
