(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type blocking_functions__forward_inbound_credentials

val blocking_functions__forward_inbound_credentials :
  ?access_token:bool prop ->
  ?id_token:bool prop ->
  ?refresh_token:bool prop ->
  unit ->
  blocking_functions__forward_inbound_credentials

type blocking_functions__triggers

val blocking_functions__triggers :
  event_type:string prop ->
  function_uri:string prop ->
  unit ->
  blocking_functions__triggers

type blocking_functions

val blocking_functions :
  ?forward_inbound_credentials:
    blocking_functions__forward_inbound_credentials list ->
  triggers:blocking_functions__triggers list ->
  unit ->
  blocking_functions

type client__permissions

val client__permissions :
  ?disabled_user_deletion:bool prop ->
  ?disabled_user_signup:bool prop ->
  unit ->
  client__permissions

type client

val client : ?permissions:client__permissions list -> unit -> client

type mfa__provider_configs__totp_provider_config

val mfa__provider_configs__totp_provider_config :
  ?adjacent_intervals:float prop ->
  unit ->
  mfa__provider_configs__totp_provider_config

type mfa__provider_configs

val mfa__provider_configs :
  ?state:string prop ->
  ?totp_provider_config:
    mfa__provider_configs__totp_provider_config list ->
  unit ->
  mfa__provider_configs

type mfa

val mfa :
  ?enabled_providers:string prop list ->
  ?state:string prop ->
  ?provider_configs:mfa__provider_configs list ->
  unit ->
  mfa

type monitoring__request_logging

val monitoring__request_logging :
  ?enabled:bool prop -> unit -> monitoring__request_logging

type monitoring

val monitoring :
  ?request_logging:monitoring__request_logging list ->
  unit ->
  monitoring

type multi_tenant

val multi_tenant :
  ?allow_tenants:bool prop ->
  ?default_tenant_location:string prop ->
  unit ->
  multi_tenant

type quota__sign_up_quota_config

val quota__sign_up_quota_config :
  ?quota:float prop ->
  ?quota_duration:string prop ->
  ?start_time:string prop ->
  unit ->
  quota__sign_up_quota_config

type quota

val quota :
  ?sign_up_quota_config:quota__sign_up_quota_config list ->
  unit ->
  quota

type sign_in__hash_config = {
  algorithm : string prop;  (** algorithm *)
  memory_cost : float prop;  (** memory_cost *)
  rounds : float prop;  (** rounds *)
  salt_separator : string prop;  (** salt_separator *)
  signer_key : string prop;  (** signer_key *)
}

type sign_in__anonymous

val sign_in__anonymous :
  enabled:bool prop -> unit -> sign_in__anonymous

type sign_in__email

val sign_in__email :
  ?password_required:bool prop ->
  enabled:bool prop ->
  unit ->
  sign_in__email

type sign_in__phone_number

val sign_in__phone_number :
  ?test_phone_numbers:string prop Tf_core.assoc ->
  enabled:bool prop ->
  unit ->
  sign_in__phone_number

type sign_in

val sign_in :
  ?allow_duplicate_emails:bool prop ->
  ?anonymous:sign_in__anonymous list ->
  ?email:sign_in__email list ->
  ?phone_number:sign_in__phone_number list ->
  unit ->
  sign_in

type sms_region_config__allow_by_default

val sms_region_config__allow_by_default :
  ?disallowed_regions:string prop list ->
  unit ->
  sms_region_config__allow_by_default

type sms_region_config__allowlist_only

val sms_region_config__allowlist_only :
  ?allowed_regions:string prop list ->
  unit ->
  sms_region_config__allowlist_only

type sms_region_config

val sms_region_config :
  ?allow_by_default:sms_region_config__allow_by_default list ->
  ?allowlist_only:sms_region_config__allowlist_only list ->
  unit ->
  sms_region_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_identity_platform_config

val google_identity_platform_config :
  ?authorized_domains:string prop list ->
  ?autodelete_anonymous_users:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?blocking_functions:blocking_functions list ->
  ?client:client list ->
  ?mfa:mfa list ->
  ?monitoring:monitoring list ->
  ?multi_tenant:multi_tenant list ->
  ?quota:quota list ->
  ?sign_in:sign_in list ->
  ?sms_region_config:sms_region_config list ->
  ?timeouts:timeouts ->
  unit ->
  google_identity_platform_config

val yojson_of_google_identity_platform_config :
  google_identity_platform_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorized_domains : string list prop;
  autodelete_anonymous_users : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorized_domains:string prop list ->
  ?autodelete_anonymous_users:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?blocking_functions:blocking_functions list ->
  ?client:client list ->
  ?mfa:mfa list ->
  ?monitoring:monitoring list ->
  ?multi_tenant:multi_tenant list ->
  ?quota:quota list ->
  ?sign_in:sign_in list ->
  ?sms_region_config:sms_region_config list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?authorized_domains:string prop list ->
  ?autodelete_anonymous_users:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?blocking_functions:blocking_functions list ->
  ?client:client list ->
  ?mfa:mfa list ->
  ?monitoring:monitoring list ->
  ?multi_tenant:multi_tenant list ->
  ?quota:quota list ->
  ?sign_in:sign_in list ->
  ?sms_region_config:sms_region_config list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
