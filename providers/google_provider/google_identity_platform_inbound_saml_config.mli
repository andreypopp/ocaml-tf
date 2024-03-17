(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_inbound_saml_config__idp_config__idp_certificates

type google_identity_platform_inbound_saml_config__idp_config

type google_identity_platform_inbound_saml_config__sp_config__sp_certificates = {
  x509_certificate : string prop;  (** x509_certificate *)
}

type google_identity_platform_inbound_saml_config__sp_config
type google_identity_platform_inbound_saml_config__timeouts
type google_identity_platform_inbound_saml_config

val google_identity_platform_inbound_saml_config :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_identity_platform_inbound_saml_config__timeouts ->
  display_name:string prop ->
  name:string prop ->
  idp_config:
    google_identity_platform_inbound_saml_config__idp_config list ->
  sp_config:
    google_identity_platform_inbound_saml_config__sp_config list ->
  string ->
  unit
