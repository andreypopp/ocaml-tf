(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_application__cors_headers
type cloudflare_access_application__footer_links
type cloudflare_access_application__landing_page_design
type cloudflare_access_application__saas_app__custom_attribute__source
type cloudflare_access_application__saas_app__custom_attribute
type cloudflare_access_application__saas_app
type cloudflare_access_application

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
  cors_headers:cloudflare_access_application__cors_headers list ->
  footer_links:cloudflare_access_application__footer_links list ->
  landing_page_design:
    cloudflare_access_application__landing_page_design list ->
  saas_app:cloudflare_access_application__saas_app list ->
  string ->
  t
