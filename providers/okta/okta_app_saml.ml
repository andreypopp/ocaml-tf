(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attribute_statements = {
  filter_type : string prop option; [@option]
  filter_value : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attribute_statements) -> ()

let yojson_of_attribute_statements =
  (function
   | {
       filter_type = v_filter_type;
       filter_value = v_filter_value;
       name = v_name;
       namespace = v_namespace;
       type_ = v_type_;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_filter_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attribute_statements -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attribute_statements

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; read = v_read; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type keys = {
  created : string prop;
  e : string prop;
  expires_at : string prop;
  kid : string prop;
  kty : string prop;
  last_updated : string prop;
  n : string prop;
  use : string prop;
  x5c : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x5t_s256 : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : keys) -> ()

let yojson_of_keys =
  (function
   | {
       created = v_created;
       e = v_e;
       expires_at = v_expires_at;
       kid = v_kid;
       kty = v_kty;
       last_updated = v_last_updated;
       n = v_n;
       use = v_use;
       x5c = v_x5c;
       x5t_s256 = v_x5t_s256;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_x5t_s256 in
         ("x5t_s256", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x5c then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string)) v_x5c
           in
           let bnd = "x5c", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_use in
         ("use", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_n in
         ("n", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_updated in
         ("last_updated", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kty in
         ("kty", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kid in
         ("kid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expires_at in
         ("expires_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_e in
         ("e", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created in
         ("created", arg) :: bnds
       in
       `Assoc bnds
    : keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_keys

[@@@deriving.end]

type okta_app_saml = {
  accessibility_error_redirect_url : string prop option; [@option]
  accessibility_login_redirect_url : string prop option; [@option]
  accessibility_self_service : bool prop option; [@option]
  acs_endpoints : string prop list option; [@option]
  admin_note : string prop option; [@option]
  app_links_json : string prop option; [@option]
  app_settings_json : string prop option; [@option]
  assertion_signed : bool prop option; [@option]
  audience : string prop option; [@option]
  authentication_policy : string prop option; [@option]
  authn_context_class_ref : string prop option; [@option]
  auto_submit_toolbar : bool prop option; [@option]
  default_relay_state : string prop option; [@option]
  destination : string prop option; [@option]
  digest_algorithm : string prop option; [@option]
  enduser_note : string prop option; [@option]
  hide_ios : bool prop option; [@option]
  hide_web : bool prop option; [@option]
  honor_force_authn : bool prop option; [@option]
  id : string prop option; [@option]
  idp_issuer : string prop option; [@option]
  implicit_assignment : bool prop option; [@option]
  inline_hook_id : string prop option; [@option]
  key_name : string prop option; [@option]
  key_years_valid : float prop option; [@option]
  label : string prop;
  logo : string prop option; [@option]
  preconfigured_app : string prop option; [@option]
  recipient : string prop option; [@option]
  request_compressed : bool prop option; [@option]
  response_signed : bool prop option; [@option]
  saml_signed_request_enabled : bool prop option; [@option]
  saml_version : string prop option; [@option]
  signature_algorithm : string prop option; [@option]
  single_logout_certificate : string prop option; [@option]
  single_logout_issuer : string prop option; [@option]
  single_logout_url : string prop option; [@option]
  sp_issuer : string prop option; [@option]
  sso_url : string prop option; [@option]
  status : string prop option; [@option]
  subject_name_id_format : string prop option; [@option]
  subject_name_id_template : string prop option; [@option]
  user_name_template : string prop option; [@option]
  user_name_template_push_status : string prop option; [@option]
  user_name_template_suffix : string prop option; [@option]
  user_name_template_type : string prop option; [@option]
  attribute_statements : attribute_statements list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_saml) -> ()

let yojson_of_okta_app_saml =
  (function
   | {
       accessibility_error_redirect_url =
         v_accessibility_error_redirect_url;
       accessibility_login_redirect_url =
         v_accessibility_login_redirect_url;
       accessibility_self_service = v_accessibility_self_service;
       acs_endpoints = v_acs_endpoints;
       admin_note = v_admin_note;
       app_links_json = v_app_links_json;
       app_settings_json = v_app_settings_json;
       assertion_signed = v_assertion_signed;
       audience = v_audience;
       authentication_policy = v_authentication_policy;
       authn_context_class_ref = v_authn_context_class_ref;
       auto_submit_toolbar = v_auto_submit_toolbar;
       default_relay_state = v_default_relay_state;
       destination = v_destination;
       digest_algorithm = v_digest_algorithm;
       enduser_note = v_enduser_note;
       hide_ios = v_hide_ios;
       hide_web = v_hide_web;
       honor_force_authn = v_honor_force_authn;
       id = v_id;
       idp_issuer = v_idp_issuer;
       implicit_assignment = v_implicit_assignment;
       inline_hook_id = v_inline_hook_id;
       key_name = v_key_name;
       key_years_valid = v_key_years_valid;
       label = v_label;
       logo = v_logo;
       preconfigured_app = v_preconfigured_app;
       recipient = v_recipient;
       request_compressed = v_request_compressed;
       response_signed = v_response_signed;
       saml_signed_request_enabled = v_saml_signed_request_enabled;
       saml_version = v_saml_version;
       signature_algorithm = v_signature_algorithm;
       single_logout_certificate = v_single_logout_certificate;
       single_logout_issuer = v_single_logout_issuer;
       single_logout_url = v_single_logout_url;
       sp_issuer = v_sp_issuer;
       sso_url = v_sso_url;
       status = v_status;
       subject_name_id_format = v_subject_name_id_format;
       subject_name_id_template = v_subject_name_id_template;
       user_name_template = v_user_name_template;
       user_name_template_push_status =
         v_user_name_template_push_status;
       user_name_template_suffix = v_user_name_template_suffix;
       user_name_template_type = v_user_name_template_type;
       attribute_statements = v_attribute_statements;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_attribute_statements then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attribute_statements)
               v_attribute_statements
           in
           let bnd = "attribute_statements", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_name_template_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_template_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_name_template_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_template_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_name_template_push_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_template_push_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_name_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_name_id_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_name_id_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_name_id_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_name_id_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sso_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sso_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sp_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sp_issuer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_single_logout_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "single_logout_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_single_logout_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "single_logout_issuer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_single_logout_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "single_logout_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_signature_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signature_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_saml_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "saml_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_saml_signed_request_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "saml_signed_request_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_signed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "response_signed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_compressed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "request_compressed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recipient with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recipient", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preconfigured_app with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preconfigured_app", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       let bnds =
         match v_key_years_valid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_years_valid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inline_hook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inline_hook_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_implicit_assignment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "implicit_assignment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idp_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_issuer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_honor_force_authn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "honor_force_authn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hide_web with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hide_web", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hide_ios with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hide_ios", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enduser_note with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enduser_note", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digest_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_relay_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_relay_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_submit_toolbar with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_submit_toolbar", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authn_context_class_ref with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authn_context_class_ref", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audience", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assertion_signed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "assertion_signed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_settings_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_settings_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_links_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_links_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_note with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin_note", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acs_endpoints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "acs_endpoints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accessibility_self_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "accessibility_self_service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accessibility_login_redirect_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accessibility_login_redirect_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accessibility_error_redirect_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accessibility_error_redirect_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_app_saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_saml

[@@@deriving.end]

let attribute_statements ?filter_type ?filter_value ?namespace ?type_
    ?values ~name () : attribute_statements =
  { filter_type; filter_value; name; namespace; type_; values }

let timeouts ?create ?read ?update () : timeouts =
  { create; read; update }

let okta_app_saml ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?acs_endpoints ?admin_note ?app_links_json ?app_settings_json
    ?assertion_signed ?audience ?authentication_policy
    ?authn_context_class_ref ?auto_submit_toolbar
    ?default_relay_state ?destination ?digest_algorithm ?enduser_note
    ?hide_ios ?hide_web ?honor_force_authn ?id ?idp_issuer
    ?implicit_assignment ?inline_hook_id ?key_name ?key_years_valid
    ?logo ?preconfigured_app ?recipient ?request_compressed
    ?response_signed ?saml_signed_request_enabled ?saml_version
    ?signature_algorithm ?single_logout_certificate
    ?single_logout_issuer ?single_logout_url ?sp_issuer ?sso_url
    ?status ?subject_name_id_format ?subject_name_id_template
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?(attribute_statements = []) ?timeouts ~label () : okta_app_saml
    =
  {
    accessibility_error_redirect_url;
    accessibility_login_redirect_url;
    accessibility_self_service;
    acs_endpoints;
    admin_note;
    app_links_json;
    app_settings_json;
    assertion_signed;
    audience;
    authentication_policy;
    authn_context_class_ref;
    auto_submit_toolbar;
    default_relay_state;
    destination;
    digest_algorithm;
    enduser_note;
    hide_ios;
    hide_web;
    honor_force_authn;
    id;
    idp_issuer;
    implicit_assignment;
    inline_hook_id;
    key_name;
    key_years_valid;
    label;
    logo;
    preconfigured_app;
    recipient;
    request_compressed;
    response_signed;
    saml_signed_request_enabled;
    saml_version;
    signature_algorithm;
    single_logout_certificate;
    single_logout_issuer;
    single_logout_url;
    sp_issuer;
    sso_url;
    status;
    subject_name_id_format;
    subject_name_id_template;
    user_name_template;
    user_name_template_push_status;
    user_name_template_suffix;
    user_name_template_type;
    attribute_statements;
    timeouts;
  }

type t = {
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

let make ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?acs_endpoints ?admin_note ?app_links_json ?app_settings_json
    ?assertion_signed ?audience ?authentication_policy
    ?authn_context_class_ref ?auto_submit_toolbar
    ?default_relay_state ?destination ?digest_algorithm ?enduser_note
    ?hide_ios ?hide_web ?honor_force_authn ?id ?idp_issuer
    ?implicit_assignment ?inline_hook_id ?key_name ?key_years_valid
    ?logo ?preconfigured_app ?recipient ?request_compressed
    ?response_signed ?saml_signed_request_enabled ?saml_version
    ?signature_algorithm ?single_logout_certificate
    ?single_logout_issuer ?single_logout_url ?sp_issuer ?sso_url
    ?status ?subject_name_id_format ?subject_name_id_template
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?(attribute_statements = []) ?timeouts ~label __id =
  let __type = "okta_app_saml" in
  let __attrs =
    ({
       tf_name = __id;
       accessibility_error_redirect_url =
         Prop.computed __type __id "accessibility_error_redirect_url";
       accessibility_login_redirect_url =
         Prop.computed __type __id "accessibility_login_redirect_url";
       accessibility_self_service =
         Prop.computed __type __id "accessibility_self_service";
       acs_endpoints = Prop.computed __type __id "acs_endpoints";
       admin_note = Prop.computed __type __id "admin_note";
       app_links_json = Prop.computed __type __id "app_links_json";
       app_settings_json =
         Prop.computed __type __id "app_settings_json";
       assertion_signed =
         Prop.computed __type __id "assertion_signed";
       audience = Prop.computed __type __id "audience";
       authentication_policy =
         Prop.computed __type __id "authentication_policy";
       authn_context_class_ref =
         Prop.computed __type __id "authn_context_class_ref";
       auto_submit_toolbar =
         Prop.computed __type __id "auto_submit_toolbar";
       certificate = Prop.computed __type __id "certificate";
       default_relay_state =
         Prop.computed __type __id "default_relay_state";
       destination = Prop.computed __type __id "destination";
       digest_algorithm =
         Prop.computed __type __id "digest_algorithm";
       embed_url = Prop.computed __type __id "embed_url";
       enduser_note = Prop.computed __type __id "enduser_note";
       entity_key = Prop.computed __type __id "entity_key";
       entity_url = Prop.computed __type __id "entity_url";
       features = Prop.computed __type __id "features";
       hide_ios = Prop.computed __type __id "hide_ios";
       hide_web = Prop.computed __type __id "hide_web";
       honor_force_authn =
         Prop.computed __type __id "honor_force_authn";
       http_post_binding =
         Prop.computed __type __id "http_post_binding";
       http_redirect_binding =
         Prop.computed __type __id "http_redirect_binding";
       id = Prop.computed __type __id "id";
       idp_issuer = Prop.computed __type __id "idp_issuer";
       implicit_assignment =
         Prop.computed __type __id "implicit_assignment";
       inline_hook_id = Prop.computed __type __id "inline_hook_id";
       key_id = Prop.computed __type __id "key_id";
       key_name = Prop.computed __type __id "key_name";
       key_years_valid = Prop.computed __type __id "key_years_valid";
       keys = Prop.computed __type __id "keys";
       label = Prop.computed __type __id "label";
       logo = Prop.computed __type __id "logo";
       logo_url = Prop.computed __type __id "logo_url";
       metadata = Prop.computed __type __id "metadata";
       metadata_url = Prop.computed __type __id "metadata_url";
       name = Prop.computed __type __id "name";
       preconfigured_app =
         Prop.computed __type __id "preconfigured_app";
       recipient = Prop.computed __type __id "recipient";
       request_compressed =
         Prop.computed __type __id "request_compressed";
       response_signed = Prop.computed __type __id "response_signed";
       saml_signed_request_enabled =
         Prop.computed __type __id "saml_signed_request_enabled";
       saml_version = Prop.computed __type __id "saml_version";
       sign_on_mode = Prop.computed __type __id "sign_on_mode";
       signature_algorithm =
         Prop.computed __type __id "signature_algorithm";
       single_logout_certificate =
         Prop.computed __type __id "single_logout_certificate";
       single_logout_issuer =
         Prop.computed __type __id "single_logout_issuer";
       single_logout_url =
         Prop.computed __type __id "single_logout_url";
       sp_issuer = Prop.computed __type __id "sp_issuer";
       sso_url = Prop.computed __type __id "sso_url";
       status = Prop.computed __type __id "status";
       subject_name_id_format =
         Prop.computed __type __id "subject_name_id_format";
       subject_name_id_template =
         Prop.computed __type __id "subject_name_id_template";
       user_name_template =
         Prop.computed __type __id "user_name_template";
       user_name_template_push_status =
         Prop.computed __type __id "user_name_template_push_status";
       user_name_template_suffix =
         Prop.computed __type __id "user_name_template_suffix";
       user_name_template_type =
         Prop.computed __type __id "user_name_template_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_saml
        (okta_app_saml ?accessibility_error_redirect_url
           ?accessibility_login_redirect_url
           ?accessibility_self_service ?acs_endpoints ?admin_note
           ?app_links_json ?app_settings_json ?assertion_signed
           ?audience ?authentication_policy ?authn_context_class_ref
           ?auto_submit_toolbar ?default_relay_state ?destination
           ?digest_algorithm ?enduser_note ?hide_ios ?hide_web
           ?honor_force_authn ?id ?idp_issuer ?implicit_assignment
           ?inline_hook_id ?key_name ?key_years_valid ?logo
           ?preconfigured_app ?recipient ?request_compressed
           ?response_signed ?saml_signed_request_enabled
           ?saml_version ?signature_algorithm
           ?single_logout_certificate ?single_logout_issuer
           ?single_logout_url ?sp_issuer ?sso_url ?status
           ?subject_name_id_format ?subject_name_id_template
           ?user_name_template ?user_name_template_push_status
           ?user_name_template_suffix ?user_name_template_type
           ~attribute_statements ?timeouts ~label ());
    attrs = __attrs;
  }

let register ?tf_module ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?acs_endpoints ?admin_note ?app_links_json ?app_settings_json
    ?assertion_signed ?audience ?authentication_policy
    ?authn_context_class_ref ?auto_submit_toolbar
    ?default_relay_state ?destination ?digest_algorithm ?enduser_note
    ?hide_ios ?hide_web ?honor_force_authn ?id ?idp_issuer
    ?implicit_assignment ?inline_hook_id ?key_name ?key_years_valid
    ?logo ?preconfigured_app ?recipient ?request_compressed
    ?response_signed ?saml_signed_request_enabled ?saml_version
    ?signature_algorithm ?single_logout_certificate
    ?single_logout_issuer ?single_logout_url ?sp_issuer ?sso_url
    ?status ?subject_name_id_format ?subject_name_id_template
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?(attribute_statements = []) ?timeouts ~label __id =
  let (r : _ Tf_core.resource) =
    make ?accessibility_error_redirect_url
      ?accessibility_login_redirect_url ?accessibility_self_service
      ?acs_endpoints ?admin_note ?app_links_json ?app_settings_json
      ?assertion_signed ?audience ?authentication_policy
      ?authn_context_class_ref ?auto_submit_toolbar
      ?default_relay_state ?destination ?digest_algorithm
      ?enduser_note ?hide_ios ?hide_web ?honor_force_authn ?id
      ?idp_issuer ?implicit_assignment ?inline_hook_id ?key_name
      ?key_years_valid ?logo ?preconfigured_app ?recipient
      ?request_compressed ?response_signed
      ?saml_signed_request_enabled ?saml_version ?signature_algorithm
      ?single_logout_certificate ?single_logout_issuer
      ?single_logout_url ?sp_issuer ?sso_url ?status
      ?subject_name_id_format ?subject_name_id_template
      ?user_name_template ?user_name_template_push_status
      ?user_name_template_suffix ?user_name_template_type
      ~attribute_statements ?timeouts ~label __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
