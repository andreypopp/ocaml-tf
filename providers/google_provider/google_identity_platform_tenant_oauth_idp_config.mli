(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_tenant_oauth_idp_config__timeouts
type google_identity_platform_tenant_oauth_idp_config

val google_identity_platform_tenant_oauth_idp_config :
  ?client_secret:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:
    google_identity_platform_tenant_oauth_idp_config__timeouts ->
  client_id:string prop ->
  display_name:string prop ->
  issuer:string prop ->
  name:string prop ->
  tenant:string prop ->
  string ->
  unit
