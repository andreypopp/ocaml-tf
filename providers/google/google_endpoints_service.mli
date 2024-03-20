(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type apis__methods = {
  name : string prop;  (** name *)
  request_type : string prop;  (** request_type *)
  response_type : string prop;  (** response_type *)
  syntax : string prop;  (** syntax *)
}

[@@@deriving.end]

type apis = {
  methods : apis__methods list;  (** methods *)
  name : string prop;  (** name *)
  syntax : string prop;  (** syntax *)
  version : string prop;  (** version *)
}

[@@@deriving.end]

type endpoints = {
  address : string prop;  (** address *)
  name : string prop;  (** name *)
}

[@@@deriving.end]

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_endpoints_service

val google_endpoints_service :
  ?grpc_config:string prop ->
  ?id:string prop ->
  ?openapi_config:string prop ->
  ?project:string prop ->
  ?protoc_output_base64:string prop ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  unit ->
  google_endpoints_service

val yojson_of_google_endpoints_service :
  google_endpoints_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  apis : apis list prop;
  config_id : string prop;
  dns_address : string prop;
  endpoints : endpoints list prop;
  grpc_config : string prop;
  id : string prop;
  openapi_config : string prop;
  project : string prop;
  protoc_output_base64 : string prop;
  service_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?grpc_config:string prop ->
  ?id:string prop ->
  ?openapi_config:string prop ->
  ?project:string prop ->
  ?protoc_output_base64:string prop ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  string ->
  t

val make :
  ?grpc_config:string prop ->
  ?id:string prop ->
  ?openapi_config:string prop ->
  ?project:string prop ->
  ?protoc_output_base64:string prop ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  string ->
  t Tf_core.resource
