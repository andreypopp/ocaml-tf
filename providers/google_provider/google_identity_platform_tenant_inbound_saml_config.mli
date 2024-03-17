(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_tenant_inbound_saml_config__idp_config__idp_certificates

type google_identity_platform_tenant_inbound_saml_config__idp_config

type google_identity_platform_tenant_inbound_saml_config__sp_config__sp_certificates = {
  x509_certificate : string;  (** x509_certificate *)
}
[@@deriving yojson_of]

type google_identity_platform_tenant_inbound_saml_config__sp_config
type google_identity_platform_tenant_inbound_saml_config__timeouts
type google_identity_platform_tenant_inbound_saml_config

val google_identity_platform_tenant_inbound_saml_config :
  ?enabled:bool ->
  ?timeouts:
    google_identity_platform_tenant_inbound_saml_config__timeouts ->
  display_name:string ->
  name:string ->
  tenant:string ->
  idp_config:
    google_identity_platform_tenant_inbound_saml_config__idp_config
    list ->
  sp_config:
    google_identity_platform_tenant_inbound_saml_config__sp_config
    list ->
  string ->
  unit
