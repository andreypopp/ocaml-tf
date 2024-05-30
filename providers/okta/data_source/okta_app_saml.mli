(** Get a SAML application from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attribute_statements = {
  filter_type : string prop;  (** filter_type *)
  filter_value : string prop;  (** filter_value *)
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  type_ : string prop; [@key "type"]  (** type *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type okta_app_saml

val okta_app_saml :
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?request_compressed:bool prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
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
  active_only : bool prop;
  app_settings_json : string prop;
  assertion_signed : bool prop;
  attribute_statements : attribute_statements list prop;
  audience : string prop;
  authn_context_class_ref : string prop;
  auto_submit_toolbar : bool prop;
  default_relay_state : string prop;
  destination : string prop;
  digest_algorithm : string prop;
  features : string list prop;
  groups : string list prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  honor_force_authn : bool prop;
  id : string prop;
  idp_issuer : string prop;
  inline_hook_id : string prop;
  key_id : string prop;
  label : string prop;
  label_prefix : string prop;
  links : string prop;
  name : string prop;
  recipient : string prop;
  request_compressed : bool prop;
  response_signed : bool prop;
  saml_signed_request_enabled : bool prop;
  signature_algorithm : string prop;
  single_logout_certificate : string prop;
  single_logout_issuer : string prop;
  single_logout_url : string prop;
  skip_groups : bool prop;
  skip_users : bool prop;
  sp_issuer : string prop;
  sso_url : string prop;
  status : string prop;
  subject_name_id_format : string prop;
  subject_name_id_template : string prop;
  user_name_template : string prop;
  user_name_template_push_status : string prop;
  user_name_template_suffix : string prop;
  user_name_template_type : string prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?request_compressed:bool prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
  string ->
  t

val make :
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?request_compressed:bool prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
  string ->
  t Tf_core.resource
