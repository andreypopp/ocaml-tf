(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_endpoints_service__timeouts

type google_endpoints_service__apis__methods = {
  name : string;  (** name *)
  request_type : string;  (** request_type *)
  response_type : string;  (** response_type *)
  syntax : string;  (** syntax *)
}

type google_endpoints_service__apis = {
  methods : google_endpoints_service__apis__methods list;
      (** methods *)
  name : string;  (** name *)
  syntax : string;  (** syntax *)
  version : string;  (** version *)
}

type google_endpoints_service__endpoints = {
  address : string;  (** address *)
  name : string;  (** name *)
}

type google_endpoints_service

val google_endpoints_service :
  ?grpc_config:string ->
  ?id:string ->
  ?openapi_config:string ->
  ?project:string ->
  ?protoc_output_base64:string ->
  ?timeouts:google_endpoints_service__timeouts ->
  service_name:string ->
  string ->
  unit
