(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_config__blocking_functions__forward_inbound_credentials

type google_identity_platform_config__blocking_functions__triggers
type google_identity_platform_config__blocking_functions
type google_identity_platform_config__client__permissions
type google_identity_platform_config__client

type google_identity_platform_config__mfa__provider_configs__totp_provider_config

type google_identity_platform_config__mfa__provider_configs
type google_identity_platform_config__mfa
type google_identity_platform_config__monitoring__request_logging
type google_identity_platform_config__monitoring
type google_identity_platform_config__multi_tenant
type google_identity_platform_config__quota__sign_up_quota_config
type google_identity_platform_config__quota
type google_identity_platform_config__sign_in__anonymous
type google_identity_platform_config__sign_in__email
type google_identity_platform_config__sign_in__phone_number

type google_identity_platform_config__sign_in__hash_config = {
  algorithm : string prop;  (** algorithm *)
  memory_cost : float prop;  (** memory_cost *)
  rounds : float prop;  (** rounds *)
  salt_separator : string prop;  (** salt_separator *)
  signer_key : string prop;  (** signer_key *)
}

type google_identity_platform_config__sign_in

type google_identity_platform_config__sms_region_config__allow_by_default

type google_identity_platform_config__sms_region_config__allowlist_only

type google_identity_platform_config__sms_region_config
type google_identity_platform_config__timeouts
type google_identity_platform_config

val google_identity_platform_config :
  ?authorized_domains:string prop list ->
  ?autodelete_anonymous_users:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_identity_platform_config__timeouts ->
  blocking_functions:
    google_identity_platform_config__blocking_functions list ->
  client:google_identity_platform_config__client list ->
  mfa:google_identity_platform_config__mfa list ->
  monitoring:google_identity_platform_config__monitoring list ->
  multi_tenant:google_identity_platform_config__multi_tenant list ->
  quota:google_identity_platform_config__quota list ->
  sign_in:google_identity_platform_config__sign_in list ->
  sms_region_config:
    google_identity_platform_config__sms_region_config list ->
  string ->
  unit
