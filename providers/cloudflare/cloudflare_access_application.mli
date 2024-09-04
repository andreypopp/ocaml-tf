(** Provides a Cloudflare Access Application resource. Access
Applications are used to restrict access to a whole application using an
authorisation gateway managed by Cloudflare.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors_headers

val cors_headers :
  ?allow_all_headers:bool prop ->
  ?allow_all_methods:bool prop ->
  ?allow_all_origins:bool prop ->
  ?allow_credentials:bool prop ->
  ?allowed_headers:string prop list ->
  ?allowed_methods:string prop list ->
  ?allowed_origins:string prop list ->
  ?max_age:float prop ->
  unit ->
  cors_headers

type footer_links

val footer_links :
  ?name:string prop -> ?url:string prop -> unit -> footer_links

type landing_page_design

val landing_page_design :
  ?button_color:string prop ->
  ?button_text_color:string prop ->
  ?image_url:string prop ->
  ?message:string prop ->
  ?title:string prop ->
  unit ->
  landing_page_design

type saas_app__custom_attribute__source

val saas_app__custom_attribute__source :
  ?name_by_idp:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  saas_app__custom_attribute__source

type saas_app__custom_attribute

val saas_app__custom_attribute :
  ?friendly_name:string prop ->
  ?name:string prop ->
  ?name_format:string prop ->
  ?required:bool prop ->
  source:saas_app__custom_attribute__source list ->
  unit ->
  saas_app__custom_attribute

type saas_app__custom_claim__source

val saas_app__custom_claim__source :
  ?name_by_idp:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  saas_app__custom_claim__source

type saas_app__custom_claim

val saas_app__custom_claim :
  ?name:string prop ->
  ?required:bool prop ->
  ?scope:string prop ->
  source:saas_app__custom_claim__source list ->
  unit ->
  saas_app__custom_claim

type saas_app__hybrid_and_implicit_options

val saas_app__hybrid_and_implicit_options :
  ?return_access_token_from_authorization_endpoint:bool prop ->
  ?return_id_token_from_authorization_endpoint:bool prop ->
  unit ->
  saas_app__hybrid_and_implicit_options

type saas_app__refresh_token_options

val saas_app__refresh_token_options :
  ?lifetime:string prop -> unit -> saas_app__refresh_token_options

type saas_app

val saas_app :
  ?access_token_lifetime:string prop ->
  ?allow_pkce_without_client_secret:bool prop ->
  ?app_launcher_url:string prop ->
  ?auth_type:string prop ->
  ?consumer_service_url:string prop ->
  ?default_relay_state:string prop ->
  ?grant_types:string prop list ->
  ?group_filter_regex:string prop ->
  ?name_id_format:string prop ->
  ?name_id_transform_jsonata:string prop ->
  ?redirect_uris:string prop list ->
  ?saml_attribute_transform_jsonata:string prop ->
  ?scopes:string prop list ->
  ?sp_entity_id:string prop ->
  ?custom_attribute:saas_app__custom_attribute list ->
  ?custom_claim:saas_app__custom_claim list ->
  ?hybrid_and_implicit_options:
    saas_app__hybrid_and_implicit_options list ->
  ?refresh_token_options:saas_app__refresh_token_options list ->
  unit ->
  saas_app

type scim_config__authentication

val scim_config__authentication :
  ?authorization_url:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?password:string prop ->
  ?scopes:string prop list ->
  ?token:string prop ->
  ?token_url:string prop ->
  ?user:string prop ->
  scheme:string prop ->
  unit ->
  scim_config__authentication

type scim_config__mappings__operations

val scim_config__mappings__operations :
  ?create:bool prop ->
  ?delete:bool prop ->
  ?update:bool prop ->
  unit ->
  scim_config__mappings__operations

type scim_config__mappings

val scim_config__mappings :
  ?enabled:bool prop ->
  ?filter:string prop ->
  ?transform_jsonata:string prop ->
  ?operations:scim_config__mappings__operations list ->
  schema:string prop ->
  unit ->
  scim_config__mappings

type scim_config

val scim_config :
  ?deactivate_on_delete:bool prop ->
  ?enabled:bool prop ->
  ?authentication:scim_config__authentication list ->
  ?mappings:scim_config__mappings list ->
  idp_uid:string prop ->
  remote_uri:string prop ->
  unit ->
  scim_config

type cloudflare_access_application

val cloudflare_access_application :
  ?account_id:string prop ->
  ?allow_authenticate_via_warp:bool prop ->
  ?allowed_idps:string prop list ->
  ?app_launcher_logo_url:string prop ->
  ?app_launcher_visible:bool prop ->
  ?auto_redirect_to_identity:bool prop ->
  ?bg_color:string prop ->
  ?custom_deny_message:string prop ->
  ?custom_deny_url:string prop ->
  ?custom_non_identity_deny_url:string prop ->
  ?custom_pages:string prop list ->
  ?domain:string prop ->
  ?enable_binding_cookie:bool prop ->
  ?header_bg_color:string prop ->
  ?http_only_cookie_attribute:bool prop ->
  ?id:string prop ->
  ?logo_url:string prop ->
  ?name:string prop ->
  ?options_preflight_bypass:bool prop ->
  ?policies:string prop list ->
  ?same_site_cookie_attribute:string prop ->
  ?self_hosted_domains:string prop list ->
  ?service_auth_401_redirect:bool prop ->
  ?session_duration:string prop ->
  ?skip_interstitial:bool prop ->
  ?tags:string prop list ->
  ?type_:string prop ->
  ?zone_id:string prop ->
  ?cors_headers:cors_headers list ->
  ?landing_page_design:landing_page_design list ->
  ?saas_app:saas_app list ->
  ?scim_config:scim_config list ->
  footer_links:footer_links list ->
  unit ->
  cloudflare_access_application

val yojson_of_cloudflare_access_application :
  cloudflare_access_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  allow_authenticate_via_warp : bool prop;
  allowed_idps : string list prop;
  app_launcher_logo_url : string prop;
  app_launcher_visible : bool prop;
  aud : string prop;
  auto_redirect_to_identity : bool prop;
  bg_color : string prop;
  custom_deny_message : string prop;
  custom_deny_url : string prop;
  custom_non_identity_deny_url : string prop;
  custom_pages : string list prop;
  domain : string prop;
  enable_binding_cookie : bool prop;
  header_bg_color : string prop;
  http_only_cookie_attribute : bool prop;
  id : string prop;
  logo_url : string prop;
  name : string prop;
  options_preflight_bypass : bool prop;
  policies : string list prop;
  same_site_cookie_attribute : string prop;
  self_hosted_domains : string list prop;
  service_auth_401_redirect : bool prop;
  session_duration : string prop;
  skip_interstitial : bool prop;
  tags : string list prop;
  type_ : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?allow_authenticate_via_warp:bool prop ->
  ?allowed_idps:string prop list ->
  ?app_launcher_logo_url:string prop ->
  ?app_launcher_visible:bool prop ->
  ?auto_redirect_to_identity:bool prop ->
  ?bg_color:string prop ->
  ?custom_deny_message:string prop ->
  ?custom_deny_url:string prop ->
  ?custom_non_identity_deny_url:string prop ->
  ?custom_pages:string prop list ->
  ?domain:string prop ->
  ?enable_binding_cookie:bool prop ->
  ?header_bg_color:string prop ->
  ?http_only_cookie_attribute:bool prop ->
  ?id:string prop ->
  ?logo_url:string prop ->
  ?name:string prop ->
  ?options_preflight_bypass:bool prop ->
  ?policies:string prop list ->
  ?same_site_cookie_attribute:string prop ->
  ?self_hosted_domains:string prop list ->
  ?service_auth_401_redirect:bool prop ->
  ?session_duration:string prop ->
  ?skip_interstitial:bool prop ->
  ?tags:string prop list ->
  ?type_:string prop ->
  ?zone_id:string prop ->
  ?cors_headers:cors_headers list ->
  ?landing_page_design:landing_page_design list ->
  ?saas_app:saas_app list ->
  ?scim_config:scim_config list ->
  footer_links:footer_links list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?allow_authenticate_via_warp:bool prop ->
  ?allowed_idps:string prop list ->
  ?app_launcher_logo_url:string prop ->
  ?app_launcher_visible:bool prop ->
  ?auto_redirect_to_identity:bool prop ->
  ?bg_color:string prop ->
  ?custom_deny_message:string prop ->
  ?custom_deny_url:string prop ->
  ?custom_non_identity_deny_url:string prop ->
  ?custom_pages:string prop list ->
  ?domain:string prop ->
  ?enable_binding_cookie:bool prop ->
  ?header_bg_color:string prop ->
  ?http_only_cookie_attribute:bool prop ->
  ?id:string prop ->
  ?logo_url:string prop ->
  ?name:string prop ->
  ?options_preflight_bypass:bool prop ->
  ?policies:string prop list ->
  ?same_site_cookie_attribute:string prop ->
  ?self_hosted_domains:string prop list ->
  ?service_auth_401_redirect:bool prop ->
  ?session_duration:string prop ->
  ?skip_interstitial:bool prop ->
  ?tags:string prop list ->
  ?type_:string prop ->
  ?zone_id:string prop ->
  ?cors_headers:cors_headers list ->
  ?landing_page_design:landing_page_design list ->
  ?saas_app:saas_app list ->
  ?scim_config:scim_config list ->
  footer_links:footer_links list ->
  string ->
  t Tf_core.resource
