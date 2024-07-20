(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type service_resolvers__server_certificates

val service_resolvers__server_certificates :
  ?subject_alternative_dns_names:string prop list ->
  raw_der:string prop ->
  unit ->
  service_resolvers__server_certificates

type service_resolvers

val service_resolvers :
  ?endpoint_filter:string prop ->
  hostname:string prop ->
  service_directory_service:string prop ->
  server_certificates:service_resolvers__server_certificates list ->
  unit ->
  service_resolvers

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_kms_ekm_connection

val google_kms_ekm_connection :
  ?crypto_space_path:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?key_management_mode:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  service_resolvers:service_resolvers list ->
  unit ->
  google_kms_ekm_connection

val yojson_of_google_kms_ekm_connection :
  google_kms_ekm_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  crypto_space_path : string prop;
  etag : string prop;
  id : string prop;
  key_management_mode : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?crypto_space_path:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?key_management_mode:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  service_resolvers:service_resolvers list ->
  string ->
  t

val make :
  ?crypto_space_path:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?key_management_mode:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  service_resolvers:service_resolvers list ->
  string ->
  t Tf_core.resource
