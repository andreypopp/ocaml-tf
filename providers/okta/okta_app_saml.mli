(** This resource allows you to create and configure a SAML Application.
-> During an apply if there is change in 'status' the app will first be
activated or deactivated in accordance with the 'status' change. Then, all
other arguments that changed will be applied.
		
-> If you receive the error 'You do not have permission to access the feature
you are requesting' [contact support](mailto:dev-inquiries@okta.com) and
request feature flag 'ADVANCED_SSO' be applied to your org. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type keys = {
  created : string prop;  (** created *)
  e : string prop;  (** e *)
  expires_at : string prop;  (** expires_at *)
  kid : string prop;  (** kid *)
  kty : string prop;  (** kty *)
  last_updated : string prop;  (** last_updated *)
  n : string prop;  (** n *)
  use : string prop;  (** use *)
  x5c : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x5c *)
  x5t_s256 : string prop;  (** x5t_s256 *)
}

type attribute_statements

val attribute_statements :
  ?filter_type:string prop ->
  ?filter_value:string prop ->
  ?namespace:string prop ->
  ?type_:string prop ->
  ?values:string prop list ->
  name:string prop ->
  unit ->
  attribute_statements

type timeouts

val timeouts :
  ?create:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type okta_app_saml

val okta_app_saml :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?acs_endpoints:string prop list ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?app_settings_json:string prop ->
  ?assertion_signed:bool prop ->
  ?audience:string prop ->
  ?authentication_policy:string prop ->
  ?authn_context_class_ref:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?default_relay_state:string prop ->
  ?destination:string prop ->
  ?digest_algorithm:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?honor_force_authn:bool prop ->
  ?id:string prop ->
  ?idp_issuer:string prop ->
  ?implicit_assignment:bool prop ->
  ?inline_hook_id:string prop ->
  ?key_name:string prop ->
  ?key_years_valid:float prop ->
  ?logo:string prop ->
  ?preconfigured_app:string prop ->
  ?recipient:string prop ->
  ?request_compressed:bool prop ->
  ?response_signed:bool prop ->
  ?saml_signed_request_enabled:bool prop ->
  ?saml_version:string prop ->
  ?signature_algorithm:string prop ->
  ?single_logout_certificate:string prop ->
  ?single_logout_issuer:string prop ->
  ?single_logout_url:string prop ->
  ?sp_issuer:string prop ->
  ?sso_url:string prop ->
  ?status:string prop ->
  ?subject_name_id_format:string prop ->
  ?subject_name_id_template:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?attribute_statements:attribute_statements list ->
  ?timeouts:timeouts ->
  label:string prop ->
  unit ->
  okta_app_saml

val yojson_of_okta_app_saml : okta_app_saml -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessibility_error_redirect_url : string prop;
  accessibility_login_redirect_url : string prop;
  accessibility_self_service : bool prop;
  acs_endpoints : string list prop;
  admin_note : string prop;
  app_links_json : string prop;
  app_settings_json : string prop;
  assertion_signed : bool prop;
  audience : string prop;
  authentication_policy : string prop;
  authn_context_class_ref : string prop;
  auto_submit_toolbar : bool prop;
  certificate : string prop;
  default_relay_state : string prop;
  destination : string prop;
  digest_algorithm : string prop;
  embed_url : string prop;
  enduser_note : string prop;
  entity_key : string prop;
  entity_url : string prop;
  features : string list prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  honor_force_authn : bool prop;
  http_post_binding : string prop;
  http_redirect_binding : string prop;
  id : string prop;
  idp_issuer : string prop;
  implicit_assignment : bool prop;
  inline_hook_id : string prop;
  key_id : string prop;
  key_name : string prop;
  key_years_valid : float prop;
  keys : keys list prop;
  label : string prop;
  logo : string prop;
  logo_url : string prop;
  metadata : string prop;
  metadata_url : string prop;
  name : string prop;
  preconfigured_app : string prop;
  recipient : string prop;
  request_compressed : bool prop;
  response_signed : bool prop;
  saml_signed_request_enabled : bool prop;
  saml_version : string prop;
  sign_on_mode : string prop;
  signature_algorithm : string prop;
  single_logout_certificate : string prop;
  single_logout_issuer : string prop;
  single_logout_url : string prop;
  sp_issuer : string prop;
  sso_url : string prop;
  status : string prop;
  subject_name_id_format : string prop;
  subject_name_id_template : string prop;
  user_name_template : string prop;
  user_name_template_push_status : string prop;
  user_name_template_suffix : string prop;
  user_name_template_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?acs_endpoints:string prop list ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?app_settings_json:string prop ->
  ?assertion_signed:bool prop ->
  ?audience:string prop ->
  ?authentication_policy:string prop ->
  ?authn_context_class_ref:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?default_relay_state:string prop ->
  ?destination:string prop ->
  ?digest_algorithm:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?honor_force_authn:bool prop ->
  ?id:string prop ->
  ?idp_issuer:string prop ->
  ?implicit_assignment:bool prop ->
  ?inline_hook_id:string prop ->
  ?key_name:string prop ->
  ?key_years_valid:float prop ->
  ?logo:string prop ->
  ?preconfigured_app:string prop ->
  ?recipient:string prop ->
  ?request_compressed:bool prop ->
  ?response_signed:bool prop ->
  ?saml_signed_request_enabled:bool prop ->
  ?saml_version:string prop ->
  ?signature_algorithm:string prop ->
  ?single_logout_certificate:string prop ->
  ?single_logout_issuer:string prop ->
  ?single_logout_url:string prop ->
  ?sp_issuer:string prop ->
  ?sso_url:string prop ->
  ?status:string prop ->
  ?subject_name_id_format:string prop ->
  ?subject_name_id_template:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?attribute_statements:attribute_statements list ->
  ?timeouts:timeouts ->
  label:string prop ->
  string ->
  t

val make :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?acs_endpoints:string prop list ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?app_settings_json:string prop ->
  ?assertion_signed:bool prop ->
  ?audience:string prop ->
  ?authentication_policy:string prop ->
  ?authn_context_class_ref:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?default_relay_state:string prop ->
  ?destination:string prop ->
  ?digest_algorithm:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?honor_force_authn:bool prop ->
  ?id:string prop ->
  ?idp_issuer:string prop ->
  ?implicit_assignment:bool prop ->
  ?inline_hook_id:string prop ->
  ?key_name:string prop ->
  ?key_years_valid:float prop ->
  ?logo:string prop ->
  ?preconfigured_app:string prop ->
  ?recipient:string prop ->
  ?request_compressed:bool prop ->
  ?response_signed:bool prop ->
  ?saml_signed_request_enabled:bool prop ->
  ?saml_version:string prop ->
  ?signature_algorithm:string prop ->
  ?single_logout_certificate:string prop ->
  ?single_logout_issuer:string prop ->
  ?single_logout_url:string prop ->
  ?sp_issuer:string prop ->
  ?sso_url:string prop ->
  ?status:string prop ->
  ?subject_name_id_format:string prop ->
  ?subject_name_id_template:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?attribute_statements:attribute_statements list ->
  ?timeouts:timeouts ->
  label:string prop ->
  string ->
  t Tf_core.resource
