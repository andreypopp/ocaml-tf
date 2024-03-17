(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_endpoints_service__timeouts

type google_endpoints_service__apis__methods = {
  name : string prop;  (** name *)
  request_type : string prop;  (** request_type *)
  response_type : string prop;  (** response_type *)
  syntax : string prop;  (** syntax *)
}

type google_endpoints_service__apis = {
  methods : google_endpoints_service__apis__methods list;
      (** methods *)
  name : string prop;  (** name *)
  syntax : string prop;  (** syntax *)
  version : string prop;  (** version *)
}

type google_endpoints_service__endpoints = {
  address : string prop;  (** address *)
  name : string prop;  (** name *)
}

type google_endpoints_service

val google_endpoints_service :
  ?grpc_config:string prop ->
  ?id:string prop ->
  ?openapi_config:string prop ->
  ?project:string prop ->
  ?protoc_output_base64:string prop ->
  ?timeouts:google_endpoints_service__timeouts ->
  service_name:string prop ->
  string ->
  unit
