(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_application__cors_headers
type cloudflare_access_application__footer_links
type cloudflare_access_application__landing_page_design
type cloudflare_access_application__saas_app__custom_attribute__source
type cloudflare_access_application__saas_app__custom_attribute
type cloudflare_access_application__saas_app
type cloudflare_access_application

val cloudflare_access_application :
  ?allow_authenticate_via_warp:bool ->
  ?allowed_idps:string list ->
  ?app_launcher_logo_url:string ->
  ?app_launcher_visible:bool ->
  ?auto_redirect_to_identity:bool ->
  ?bg_color:string ->
  ?custom_deny_message:string ->
  ?custom_deny_url:string ->
  ?custom_non_identity_deny_url:string ->
  ?custom_pages:string list ->
  ?enable_binding_cookie:bool ->
  ?header_bg_color:string ->
  ?http_only_cookie_attribute:bool ->
  ?logo_url:string ->
  ?same_site_cookie_attribute:string ->
  ?self_hosted_domains:string list ->
  ?service_auth_401_redirect:bool ->
  ?session_duration:string ->
  ?skip_interstitial:bool ->
  ?tags:string list ->
  ?type_:string ->
  cors_headers:cloudflare_access_application__cors_headers list ->
  footer_links:cloudflare_access_application__footer_links list ->
  landing_page_design:
    cloudflare_access_application__landing_page_design list ->
  saas_app:cloudflare_access_application__saas_app list ->
  string ->
  unit
