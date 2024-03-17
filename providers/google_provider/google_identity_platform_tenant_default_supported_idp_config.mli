(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_tenant_default_supported_idp_config__timeouts

type google_identity_platform_tenant_default_supported_idp_config

val google_identity_platform_tenant_default_supported_idp_config :
  ?enabled:bool ->
  ?id:string ->
  ?project:string ->
  ?timeouts:
    google_identity_platform_tenant_default_supported_idp_config__timeouts ->
  client_id:string ->
  client_secret:string ->
  idp_id:string ->
  tenant:string ->
  string ->
  unit
