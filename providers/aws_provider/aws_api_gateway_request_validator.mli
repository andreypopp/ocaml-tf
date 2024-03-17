(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_request_validator

val aws_api_gateway_request_validator :
  ?id:string prop ->
  ?validate_request_body:bool prop ->
  ?validate_request_parameters:bool prop ->
  name:string prop ->
  rest_api_id:string prop ->
  string ->
  unit
