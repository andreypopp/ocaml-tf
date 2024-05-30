(** This resource allows you to create and configure an OIDC Application.
-> During an apply if there is change in status the app will first be
activated or deactivated in accordance with the status change. Then, all
other arguments that changed will be applied. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type groups_claim

val groups_claim :
  ?filter_type:string prop ->
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  unit ->
  groups_claim

type jwks

val jwks :
  ?e:string prop ->
  ?n:string prop ->
  ?x:string prop ->
  ?y:string prop ->
  kid:string prop ->
  kty:string prop ->
  unit ->
  jwks

type timeouts

val timeouts :
  ?create:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type okta_app_oauth

val okta_app_oauth :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?app_settings_json:string prop ->
  ?authentication_policy:string prop ->
  ?auto_key_rotation:bool prop ->
  ?auto_submit_toolbar:bool prop ->
  ?client_basic_secret:string prop ->
  ?client_id:string prop ->
  ?client_uri:string prop ->
  ?consent_method:string prop ->
  ?enduser_note:string prop ->
  ?grant_types:string prop list ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?implicit_assignment:bool prop ->
  ?issuer_mode:string prop ->
  ?jwks_uri:string prop ->
  ?login_mode:string prop ->
  ?login_scopes:string prop list ->
  ?login_uri:string prop ->
  ?logo:string prop ->
  ?logo_uri:string prop ->
  ?omit_secret:bool prop ->
  ?pkce_required:bool prop ->
  ?policy_uri:string prop ->
  ?post_logout_redirect_uris:string prop list ->
  ?profile:string prop ->
  ?redirect_uris:string prop list ->
  ?refresh_token_leeway:float prop ->
  ?refresh_token_rotation:string prop ->
  ?response_types:string prop list ->
  ?status:string prop ->
  ?token_endpoint_auth_method:string prop ->
  ?tos_uri:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?wildcard_redirect:string prop ->
  ?jwks:jwks list ->
  ?timeouts:timeouts ->
  label:string prop ->
  type_:string prop ->
  groups_claim:groups_claim list ->
  unit ->
  okta_app_oauth

val yojson_of_okta_app_oauth : okta_app_oauth -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessibility_error_redirect_url : string prop;
  accessibility_login_redirect_url : string prop;
  accessibility_self_service : bool prop;
  admin_note : string prop;
  app_links_json : string prop;
  app_settings_json : string prop;
  authentication_policy : string prop;
  auto_key_rotation : bool prop;
  auto_submit_toolbar : bool prop;
  client_basic_secret : string prop;
  client_id : string prop;
  client_secret : string prop;
  client_uri : string prop;
  consent_method : string prop;
  enduser_note : string prop;
  grant_types : string list prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  id : string prop;
  implicit_assignment : bool prop;
  issuer_mode : string prop;
  jwks_uri : string prop;
  label : string prop;
  login_mode : string prop;
  login_scopes : string list prop;
  login_uri : string prop;
  logo : string prop;
  logo_uri : string prop;
  logo_url : string prop;
  name : string prop;
  omit_secret : bool prop;
  pkce_required : bool prop;
  policy_uri : string prop;
  post_logout_redirect_uris : string list prop;
  profile : string prop;
  redirect_uris : string list prop;
  refresh_token_leeway : float prop;
  refresh_token_rotation : string prop;
  response_types : string list prop;
  sign_on_mode : string prop;
  status : string prop;
  token_endpoint_auth_method : string prop;
  tos_uri : string prop;
  type_ : string prop;
  user_name_template : string prop;
  user_name_template_push_status : string prop;
  user_name_template_suffix : string prop;
  user_name_template_type : string prop;
  wildcard_redirect : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?app_settings_json:string prop ->
  ?authentication_policy:string prop ->
  ?auto_key_rotation:bool prop ->
  ?auto_submit_toolbar:bool prop ->
  ?client_basic_secret:string prop ->
  ?client_id:string prop ->
  ?client_uri:string prop ->
  ?consent_method:string prop ->
  ?enduser_note:string prop ->
  ?grant_types:string prop list ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?implicit_assignment:bool prop ->
  ?issuer_mode:string prop ->
  ?jwks_uri:string prop ->
  ?login_mode:string prop ->
  ?login_scopes:string prop list ->
  ?login_uri:string prop ->
  ?logo:string prop ->
  ?logo_uri:string prop ->
  ?omit_secret:bool prop ->
  ?pkce_required:bool prop ->
  ?policy_uri:string prop ->
  ?post_logout_redirect_uris:string prop list ->
  ?profile:string prop ->
  ?redirect_uris:string prop list ->
  ?refresh_token_leeway:float prop ->
  ?refresh_token_rotation:string prop ->
  ?response_types:string prop list ->
  ?status:string prop ->
  ?token_endpoint_auth_method:string prop ->
  ?tos_uri:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?wildcard_redirect:string prop ->
  ?jwks:jwks list ->
  ?timeouts:timeouts ->
  label:string prop ->
  type_:string prop ->
  groups_claim:groups_claim list ->
  string ->
  t

val make :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?app_settings_json:string prop ->
  ?authentication_policy:string prop ->
  ?auto_key_rotation:bool prop ->
  ?auto_submit_toolbar:bool prop ->
  ?client_basic_secret:string prop ->
  ?client_id:string prop ->
  ?client_uri:string prop ->
  ?consent_method:string prop ->
  ?enduser_note:string prop ->
  ?grant_types:string prop list ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?implicit_assignment:bool prop ->
  ?issuer_mode:string prop ->
  ?jwks_uri:string prop ->
  ?login_mode:string prop ->
  ?login_scopes:string prop list ->
  ?login_uri:string prop ->
  ?logo:string prop ->
  ?logo_uri:string prop ->
  ?omit_secret:bool prop ->
  ?pkce_required:bool prop ->
  ?policy_uri:string prop ->
  ?post_logout_redirect_uris:string prop list ->
  ?profile:string prop ->
  ?redirect_uris:string prop list ->
  ?refresh_token_leeway:float prop ->
  ?refresh_token_rotation:string prop ->
  ?response_types:string prop list ->
  ?status:string prop ->
  ?token_endpoint_auth_method:string prop ->
  ?tos_uri:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?wildcard_redirect:string prop ->
  ?jwks:jwks list ->
  ?timeouts:timeouts ->
  label:string prop ->
  type_:string prop ->
  groups_claim:groups_claim list ->
  string ->
  t Tf_core.resource
