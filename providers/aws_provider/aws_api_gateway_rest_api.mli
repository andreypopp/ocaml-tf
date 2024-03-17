(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_rest_api__endpoint_configuration
type aws_api_gateway_rest_api

val aws_api_gateway_rest_api :
  ?body:string ->
  ?fail_on_warnings:bool ->
  ?parameters:(string * string) list ->
  ?put_rest_api_mode:string ->
  ?tags:(string * string) list ->
  name:string ->
  endpoint_configuration:
    aws_api_gateway_rest_api__endpoint_configuration list ->
  string ->
  unit
