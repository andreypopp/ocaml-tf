(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type idp_config__idp_certificates

val idp_config__idp_certificates :
  ?x509_certificate:string prop ->
  unit ->
  idp_config__idp_certificates

type idp_config

val idp_config :
  ?sign_request:bool prop ->
  idp_entity_id:string prop ->
  sso_url:string prop ->
  idp_certificates:idp_config__idp_certificates list ->
  unit ->
  idp_config

type sp_config__sp_certificates = {
  x509_certificate : string prop;  (** x509_certificate *)
}

type sp_config

val sp_config :
  ?callback_uri:string prop ->
  ?sp_entity_id:string prop ->
  unit ->
  sp_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_identity_platform_inbound_saml_config

val google_identity_platform_inbound_saml_config :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  name:string prop ->
  idp_config:idp_config list ->
  sp_config:sp_config list ->
  unit ->
  google_identity_platform_inbound_saml_config

val yojson_of_google_identity_platform_inbound_saml_config :
  google_identity_platform_inbound_saml_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  name:string prop ->
  idp_config:idp_config list ->
  sp_config:sp_config list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  name:string prop ->
  idp_config:idp_config list ->
  sp_config:sp_config list ->
  string ->
  t Tf_core.resource
