(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  name:string prop -> unit -> saas_app__custom_attribute__source

type saas_app__custom_attribute

val saas_app__custom_attribute :
  ?friendly_name:string prop ->
  ?name:string prop ->
  ?name_format:string prop ->
  ?required:bool prop ->
  source:saas_app__custom_attribute__source list ->
  unit ->
  saas_app__custom_attribute

type saas_app

val saas_app :
  ?app_launcher_url:string prop ->
  ?auth_type:string prop ->
  ?consumer_service_url:string prop ->
  ?default_relay_state:string prop ->
  ?grant_types:string prop list ->
  ?group_filter_regex:string prop ->
  ?name_id_format:string prop ->
  ?name_id_transform_jsonata:string prop ->
  ?redirect_uris:string prop list ->
  ?scopes:string prop list ->
  ?sp_entity_id:string prop ->
  custom_attribute:saas_app__custom_attribute list ->
  unit ->
  saas_app

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
  ?same_site_cookie_attribute:string prop ->
  ?self_hosted_domains:string prop list ->
  ?service_auth_401_redirect:bool prop ->
  ?session_duration:string prop ->
  ?skip_interstitial:bool prop ->
  ?tags:string prop list ->
  ?type_:string prop ->
  ?zone_id:string prop ->
  cors_headers:cors_headers list ->
  footer_links:footer_links list ->
  landing_page_design:landing_page_design list ->
  saas_app:saas_app list ->
  unit ->
  cloudflare_access_application

val yojson_of_cloudflare_access_application :
  cloudflare_access_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  ?same_site_cookie_attribute:string prop ->
  ?self_hosted_domains:string prop list ->
  ?service_auth_401_redirect:bool prop ->
  ?session_duration:string prop ->
  ?skip_interstitial:bool prop ->
  ?tags:string prop list ->
  ?type_:string prop ->
  ?zone_id:string prop ->
  cors_headers:cors_headers list ->
  footer_links:footer_links list ->
  landing_page_design:landing_page_design list ->
  saas_app:saas_app list ->
  string ->
  t
