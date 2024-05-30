(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups_claim = {
  filter_type : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups_claim) -> ()

let yojson_of_groups_claim =
  (function
   | {
       filter_type = v_filter_type;
       name = v_name;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : groups_claim -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups_claim

[@@@deriving.end]

type jwks = {
  e : string prop option; [@option]
  kid : string prop;
  kty : string prop;
  n : string prop option; [@option]
  x : string prop option; [@option]
  y : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jwks) -> ()

let yojson_of_jwks =
  (function
   | { e = v_e; kid = v_kid; kty = v_kty; n = v_n; x = v_x; y = v_y }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_y with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "y", arg in
             bnd :: bnds
       in
       let bnds =
         match v_x with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "x", arg in
             bnd :: bnds
       in
       let bnds =
         match v_n with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "n", arg in
             bnd :: bnds
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
         match v_e with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "e", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jwks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jwks

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

type okta_app_oauth = {
  accessibility_error_redirect_url : string prop option; [@option]
  accessibility_login_redirect_url : string prop option; [@option]
  accessibility_self_service : bool prop option; [@option]
  admin_note : string prop option; [@option]
  app_links_json : string prop option; [@option]
  app_settings_json : string prop option; [@option]
  authentication_policy : string prop option; [@option]
  auto_key_rotation : bool prop option; [@option]
  auto_submit_toolbar : bool prop option; [@option]
  client_basic_secret : string prop option; [@option]
  client_id : string prop option; [@option]
  client_uri : string prop option; [@option]
  consent_method : string prop option; [@option]
  enduser_note : string prop option; [@option]
  grant_types : string prop list option; [@option]
  hide_ios : bool prop option; [@option]
  hide_web : bool prop option; [@option]
  id : string prop option; [@option]
  implicit_assignment : bool prop option; [@option]
  issuer_mode : string prop option; [@option]
  jwks_uri : string prop option; [@option]
  label : string prop;
  login_mode : string prop option; [@option]
  login_scopes : string prop list option; [@option]
  login_uri : string prop option; [@option]
  logo : string prop option; [@option]
  logo_uri : string prop option; [@option]
  omit_secret : bool prop option; [@option]
  pkce_required : bool prop option; [@option]
  policy_uri : string prop option; [@option]
  post_logout_redirect_uris : string prop list option; [@option]
  profile : string prop option; [@option]
  redirect_uris : string prop list option; [@option]
  refresh_token_leeway : float prop option; [@option]
  refresh_token_rotation : string prop option; [@option]
  response_types : string prop list option; [@option]
  status : string prop option; [@option]
  token_endpoint_auth_method : string prop option; [@option]
  tos_uri : string prop option; [@option]
  type_ : string prop; [@key "type"]
  user_name_template : string prop option; [@option]
  user_name_template_push_status : string prop option; [@option]
  user_name_template_suffix : string prop option; [@option]
  user_name_template_type : string prop option; [@option]
  wildcard_redirect : string prop option; [@option]
  groups_claim : groups_claim list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  jwks : jwks list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_oauth) -> ()

let yojson_of_okta_app_oauth =
  (function
   | {
       accessibility_error_redirect_url =
         v_accessibility_error_redirect_url;
       accessibility_login_redirect_url =
         v_accessibility_login_redirect_url;
       accessibility_self_service = v_accessibility_self_service;
       admin_note = v_admin_note;
       app_links_json = v_app_links_json;
       app_settings_json = v_app_settings_json;
       authentication_policy = v_authentication_policy;
       auto_key_rotation = v_auto_key_rotation;
       auto_submit_toolbar = v_auto_submit_toolbar;
       client_basic_secret = v_client_basic_secret;
       client_id = v_client_id;
       client_uri = v_client_uri;
       consent_method = v_consent_method;
       enduser_note = v_enduser_note;
       grant_types = v_grant_types;
       hide_ios = v_hide_ios;
       hide_web = v_hide_web;
       id = v_id;
       implicit_assignment = v_implicit_assignment;
       issuer_mode = v_issuer_mode;
       jwks_uri = v_jwks_uri;
       label = v_label;
       login_mode = v_login_mode;
       login_scopes = v_login_scopes;
       login_uri = v_login_uri;
       logo = v_logo;
       logo_uri = v_logo_uri;
       omit_secret = v_omit_secret;
       pkce_required = v_pkce_required;
       policy_uri = v_policy_uri;
       post_logout_redirect_uris = v_post_logout_redirect_uris;
       profile = v_profile;
       redirect_uris = v_redirect_uris;
       refresh_token_leeway = v_refresh_token_leeway;
       refresh_token_rotation = v_refresh_token_rotation;
       response_types = v_response_types;
       status = v_status;
       token_endpoint_auth_method = v_token_endpoint_auth_method;
       tos_uri = v_tos_uri;
       type_ = v_type_;
       user_name_template = v_user_name_template;
       user_name_template_push_status =
         v_user_name_template_push_status;
       user_name_template_suffix = v_user_name_template_suffix;
       user_name_template_type = v_user_name_template_type;
       wildcard_redirect = v_wildcard_redirect;
       groups_claim = v_groups_claim;
       jwks = v_jwks;
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
         if Stdlib.( = ) [] v_jwks then bnds
         else
           let arg = (yojson_of_list yojson_of_jwks) v_jwks in
           let bnd = "jwks", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_groups_claim then bnds
         else
           let arg =
             (yojson_of_list yojson_of_groups_claim) v_groups_claim
           in
           let bnd = "groups_claim", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wildcard_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wildcard_redirect", arg in
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tos_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tos_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_endpoint_auth_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_endpoint_auth_method", arg in
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
         match v_response_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "response_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_refresh_token_rotation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token_rotation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_refresh_token_leeway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "refresh_token_leeway", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "redirect_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_post_logout_redirect_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "post_logout_redirect_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pkce_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "pkce_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_omit_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "omit_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo_uri", arg in
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
         match v_login_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "login_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_login_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "login_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_login_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "login_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       let bnds =
         match v_jwks_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "jwks_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issuer_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer_mode", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
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
         match v_grant_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "grant_types", arg in
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
         match v_consent_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consent_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_basic_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_basic_secret", arg in
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
         match v_auto_key_rotation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_key_rotation", arg in
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
    : okta_app_oauth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_oauth

[@@@deriving.end]

let groups_claim ?filter_type ~name ~type_ ~value () : groups_claim =
  { filter_type; name; type_; value }

let jwks ?e ?n ?x ?y ~kid ~kty () : jwks = { e; kid; kty; n; x; y }

let timeouts ?create ?read ?update () : timeouts =
  { create; read; update }

let okta_app_oauth ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?app_settings_json
    ?authentication_policy ?auto_key_rotation ?auto_submit_toolbar
    ?client_basic_secret ?client_id ?client_uri ?consent_method
    ?enduser_note ?grant_types ?hide_ios ?hide_web ?id
    ?implicit_assignment ?issuer_mode ?jwks_uri ?login_mode
    ?login_scopes ?login_uri ?logo ?logo_uri ?omit_secret
    ?pkce_required ?policy_uri ?post_logout_redirect_uris ?profile
    ?redirect_uris ?refresh_token_leeway ?refresh_token_rotation
    ?response_types ?status ?token_endpoint_auth_method ?tos_uri
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?wildcard_redirect ?(jwks = []) ?timeouts ~label ~type_
    ~groups_claim () : okta_app_oauth =
  {
    accessibility_error_redirect_url;
    accessibility_login_redirect_url;
    accessibility_self_service;
    admin_note;
    app_links_json;
    app_settings_json;
    authentication_policy;
    auto_key_rotation;
    auto_submit_toolbar;
    client_basic_secret;
    client_id;
    client_uri;
    consent_method;
    enduser_note;
    grant_types;
    hide_ios;
    hide_web;
    id;
    implicit_assignment;
    issuer_mode;
    jwks_uri;
    label;
    login_mode;
    login_scopes;
    login_uri;
    logo;
    logo_uri;
    omit_secret;
    pkce_required;
    policy_uri;
    post_logout_redirect_uris;
    profile;
    redirect_uris;
    refresh_token_leeway;
    refresh_token_rotation;
    response_types;
    status;
    token_endpoint_auth_method;
    tos_uri;
    type_;
    user_name_template;
    user_name_template_push_status;
    user_name_template_suffix;
    user_name_template_type;
    wildcard_redirect;
    groups_claim;
    jwks;
    timeouts;
  }

type t = {
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

let make ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?app_settings_json
    ?authentication_policy ?auto_key_rotation ?auto_submit_toolbar
    ?client_basic_secret ?client_id ?client_uri ?consent_method
    ?enduser_note ?grant_types ?hide_ios ?hide_web ?id
    ?implicit_assignment ?issuer_mode ?jwks_uri ?login_mode
    ?login_scopes ?login_uri ?logo ?logo_uri ?omit_secret
    ?pkce_required ?policy_uri ?post_logout_redirect_uris ?profile
    ?redirect_uris ?refresh_token_leeway ?refresh_token_rotation
    ?response_types ?status ?token_endpoint_auth_method ?tos_uri
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?wildcard_redirect ?(jwks = []) ?timeouts ~label ~type_
    ~groups_claim __id =
  let __type = "okta_app_oauth" in
  let __attrs =
    ({
       tf_name = __id;
       accessibility_error_redirect_url =
         Prop.computed __type __id "accessibility_error_redirect_url";
       accessibility_login_redirect_url =
         Prop.computed __type __id "accessibility_login_redirect_url";
       accessibility_self_service =
         Prop.computed __type __id "accessibility_self_service";
       admin_note = Prop.computed __type __id "admin_note";
       app_links_json = Prop.computed __type __id "app_links_json";
       app_settings_json =
         Prop.computed __type __id "app_settings_json";
       authentication_policy =
         Prop.computed __type __id "authentication_policy";
       auto_key_rotation =
         Prop.computed __type __id "auto_key_rotation";
       auto_submit_toolbar =
         Prop.computed __type __id "auto_submit_toolbar";
       client_basic_secret =
         Prop.computed __type __id "client_basic_secret";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       client_uri = Prop.computed __type __id "client_uri";
       consent_method = Prop.computed __type __id "consent_method";
       enduser_note = Prop.computed __type __id "enduser_note";
       grant_types = Prop.computed __type __id "grant_types";
       hide_ios = Prop.computed __type __id "hide_ios";
       hide_web = Prop.computed __type __id "hide_web";
       id = Prop.computed __type __id "id";
       implicit_assignment =
         Prop.computed __type __id "implicit_assignment";
       issuer_mode = Prop.computed __type __id "issuer_mode";
       jwks_uri = Prop.computed __type __id "jwks_uri";
       label = Prop.computed __type __id "label";
       login_mode = Prop.computed __type __id "login_mode";
       login_scopes = Prop.computed __type __id "login_scopes";
       login_uri = Prop.computed __type __id "login_uri";
       logo = Prop.computed __type __id "logo";
       logo_uri = Prop.computed __type __id "logo_uri";
       logo_url = Prop.computed __type __id "logo_url";
       name = Prop.computed __type __id "name";
       omit_secret = Prop.computed __type __id "omit_secret";
       pkce_required = Prop.computed __type __id "pkce_required";
       policy_uri = Prop.computed __type __id "policy_uri";
       post_logout_redirect_uris =
         Prop.computed __type __id "post_logout_redirect_uris";
       profile = Prop.computed __type __id "profile";
       redirect_uris = Prop.computed __type __id "redirect_uris";
       refresh_token_leeway =
         Prop.computed __type __id "refresh_token_leeway";
       refresh_token_rotation =
         Prop.computed __type __id "refresh_token_rotation";
       response_types = Prop.computed __type __id "response_types";
       sign_on_mode = Prop.computed __type __id "sign_on_mode";
       status = Prop.computed __type __id "status";
       token_endpoint_auth_method =
         Prop.computed __type __id "token_endpoint_auth_method";
       tos_uri = Prop.computed __type __id "tos_uri";
       type_ = Prop.computed __type __id "type";
       user_name_template =
         Prop.computed __type __id "user_name_template";
       user_name_template_push_status =
         Prop.computed __type __id "user_name_template_push_status";
       user_name_template_suffix =
         Prop.computed __type __id "user_name_template_suffix";
       user_name_template_type =
         Prop.computed __type __id "user_name_template_type";
       wildcard_redirect =
         Prop.computed __type __id "wildcard_redirect";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_oauth
        (okta_app_oauth ?accessibility_error_redirect_url
           ?accessibility_login_redirect_url
           ?accessibility_self_service ?admin_note ?app_links_json
           ?app_settings_json ?authentication_policy
           ?auto_key_rotation ?auto_submit_toolbar
           ?client_basic_secret ?client_id ?client_uri
           ?consent_method ?enduser_note ?grant_types ?hide_ios
           ?hide_web ?id ?implicit_assignment ?issuer_mode ?jwks_uri
           ?login_mode ?login_scopes ?login_uri ?logo ?logo_uri
           ?omit_secret ?pkce_required ?policy_uri
           ?post_logout_redirect_uris ?profile ?redirect_uris
           ?refresh_token_leeway ?refresh_token_rotation
           ?response_types ?status ?token_endpoint_auth_method
           ?tos_uri ?user_name_template
           ?user_name_template_push_status ?user_name_template_suffix
           ?user_name_template_type ?wildcard_redirect ~jwks
           ?timeouts ~label ~type_ ~groups_claim ());
    attrs = __attrs;
  }

let register ?tf_module ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?app_settings_json
    ?authentication_policy ?auto_key_rotation ?auto_submit_toolbar
    ?client_basic_secret ?client_id ?client_uri ?consent_method
    ?enduser_note ?grant_types ?hide_ios ?hide_web ?id
    ?implicit_assignment ?issuer_mode ?jwks_uri ?login_mode
    ?login_scopes ?login_uri ?logo ?logo_uri ?omit_secret
    ?pkce_required ?policy_uri ?post_logout_redirect_uris ?profile
    ?redirect_uris ?refresh_token_leeway ?refresh_token_rotation
    ?response_types ?status ?token_endpoint_auth_method ?tos_uri
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?wildcard_redirect ?(jwks = []) ?timeouts ~label ~type_
    ~groups_claim __id =
  let (r : _ Tf_core.resource) =
    make ?accessibility_error_redirect_url
      ?accessibility_login_redirect_url ?accessibility_self_service
      ?admin_note ?app_links_json ?app_settings_json
      ?authentication_policy ?auto_key_rotation ?auto_submit_toolbar
      ?client_basic_secret ?client_id ?client_uri ?consent_method
      ?enduser_note ?grant_types ?hide_ios ?hide_web ?id
      ?implicit_assignment ?issuer_mode ?jwks_uri ?login_mode
      ?login_scopes ?login_uri ?logo ?logo_uri ?omit_secret
      ?pkce_required ?policy_uri ?post_logout_redirect_uris ?profile
      ?redirect_uris ?refresh_token_leeway ?refresh_token_rotation
      ?response_types ?status ?token_endpoint_auth_method ?tos_uri
      ?user_name_template ?user_name_template_push_status
      ?user_name_template_suffix ?user_name_template_type
      ?wildcard_redirect ~jwks ?timeouts ~label ~type_ ~groups_claim
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
