(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_headers = {
  allow_all_headers : bool prop option; [@option]
  allow_all_methods : bool prop option; [@option]
  allow_all_origins : bool prop option; [@option]
  allow_credentials : bool prop option; [@option]
  allowed_headers : string prop list option; [@option]
  allowed_methods : string prop list option; [@option]
  allowed_origins : string prop list option; [@option]
  max_age : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_headers) -> ()

let yojson_of_cors_headers =
  (function
   | {
       allow_all_headers = v_allow_all_headers;
       allow_all_methods = v_allow_all_methods;
       allow_all_origins = v_allow_all_origins;
       allow_credentials = v_allow_credentials;
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors_headers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_headers

[@@@deriving.end]

type footer_links = {
  name : string prop option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : footer_links) -> ()

let yojson_of_footer_links =
  (function
   | { name = v_name; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : footer_links -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_footer_links

[@@@deriving.end]

type landing_page_design = {
  button_color : string prop option; [@option]
  button_text_color : string prop option; [@option]
  image_url : string prop option; [@option]
  message : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : landing_page_design) -> ()

let yojson_of_landing_page_design =
  (function
   | {
       button_color = v_button_color;
       button_text_color = v_button_text_color;
       image_url = v_image_url;
       message = v_message;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_button_text_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "button_text_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_button_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "button_color", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : landing_page_design -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_landing_page_design

[@@@deriving.end]

type saas_app__custom_attribute__source = {
  name : string prop;
  name_by_idp : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app__custom_attribute__source) -> ()

let yojson_of_saas_app__custom_attribute__source =
  (function
   | { name = v_name; name_by_idp = v_name_by_idp } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name_by_idp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "name_by_idp", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : saas_app__custom_attribute__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app__custom_attribute__source

[@@@deriving.end]

type saas_app__custom_attribute = {
  friendly_name : string prop option; [@option]
  name : string prop option; [@option]
  name_format : string prop option; [@option]
  required : bool prop option; [@option]
  source : saas_app__custom_attribute__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app__custom_attribute) -> ()

let yojson_of_saas_app__custom_attribute =
  (function
   | {
       friendly_name = v_friendly_name;
       name = v_name;
       name_format = v_name_format;
       required = v_required;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_saas_app__custom_attribute__source)
               v_source
           in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : saas_app__custom_attribute -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app__custom_attribute

[@@@deriving.end]

type saas_app__custom_claim__source = {
  name : string prop;
  name_by_idp : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app__custom_claim__source) -> ()

let yojson_of_saas_app__custom_claim__source =
  (function
   | { name = v_name; name_by_idp = v_name_by_idp } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name_by_idp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "name_by_idp", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : saas_app__custom_claim__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app__custom_claim__source

[@@@deriving.end]

type saas_app__custom_claim = {
  name : string prop option; [@option]
  required : bool prop option; [@option]
  scope : string prop option; [@option]
  source : saas_app__custom_claim__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app__custom_claim) -> ()

let yojson_of_saas_app__custom_claim =
  (function
   | {
       name = v_name;
       required = v_required;
       scope = v_scope;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_saas_app__custom_claim__source)
               v_source
           in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : saas_app__custom_claim -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app__custom_claim

[@@@deriving.end]

type saas_app__hybrid_and_implicit_options = {
  return_access_token_from_authorization_endpoint : bool prop option;
      [@option]
  return_id_token_from_authorization_endpoint : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app__hybrid_and_implicit_options) -> ()

let yojson_of_saas_app__hybrid_and_implicit_options =
  (function
   | {
       return_access_token_from_authorization_endpoint =
         v_return_access_token_from_authorization_endpoint;
       return_id_token_from_authorization_endpoint =
         v_return_id_token_from_authorization_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_return_id_token_from_authorization_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "return_id_token_from_authorization_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_return_access_token_from_authorization_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "return_access_token_from_authorization_endpoint", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : saas_app__hybrid_and_implicit_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app__hybrid_and_implicit_options

[@@@deriving.end]

type saas_app__refresh_token_options = {
  lifetime : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app__refresh_token_options) -> ()

let yojson_of_saas_app__refresh_token_options =
  (function
   | { lifetime = v_lifetime } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lifetime", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : saas_app__refresh_token_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app__refresh_token_options

[@@@deriving.end]

type saas_app = {
  access_token_lifetime : string prop option; [@option]
  allow_pkce_without_client_secret : bool prop option; [@option]
  app_launcher_url : string prop option; [@option]
  auth_type : string prop option; [@option]
  consumer_service_url : string prop option; [@option]
  default_relay_state : string prop option; [@option]
  grant_types : string prop list option; [@option]
  group_filter_regex : string prop option; [@option]
  name_id_format : string prop option; [@option]
  name_id_transform_jsonata : string prop option; [@option]
  redirect_uris : string prop list option; [@option]
  saml_attribute_transform_jsonata : string prop option; [@option]
  scopes : string prop list option; [@option]
  sp_entity_id : string prop option; [@option]
  custom_attribute : saas_app__custom_attribute list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_claim : saas_app__custom_claim list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hybrid_and_implicit_options :
    saas_app__hybrid_and_implicit_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  refresh_token_options : saas_app__refresh_token_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app) -> ()

let yojson_of_saas_app =
  (function
   | {
       access_token_lifetime = v_access_token_lifetime;
       allow_pkce_without_client_secret =
         v_allow_pkce_without_client_secret;
       app_launcher_url = v_app_launcher_url;
       auth_type = v_auth_type;
       consumer_service_url = v_consumer_service_url;
       default_relay_state = v_default_relay_state;
       grant_types = v_grant_types;
       group_filter_regex = v_group_filter_regex;
       name_id_format = v_name_id_format;
       name_id_transform_jsonata = v_name_id_transform_jsonata;
       redirect_uris = v_redirect_uris;
       saml_attribute_transform_jsonata =
         v_saml_attribute_transform_jsonata;
       scopes = v_scopes;
       sp_entity_id = v_sp_entity_id;
       custom_attribute = v_custom_attribute;
       custom_claim = v_custom_claim;
       hybrid_and_implicit_options = v_hybrid_and_implicit_options;
       refresh_token_options = v_refresh_token_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_refresh_token_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_saas_app__refresh_token_options)
               v_refresh_token_options
           in
           let bnd = "refresh_token_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hybrid_and_implicit_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_saas_app__hybrid_and_implicit_options)
               v_hybrid_and_implicit_options
           in
           let bnd = "hybrid_and_implicit_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_claim then bnds
         else
           let arg =
             (yojson_of_list yojson_of_saas_app__custom_claim)
               v_custom_claim
           in
           let bnd = "custom_claim", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_attribute then bnds
         else
           let arg =
             (yojson_of_list yojson_of_saas_app__custom_attribute)
               v_custom_attribute
           in
           let bnd = "custom_attribute", arg in
           bnd :: bnds
       in
       let bnds =
         match v_sp_entity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sp_entity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_saml_attribute_transform_jsonata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "saml_attribute_transform_jsonata", arg in
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
         match v_name_id_transform_jsonata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_id_transform_jsonata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_id_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_id_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_filter_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_filter_regex", arg in
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
         match v_default_relay_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_relay_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consumer_service_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_service_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_launcher_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_launcher_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_pkce_without_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_pkce_without_client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token_lifetime", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : saas_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app

[@@@deriving.end]

type scim_config__authentication = {
  authorization_url : string prop option; [@option]
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  password : string prop option; [@option]
  scheme : string prop;
  scopes : string prop list option; [@option]
  token : string prop option; [@option]
  token_url : string prop option; [@option]
  user : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scim_config__authentication) -> ()

let yojson_of_scim_config__authentication =
  (function
   | {
       authorization_url = v_authorization_url;
       client_id = v_client_id;
       client_secret = v_client_secret;
       password = v_password;
       scheme = v_scheme;
       scopes = v_scopes;
       token = v_token;
       token_url = v_token_url;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
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
         match v_authorization_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scim_config__authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scim_config__authentication

[@@@deriving.end]

type scim_config__mappings__operations = {
  create : bool prop option; [@option]
  delete : bool prop option; [@option]
  update : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scim_config__mappings__operations) -> ()

let yojson_of_scim_config__mappings__operations =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scim_config__mappings__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scim_config__mappings__operations

[@@@deriving.end]

type scim_config__mappings = {
  enabled : bool prop option; [@option]
  filter : string prop option; [@option]
  schema : string prop;
  transform_jsonata : string prop option; [@option]
  operations : scim_config__mappings__operations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scim_config__mappings) -> ()

let yojson_of_scim_config__mappings =
  (function
   | {
       enabled = v_enabled;
       filter = v_filter;
       schema = v_schema;
       transform_jsonata = v_transform_jsonata;
       operations = v_operations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_operations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_scim_config__mappings__operations)
               v_operations
           in
           let bnd = "operations", arg in
           bnd :: bnds
       in
       let bnds =
         match v_transform_jsonata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transform_jsonata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scim_config__mappings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scim_config__mappings

[@@@deriving.end]

type scim_config = {
  deactivate_on_delete : bool prop option; [@option]
  enabled : bool prop option; [@option]
  idp_uid : string prop;
  remote_uri : string prop;
  authentication : scim_config__authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mappings : scim_config__mappings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scim_config) -> ()

let yojson_of_scim_config =
  (function
   | {
       deactivate_on_delete = v_deactivate_on_delete;
       enabled = v_enabled;
       idp_uid = v_idp_uid;
       remote_uri = v_remote_uri;
       authentication = v_authentication;
       mappings = v_mappings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mappings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scim_config__mappings)
               v_mappings
           in
           let bnd = "mappings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scim_config__authentication)
               v_authentication
           in
           let bnd = "authentication", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_remote_uri in
         ("remote_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_idp_uid in
         ("idp_uid", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deactivate_on_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deactivate_on_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scim_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scim_config

[@@@deriving.end]

type cloudflare_access_application = {
  account_id : string prop option; [@option]
  allow_authenticate_via_warp : bool prop option; [@option]
  allowed_idps : string prop list option; [@option]
  app_launcher_logo_url : string prop option; [@option]
  app_launcher_visible : bool prop option; [@option]
  auto_redirect_to_identity : bool prop option; [@option]
  bg_color : string prop option; [@option]
  custom_deny_message : string prop option; [@option]
  custom_deny_url : string prop option; [@option]
  custom_non_identity_deny_url : string prop option; [@option]
  custom_pages : string prop list option; [@option]
  domain : string prop option; [@option]
  enable_binding_cookie : bool prop option; [@option]
  header_bg_color : string prop option; [@option]
  http_only_cookie_attribute : bool prop option; [@option]
  id : string prop option; [@option]
  logo_url : string prop option; [@option]
  name : string prop option; [@option]
  options_preflight_bypass : bool prop option; [@option]
  policies : string prop list option; [@option]
  same_site_cookie_attribute : string prop option; [@option]
  self_hosted_domains : string prop list option; [@option]
  service_auth_401_redirect : bool prop option; [@option]
  session_duration : string prop option; [@option]
  skip_interstitial : bool prop option; [@option]
  tags : string prop list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  zone_id : string prop option; [@option]
  cors_headers : cors_headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  footer_links : footer_links list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  landing_page_design : landing_page_design list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  saas_app : saas_app list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scim_config : scim_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_application) -> ()

let yojson_of_cloudflare_access_application =
  (function
   | {
       account_id = v_account_id;
       allow_authenticate_via_warp = v_allow_authenticate_via_warp;
       allowed_idps = v_allowed_idps;
       app_launcher_logo_url = v_app_launcher_logo_url;
       app_launcher_visible = v_app_launcher_visible;
       auto_redirect_to_identity = v_auto_redirect_to_identity;
       bg_color = v_bg_color;
       custom_deny_message = v_custom_deny_message;
       custom_deny_url = v_custom_deny_url;
       custom_non_identity_deny_url = v_custom_non_identity_deny_url;
       custom_pages = v_custom_pages;
       domain = v_domain;
       enable_binding_cookie = v_enable_binding_cookie;
       header_bg_color = v_header_bg_color;
       http_only_cookie_attribute = v_http_only_cookie_attribute;
       id = v_id;
       logo_url = v_logo_url;
       name = v_name;
       options_preflight_bypass = v_options_preflight_bypass;
       policies = v_policies;
       same_site_cookie_attribute = v_same_site_cookie_attribute;
       self_hosted_domains = v_self_hosted_domains;
       service_auth_401_redirect = v_service_auth_401_redirect;
       session_duration = v_session_duration;
       skip_interstitial = v_skip_interstitial;
       tags = v_tags;
       type_ = v_type_;
       zone_id = v_zone_id;
       cors_headers = v_cors_headers;
       footer_links = v_footer_links;
       landing_page_design = v_landing_page_design;
       saas_app = v_saas_app;
       scim_config = v_scim_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scim_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scim_config) v_scim_config
           in
           let bnd = "scim_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_saas_app then bnds
         else
           let arg =
             (yojson_of_list yojson_of_saas_app) v_saas_app
           in
           let bnd = "saas_app", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_landing_page_design then bnds
         else
           let arg =
             (yojson_of_list yojson_of_landing_page_design)
               v_landing_page_design
           in
           let bnd = "landing_page_design", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_footer_links then bnds
         else
           let arg =
             (yojson_of_list yojson_of_footer_links) v_footer_links
           in
           let bnd = "footer_links", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors_headers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cors_headers) v_cors_headers
           in
           let bnd = "cors_headers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_interstitial with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_interstitial", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_auth_401_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "service_auth_401_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_self_hosted_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "self_hosted_domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_same_site_cookie_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "same_site_cookie_attribute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "policies", arg in
             bnd :: bnds
       in
       let bnds =
         match v_options_preflight_bypass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "options_preflight_bypass", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo_url", arg in
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
         match v_http_only_cookie_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http_only_cookie_attribute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_bg_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_bg_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_binding_cookie with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_binding_cookie", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_pages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_pages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_non_identity_deny_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_non_identity_deny_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_deny_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_deny_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_deny_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_deny_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bg_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bg_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_redirect_to_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_redirect_to_identity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_launcher_visible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "app_launcher_visible", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_launcher_logo_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_launcher_logo_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_idps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_idps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_authenticate_via_warp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_authenticate_via_warp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_access_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_application

[@@@deriving.end]

let cors_headers ?allow_all_headers ?allow_all_methods
    ?allow_all_origins ?allow_credentials ?allowed_headers
    ?allowed_methods ?allowed_origins ?max_age () : cors_headers =
  {
    allow_all_headers;
    allow_all_methods;
    allow_all_origins;
    allow_credentials;
    allowed_headers;
    allowed_methods;
    allowed_origins;
    max_age;
  }

let footer_links ?name ?url () : footer_links = { name; url }

let landing_page_design ?button_color ?button_text_color ?image_url
    ?message ?title () : landing_page_design =
  { button_color; button_text_color; image_url; message; title }

let saas_app__custom_attribute__source ?name_by_idp ~name () :
    saas_app__custom_attribute__source =
  { name; name_by_idp }

let saas_app__custom_attribute ?friendly_name ?name ?name_format
    ?required ~source () : saas_app__custom_attribute =
  { friendly_name; name; name_format; required; source }

let saas_app__custom_claim__source ?name_by_idp ~name () :
    saas_app__custom_claim__source =
  { name; name_by_idp }

let saas_app__custom_claim ?name ?required ?scope ~source () :
    saas_app__custom_claim =
  { name; required; scope; source }

let saas_app__hybrid_and_implicit_options
    ?return_access_token_from_authorization_endpoint
    ?return_id_token_from_authorization_endpoint () :
    saas_app__hybrid_and_implicit_options =
  {
    return_access_token_from_authorization_endpoint;
    return_id_token_from_authorization_endpoint;
  }

let saas_app__refresh_token_options ?lifetime () :
    saas_app__refresh_token_options =
  { lifetime }

let saas_app ?access_token_lifetime ?allow_pkce_without_client_secret
    ?app_launcher_url ?auth_type ?consumer_service_url
    ?default_relay_state ?grant_types ?group_filter_regex
    ?name_id_format ?name_id_transform_jsonata ?redirect_uris
    ?saml_attribute_transform_jsonata ?scopes ?sp_entity_id
    ?(custom_attribute = []) ?(custom_claim = [])
    ?(hybrid_and_implicit_options = []) ?(refresh_token_options = [])
    () : saas_app =
  {
    access_token_lifetime;
    allow_pkce_without_client_secret;
    app_launcher_url;
    auth_type;
    consumer_service_url;
    default_relay_state;
    grant_types;
    group_filter_regex;
    name_id_format;
    name_id_transform_jsonata;
    redirect_uris;
    saml_attribute_transform_jsonata;
    scopes;
    sp_entity_id;
    custom_attribute;
    custom_claim;
    hybrid_and_implicit_options;
    refresh_token_options;
  }

let scim_config__authentication ?authorization_url ?client_id
    ?client_secret ?password ?scopes ?token ?token_url ?user ~scheme
    () : scim_config__authentication =
  {
    authorization_url;
    client_id;
    client_secret;
    password;
    scheme;
    scopes;
    token;
    token_url;
    user;
  }

let scim_config__mappings__operations ?create ?delete ?update () :
    scim_config__mappings__operations =
  { create; delete; update }

let scim_config__mappings ?enabled ?filter ?transform_jsonata
    ?(operations = []) ~schema () : scim_config__mappings =
  { enabled; filter; schema; transform_jsonata; operations }

let scim_config ?deactivate_on_delete ?enabled ?(authentication = [])
    ?(mappings = []) ~idp_uid ~remote_uri () : scim_config =
  {
    deactivate_on_delete;
    enabled;
    idp_uid;
    remote_uri;
    authentication;
    mappings;
  }

let cloudflare_access_application ?account_id
    ?allow_authenticate_via_warp ?allowed_idps ?app_launcher_logo_url
    ?app_launcher_visible ?auto_redirect_to_identity ?bg_color
    ?custom_deny_message ?custom_deny_url
    ?custom_non_identity_deny_url ?custom_pages ?domain
    ?enable_binding_cookie ?header_bg_color
    ?http_only_cookie_attribute ?id ?logo_url ?name
    ?options_preflight_bypass ?policies ?same_site_cookie_attribute
    ?self_hosted_domains ?service_auth_401_redirect ?session_duration
    ?skip_interstitial ?tags ?type_ ?zone_id ?(cors_headers = [])
    ?(landing_page_design = []) ?(saas_app = []) ?(scim_config = [])
    ~footer_links () : cloudflare_access_application =
  {
    account_id;
    allow_authenticate_via_warp;
    allowed_idps;
    app_launcher_logo_url;
    app_launcher_visible;
    auto_redirect_to_identity;
    bg_color;
    custom_deny_message;
    custom_deny_url;
    custom_non_identity_deny_url;
    custom_pages;
    domain;
    enable_binding_cookie;
    header_bg_color;
    http_only_cookie_attribute;
    id;
    logo_url;
    name;
    options_preflight_bypass;
    policies;
    same_site_cookie_attribute;
    self_hosted_domains;
    service_auth_401_redirect;
    session_duration;
    skip_interstitial;
    tags;
    type_;
    zone_id;
    cors_headers;
    footer_links;
    landing_page_design;
    saas_app;
    scim_config;
  }

type t = {
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

let make ?account_id ?allow_authenticate_via_warp ?allowed_idps
    ?app_launcher_logo_url ?app_launcher_visible
    ?auto_redirect_to_identity ?bg_color ?custom_deny_message
    ?custom_deny_url ?custom_non_identity_deny_url ?custom_pages
    ?domain ?enable_binding_cookie ?header_bg_color
    ?http_only_cookie_attribute ?id ?logo_url ?name
    ?options_preflight_bypass ?policies ?same_site_cookie_attribute
    ?self_hosted_domains ?service_auth_401_redirect ?session_duration
    ?skip_interstitial ?tags ?type_ ?zone_id ?(cors_headers = [])
    ?(landing_page_design = []) ?(saas_app = []) ?(scim_config = [])
    ~footer_links __id =
  let __type = "cloudflare_access_application" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       allow_authenticate_via_warp =
         Prop.computed __type __id "allow_authenticate_via_warp";
       allowed_idps = Prop.computed __type __id "allowed_idps";
       app_launcher_logo_url =
         Prop.computed __type __id "app_launcher_logo_url";
       app_launcher_visible =
         Prop.computed __type __id "app_launcher_visible";
       aud = Prop.computed __type __id "aud";
       auto_redirect_to_identity =
         Prop.computed __type __id "auto_redirect_to_identity";
       bg_color = Prop.computed __type __id "bg_color";
       custom_deny_message =
         Prop.computed __type __id "custom_deny_message";
       custom_deny_url = Prop.computed __type __id "custom_deny_url";
       custom_non_identity_deny_url =
         Prop.computed __type __id "custom_non_identity_deny_url";
       custom_pages = Prop.computed __type __id "custom_pages";
       domain = Prop.computed __type __id "domain";
       enable_binding_cookie =
         Prop.computed __type __id "enable_binding_cookie";
       header_bg_color = Prop.computed __type __id "header_bg_color";
       http_only_cookie_attribute =
         Prop.computed __type __id "http_only_cookie_attribute";
       id = Prop.computed __type __id "id";
       logo_url = Prop.computed __type __id "logo_url";
       name = Prop.computed __type __id "name";
       options_preflight_bypass =
         Prop.computed __type __id "options_preflight_bypass";
       policies = Prop.computed __type __id "policies";
       same_site_cookie_attribute =
         Prop.computed __type __id "same_site_cookie_attribute";
       self_hosted_domains =
         Prop.computed __type __id "self_hosted_domains";
       service_auth_401_redirect =
         Prop.computed __type __id "service_auth_401_redirect";
       session_duration =
         Prop.computed __type __id "session_duration";
       skip_interstitial =
         Prop.computed __type __id "skip_interstitial";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_application
        (cloudflare_access_application ?account_id
           ?allow_authenticate_via_warp ?allowed_idps
           ?app_launcher_logo_url ?app_launcher_visible
           ?auto_redirect_to_identity ?bg_color ?custom_deny_message
           ?custom_deny_url ?custom_non_identity_deny_url
           ?custom_pages ?domain ?enable_binding_cookie
           ?header_bg_color ?http_only_cookie_attribute ?id ?logo_url
           ?name ?options_preflight_bypass ?policies
           ?same_site_cookie_attribute ?self_hosted_domains
           ?service_auth_401_redirect ?session_duration
           ?skip_interstitial ?tags ?type_ ?zone_id ~cors_headers
           ~landing_page_design ~saas_app ~scim_config ~footer_links
           ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?allow_authenticate_via_warp
    ?allowed_idps ?app_launcher_logo_url ?app_launcher_visible
    ?auto_redirect_to_identity ?bg_color ?custom_deny_message
    ?custom_deny_url ?custom_non_identity_deny_url ?custom_pages
    ?domain ?enable_binding_cookie ?header_bg_color
    ?http_only_cookie_attribute ?id ?logo_url ?name
    ?options_preflight_bypass ?policies ?same_site_cookie_attribute
    ?self_hosted_domains ?service_auth_401_redirect ?session_duration
    ?skip_interstitial ?tags ?type_ ?zone_id ?(cors_headers = [])
    ?(landing_page_design = []) ?(saas_app = []) ?(scim_config = [])
    ~footer_links __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?allow_authenticate_via_warp ?allowed_idps
      ?app_launcher_logo_url ?app_launcher_visible
      ?auto_redirect_to_identity ?bg_color ?custom_deny_message
      ?custom_deny_url ?custom_non_identity_deny_url ?custom_pages
      ?domain ?enable_binding_cookie ?header_bg_color
      ?http_only_cookie_attribute ?id ?logo_url ?name
      ?options_preflight_bypass ?policies ?same_site_cookie_attribute
      ?self_hosted_domains ?service_auth_401_redirect
      ?session_duration ?skip_interstitial ?tags ?type_ ?zone_id
      ~cors_headers ~landing_page_design ~saas_app ~scim_config
      ~footer_links __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
