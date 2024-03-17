(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_rest_api__endpoint_configuration
type aws_api_gateway_rest_api

val aws_api_gateway_rest_api :
  ?api_key_source:string ->
  ?binary_media_types:string list ->
  ?body:string ->
  ?description:string ->
  ?disable_execute_api_endpoint:bool ->
  ?fail_on_warnings:bool ->
  ?id:string ->
  ?minimum_compression_size:string ->
  ?parameters:(string * string) list ->
  ?policy:string ->
  ?put_rest_api_mode:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  endpoint_configuration:
    aws_api_gateway_rest_api__endpoint_configuration list ->
  string ->
  unit
