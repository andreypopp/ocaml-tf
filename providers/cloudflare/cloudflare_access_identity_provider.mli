(** Provides a Cloudflare Access Identity Provider resource. Identity
Providers are used as an authentication or authorisation source
within Access.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config

val config :
  ?api_token:string prop ->
  ?apps_domain:string prop ->
  ?attributes:string prop list ->
  ?auth_url:string prop ->
  ?authorization_server_id:string prop ->
  ?centrify_account:string prop ->
  ?centrify_app_id:string prop ->
  ?certs_url:string prop ->
  ?claims:string prop list ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?conditional_access_enabled:bool prop ->
  ?directory_id:string prop ->
  ?email_attribute_name:string prop ->
  ?email_claim_name:string prop ->
  ?idp_public_cert:string prop ->
  ?issuer_url:string prop ->
  ?okta_account:string prop ->
  ?onelogin_account:string prop ->
  ?ping_env_id:string prop ->
  ?pkce_enabled:bool prop ->
  ?scopes:string prop list ->
  ?sign_request:bool prop ->
  ?sso_target_url:string prop ->
  ?support_groups:bool prop ->
  ?token_url:string prop ->
  unit ->
  config

type scim_config

val scim_config :
  ?enabled:bool prop ->
  ?group_member_deprovision:bool prop ->
  ?seat_deprovision:bool prop ->
  ?secret:string prop ->
  ?user_deprovision:bool prop ->
  unit ->
  scim_config

type cloudflare_access_identity_provider

val cloudflare_access_identity_provider :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:config list ->
  scim_config:scim_config list ->
  unit ->
  cloudflare_access_identity_provider

val yojson_of_cloudflare_access_identity_provider :
  cloudflare_access_identity_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:config list ->
  scim_config:scim_config list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:config list ->
  scim_config:scim_config list ->
  string ->
  t Tf_core.resource
