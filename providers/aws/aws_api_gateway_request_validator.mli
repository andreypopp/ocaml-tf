(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_request_validator

val aws_api_gateway_request_validator :
  ?id:string prop ->
  ?validate_request_body:bool prop ->
  ?validate_request_parameters:bool prop ->
  name:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_request_validator

val yojson_of_aws_api_gateway_request_validator :
  aws_api_gateway_request_validator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  rest_api_id : string prop;
  validate_request_body : bool prop;
  validate_request_parameters : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?validate_request_body:bool prop ->
  ?validate_request_parameters:bool prop ->
  name:string prop ->
  rest_api_id:string prop ->
  string ->
  t
