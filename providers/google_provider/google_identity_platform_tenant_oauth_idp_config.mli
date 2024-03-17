(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_tenant_oauth_idp_config__timeouts
type google_identity_platform_tenant_oauth_idp_config

val google_identity_platform_tenant_oauth_idp_config :
  ?client_secret:string ->
  ?enabled:bool ->
  ?timeouts:
    google_identity_platform_tenant_oauth_idp_config__timeouts ->
  client_id:string ->
  display_name:string ->
  issuer:string ->
  name:string ->
  tenant:string ->
  string ->
  unit
