(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_identity_platform_tenant_default_supported_idp_config

val google_identity_platform_tenant_default_supported_idp_config :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  client_secret:string prop ->
  idp_id:string prop ->
  tenant:string prop ->
  unit ->
  google_identity_platform_tenant_default_supported_idp_config

val yojson_of_google_identity_platform_tenant_default_supported_idp_config :
  google_identity_platform_tenant_default_supported_idp_config ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop;
  id : string prop;
  idp_id : string prop;
  name : string prop;
  project : string prop;
  tenant : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  client_secret:string prop ->
  idp_id:string prop ->
  tenant:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  client_id:string prop ->
  client_secret:string prop ->
  idp_id:string prop ->
  tenant:string prop ->
  string ->
  t Tf_core.resource
