(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_rest_api__endpoint_configuration
type aws_api_gateway_rest_api

val aws_api_gateway_rest_api :
  ?api_key_source:string prop ->
  ?binary_media_types:string prop list ->
  ?body:string prop ->
  ?description:string prop ->
  ?disable_execute_api_endpoint:bool prop ->
  ?fail_on_warnings:bool prop ->
  ?id:string prop ->
  ?minimum_compression_size:string prop ->
  ?parameters:(string * string prop) list ->
  ?policy:string prop ->
  ?put_rest_api_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  endpoint_configuration:
    aws_api_gateway_rest_api__endpoint_configuration list ->
  string ->
  unit
