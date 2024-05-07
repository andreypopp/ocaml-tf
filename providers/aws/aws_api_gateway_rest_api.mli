(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint_configuration

val endpoint_configuration :
  ?vpc_endpoint_ids:string prop list ->
  types:string prop list ->
  unit ->
  endpoint_configuration

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
  ?endpoint_configuration:endpoint_configuration list ->
  name:string prop ->
  unit ->
  aws_api_gateway_rest_api

val yojson_of_aws_api_gateway_rest_api :
  aws_api_gateway_rest_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_key_source : string prop;
  arn : string prop;
  binary_media_types : string list prop;
  body : string prop;
  created_date : string prop;
  description : string prop;
  disable_execute_api_endpoint : bool prop;
  execution_arn : string prop;
  fail_on_warnings : bool prop;
  id : string prop;
  minimum_compression_size : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  policy : string prop;
  put_rest_api_mode : string prop;
  root_resource_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?endpoint_configuration:endpoint_configuration list ->
  name:string prop ->
  string ->
  t

val make :
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
  ?endpoint_configuration:endpoint_configuration list ->
  name:string prop ->
  string ->
  t Tf_core.resource
