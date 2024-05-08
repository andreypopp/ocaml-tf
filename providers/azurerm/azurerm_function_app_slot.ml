(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_settings__active_directory = {
  allowed_audiences : string prop list option; [@option]
  client_id : string prop;
  client_secret : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__active_directory) -> ()

let yojson_of_auth_settings__active_directory =
  (function
   | {
       allowed_audiences = v_allowed_audiences;
       client_id = v_client_id;
       client_secret = v_client_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         match v_allowed_audiences with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_audiences", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_settings__active_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__active_directory

[@@@deriving.end]

type auth_settings__facebook = {
  app_id : string prop;
  app_secret : string prop;
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__facebook) -> ()

let yojson_of_auth_settings__facebook =
  (function
   | {
       app_id = v_app_id;
       app_secret = v_app_secret;
       oauth_scopes = v_oauth_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_secret in
         ("app_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__facebook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__facebook

[@@@deriving.end]

type auth_settings__google = {
  client_id : string prop;
  client_secret : string prop;
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__google) -> ()

let yojson_of_auth_settings__google =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       oauth_scopes = v_oauth_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__google -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__google

[@@@deriving.end]

type auth_settings__microsoft = {
  client_id : string prop;
  client_secret : string prop;
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__microsoft) -> ()

let yojson_of_auth_settings__microsoft =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       oauth_scopes = v_oauth_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__microsoft -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__microsoft

[@@@deriving.end]

type auth_settings__twitter = {
  consumer_key : string prop;
  consumer_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__twitter) -> ()

let yojson_of_auth_settings__twitter =
  (function
   | {
       consumer_key = v_consumer_key;
       consumer_secret = v_consumer_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consumer_secret
         in
         ("consumer_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_consumer_key in
         ("consumer_key", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__twitter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__twitter

[@@@deriving.end]

type auth_settings = {
  additional_login_params : (string * string prop) list option;
      [@option]
  allowed_external_redirect_urls : string prop list option; [@option]
  default_provider : string prop option; [@option]
  enabled : bool prop;
  issuer : string prop option; [@option]
  runtime_version : string prop option; [@option]
  token_refresh_extension_hours : float prop option; [@option]
  token_store_enabled : bool prop option; [@option]
  unauthenticated_client_action : string prop option; [@option]
  active_directory : auth_settings__active_directory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  facebook : auth_settings__facebook list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  google : auth_settings__google list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  microsoft : auth_settings__microsoft list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  twitter : auth_settings__twitter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings) -> ()

let yojson_of_auth_settings =
  (function
   | {
       additional_login_params = v_additional_login_params;
       allowed_external_redirect_urls =
         v_allowed_external_redirect_urls;
       default_provider = v_default_provider;
       enabled = v_enabled;
       issuer = v_issuer;
       runtime_version = v_runtime_version;
       token_refresh_extension_hours =
         v_token_refresh_extension_hours;
       token_store_enabled = v_token_store_enabled;
       unauthenticated_client_action =
         v_unauthenticated_client_action;
       active_directory = v_active_directory;
       facebook = v_facebook;
       google = v_google;
       microsoft = v_microsoft;
       twitter = v_twitter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_twitter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__twitter)
               v_twitter
           in
           let bnd = "twitter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_microsoft then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__microsoft)
               v_microsoft
           in
           let bnd = "microsoft", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_google then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__google)
               v_google
           in
           let bnd = "google", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_facebook then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__facebook)
               v_facebook
           in
           let bnd = "facebook", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_active_directory then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auth_settings__active_directory)
               v_active_directory
           in
           let bnd = "active_directory", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unauthenticated_client_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unauthenticated_client_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_store_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "token_store_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_refresh_extension_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "token_refresh_extension_hours", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_default_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_provider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_external_redirect_urls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_external_redirect_urls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_login_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "additional_login_params", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings

[@@@deriving.end]

type connection_string = {
  name : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_string) -> ()

let yojson_of_connection_string =
  (function
   | { name = v_name; type_ = v_type_; value = v_value } ->
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
       `Assoc bnds
    : connection_string -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_string

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type site_config__cors = {
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  support_credentials : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__cors) -> ()

let yojson_of_site_config__cors =
  (function
   | {
       allowed_origins = v_allowed_origins;
       support_credentials = v_support_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_support_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "support_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_origins
           in
           let bnd = "allowed_origins", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__cors

[@@@deriving.end]

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__ip_restriction__headers) -> ()

let yojson_of_site_config__ip_restriction__headers =
  (function
   | {
       x_azure_fdid = v_x_azure_fdid;
       x_fd_health_probe = v_x_fd_health_probe;
       x_forwarded_for = v_x_forwarded_for;
       x_forwarded_host = v_x_forwarded_host;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_host then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_host
           in
           let bnd = "x_forwarded_host", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_for then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_for
           in
           let bnd = "x_forwarded_for", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_fd_health_probe then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_fd_health_probe
           in
           let bnd = "x_fd_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_azure_fdid then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_azure_fdid
           in
           let bnd = "x_azure_fdid", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction__headers

[@@@deriving.end]

type site_config__ip_restriction = {
  action : string prop;
  headers : site_config__ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_address : string prop;
  name : string prop;
  priority : float prop;
  service_tag : string prop;
  virtual_network_subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__ip_restriction) -> ()

let yojson_of_site_config__ip_restriction =
  (function
   | {
       action = v_action;
       headers = v_headers;
       ip_address = v_ip_address;
       name = v_name;
       priority = v_priority;
       service_tag = v_service_tag;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_subnet_id
         in
         ("virtual_network_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_tag in
         ("service_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__ip_restriction__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction

[@@@deriving.end]

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__scm_ip_restriction__headers) -> ()

let yojson_of_site_config__scm_ip_restriction__headers =
  (function
   | {
       x_azure_fdid = v_x_azure_fdid;
       x_fd_health_probe = v_x_fd_health_probe;
       x_forwarded_for = v_x_forwarded_for;
       x_forwarded_host = v_x_forwarded_host;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_host then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_host
           in
           let bnd = "x_forwarded_host", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_forwarded_for then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_for
           in
           let bnd = "x_forwarded_for", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_fd_health_probe then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_fd_health_probe
           in
           let bnd = "x_fd_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_x_azure_fdid then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_azure_fdid
           in
           let bnd = "x_azure_fdid", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction__headers

[@@@deriving.end]

type site_config__scm_ip_restriction = {
  action : string prop;
  headers : site_config__scm_ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_address : string prop;
  name : string prop;
  priority : float prop;
  service_tag : string prop;
  virtual_network_subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__scm_ip_restriction) -> ()

let yojson_of_site_config__scm_ip_restriction =
  (function
   | {
       action = v_action;
       headers = v_headers;
       ip_address = v_ip_address;
       name = v_name;
       priority = v_priority;
       service_tag = v_service_tag;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_subnet_id
         in
         ("virtual_network_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_tag in
         ("service_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__scm_ip_restriction__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction

[@@@deriving.end]

type site_config = {
  always_on : bool prop option; [@option]
  app_scale_limit : float prop option; [@option]
  auto_swap_slot_name : string prop option; [@option]
  dotnet_framework_version : string prop option; [@option]
  elastic_instance_minimum : float prop option; [@option]
  ftps_state : string prop option; [@option]
  health_check_path : string prop option; [@option]
  http2_enabled : bool prop option; [@option]
  ip_restriction : site_config__ip_restriction list option; [@option]
  java_version : string prop option; [@option]
  linux_fx_version : string prop option; [@option]
  min_tls_version : string prop option; [@option]
  pre_warmed_instance_count : float prop option; [@option]
  runtime_scale_monitoring_enabled : bool prop option; [@option]
  scm_ip_restriction : site_config__scm_ip_restriction list option;
      [@option]
  scm_type : string prop option; [@option]
  scm_use_main_ip_restriction : bool prop option; [@option]
  use_32_bit_worker_process : bool prop option; [@option]
  vnet_route_all_enabled : bool prop option; [@option]
  websockets_enabled : bool prop option; [@option]
  cors : site_config__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config) -> ()

let yojson_of_site_config =
  (function
   | {
       always_on = v_always_on;
       app_scale_limit = v_app_scale_limit;
       auto_swap_slot_name = v_auto_swap_slot_name;
       dotnet_framework_version = v_dotnet_framework_version;
       elastic_instance_minimum = v_elastic_instance_minimum;
       ftps_state = v_ftps_state;
       health_check_path = v_health_check_path;
       http2_enabled = v_http2_enabled;
       ip_restriction = v_ip_restriction;
       java_version = v_java_version;
       linux_fx_version = v_linux_fx_version;
       min_tls_version = v_min_tls_version;
       pre_warmed_instance_count = v_pre_warmed_instance_count;
       runtime_scale_monitoring_enabled =
         v_runtime_scale_monitoring_enabled;
       scm_ip_restriction = v_scm_ip_restriction;
       scm_type = v_scm_type;
       scm_use_main_ip_restriction = v_scm_use_main_ip_restriction;
       use_32_bit_worker_process = v_use_32_bit_worker_process;
       vnet_route_all_enabled = v_vnet_route_all_enabled;
       websockets_enabled = v_websockets_enabled;
       cors = v_cors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__cors) v_cors
           in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         match v_websockets_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "websockets_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vnet_route_all_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vnet_route_all_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_32_bit_worker_process with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_32_bit_worker_process", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_use_main_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scm_use_main_ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scm_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_site_config__scm_ip_restriction v
             in
             let bnd = "scm_ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_scale_monitoring_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "runtime_scale_monitoring_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pre_warmed_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pre_warmed_instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_linux_fx_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "linux_fx_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_java_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "java_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_site_config__ip_restriction v
             in
             let bnd = "ip_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http2_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http2_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ftps_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ftps_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elastic_instance_minimum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "elastic_instance_minimum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dotnet_framework_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dotnet_framework_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_swap_slot_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_swap_slot_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_scale_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "app_scale_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_always_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_on", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type site_credential = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_credential) -> ()

let yojson_of_site_credential =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : site_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_credential

[@@@deriving.end]

type azurerm_function_app_slot = {
  app_service_plan_id : string prop;
  app_settings : (string * string prop) list option; [@option]
  daily_memory_time_quota : float prop option; [@option]
  enable_builtin_logging : bool prop option; [@option]
  enabled : bool prop option; [@option]
  function_app_name : string prop;
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  os_type : string prop option; [@option]
  resource_group_name : string prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  tags : (string * string prop) list option; [@option]
  version : string prop option; [@option]
  auth_settings : auth_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  connection_string : connection_string list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  site_config : site_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_function_app_slot) -> ()

let yojson_of_azurerm_function_app_slot =
  (function
   | {
       app_service_plan_id = v_app_service_plan_id;
       app_settings = v_app_settings;
       daily_memory_time_quota = v_daily_memory_time_quota;
       enable_builtin_logging = v_enable_builtin_logging;
       enabled = v_enabled;
       function_app_name = v_function_app_name;
       https_only = v_https_only;
       id = v_id;
       location = v_location;
       name = v_name;
       os_type = v_os_type;
       resource_group_name = v_resource_group_name;
       storage_account_access_key = v_storage_account_access_key;
       storage_account_name = v_storage_account_name;
       tags = v_tags;
       version = v_version;
       auth_settings = v_auth_settings;
       connection_string = v_connection_string;
       identity = v_identity;
       site_config = v_site_config;
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
         if Stdlib.( = ) [] v_site_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config) v_site_config
           in
           let bnd = "site_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_connection_string then bnds
         else
           let arg =
             (yojson_of_list yojson_of_connection_string)
               v_connection_string
           in
           let bnd = "connection_string", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auth_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings) v_auth_settings
           in
           let bnd = "auth_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_storage_account_access_key
         in
         ("storage_account_access_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_os_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_https_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_function_app_name
         in
         ("function_app_name", arg) :: bnds
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
         match v_enable_builtin_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_builtin_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_daily_memory_time_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "daily_memory_time_quota", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "app_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_service_plan_id
         in
         ("app_service_plan_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_function_app_slot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_function_app_slot

[@@@deriving.end]

let auth_settings__active_directory ?allowed_audiences ?client_secret
    ~client_id () : auth_settings__active_directory =
  { allowed_audiences; client_id; client_secret }

let auth_settings__facebook ?oauth_scopes ~app_id ~app_secret () :
    auth_settings__facebook =
  { app_id; app_secret; oauth_scopes }

let auth_settings__google ?oauth_scopes ~client_id ~client_secret ()
    : auth_settings__google =
  { client_id; client_secret; oauth_scopes }

let auth_settings__microsoft ?oauth_scopes ~client_id ~client_secret
    () : auth_settings__microsoft =
  { client_id; client_secret; oauth_scopes }

let auth_settings__twitter ~consumer_key ~consumer_secret () :
    auth_settings__twitter =
  { consumer_key; consumer_secret }

let auth_settings ?additional_login_params
    ?allowed_external_redirect_urls ?default_provider ?issuer
    ?runtime_version ?token_refresh_extension_hours
    ?token_store_enabled ?unauthenticated_client_action
    ?(active_directory = []) ?(facebook = []) ?(google = [])
    ?(microsoft = []) ?(twitter = []) ~enabled () : auth_settings =
  {
    additional_login_params;
    allowed_external_redirect_urls;
    default_provider;
    enabled;
    issuer;
    runtime_version;
    token_refresh_extension_hours;
    token_store_enabled;
    unauthenticated_client_action;
    active_directory;
    facebook;
    google;
    microsoft;
    twitter;
  }

let connection_string ~name ~type_ ~value () : connection_string =
  { name; type_; value }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let site_config__cors ?support_credentials ~allowed_origins () :
    site_config__cors =
  { allowed_origins; support_credentials }

let site_config ?always_on ?app_scale_limit ?auto_swap_slot_name
    ?dotnet_framework_version ?elastic_instance_minimum ?ftps_state
    ?health_check_path ?http2_enabled ?ip_restriction ?java_version
    ?linux_fx_version ?min_tls_version ?pre_warmed_instance_count
    ?runtime_scale_monitoring_enabled ?scm_ip_restriction ?scm_type
    ?scm_use_main_ip_restriction ?use_32_bit_worker_process
    ?vnet_route_all_enabled ?websockets_enabled ?(cors = []) () :
    site_config =
  {
    always_on;
    app_scale_limit;
    auto_swap_slot_name;
    dotnet_framework_version;
    elastic_instance_minimum;
    ftps_state;
    health_check_path;
    http2_enabled;
    ip_restriction;
    java_version;
    linux_fx_version;
    min_tls_version;
    pre_warmed_instance_count;
    runtime_scale_monitoring_enabled;
    scm_ip_restriction;
    scm_type;
    scm_use_main_ip_restriction;
    use_32_bit_worker_process;
    vnet_route_all_enabled;
    websockets_enabled;
    cors;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_function_app_slot ?app_settings ?daily_memory_time_quota
    ?enable_builtin_logging ?enabled ?https_only ?id ?os_type ?tags
    ?version ?(auth_settings = []) ?(identity = [])
    ?(site_config = []) ?timeouts ~app_service_plan_id
    ~function_app_name ~location ~name ~resource_group_name
    ~storage_account_access_key ~storage_account_name
    ~connection_string () : azurerm_function_app_slot =
  {
    app_service_plan_id;
    app_settings;
    daily_memory_time_quota;
    enable_builtin_logging;
    enabled;
    function_app_name;
    https_only;
    id;
    location;
    name;
    os_type;
    resource_group_name;
    storage_account_access_key;
    storage_account_name;
    tags;
    version;
    auth_settings;
    connection_string;
    identity;
    site_config;
    timeouts;
  }

type t = {
  tf_name : string;
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  daily_memory_time_quota : float prop;
  default_hostname : string prop;
  enable_builtin_logging : bool prop;
  enabled : bool prop;
  function_app_name : string prop;
  https_only : bool prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  os_type : string prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?app_settings ?daily_memory_time_quota
    ?enable_builtin_logging ?enabled ?https_only ?id ?os_type ?tags
    ?version ?(auth_settings = []) ?(identity = [])
    ?(site_config = []) ?timeouts ~app_service_plan_id
    ~function_app_name ~location ~name ~resource_group_name
    ~storage_account_access_key ~storage_account_name
    ~connection_string __id =
  let __type = "azurerm_function_app_slot" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_plan_id =
         Prop.computed __type __id "app_service_plan_id";
       app_settings = Prop.computed __type __id "app_settings";
       daily_memory_time_quota =
         Prop.computed __type __id "daily_memory_time_quota";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       enable_builtin_logging =
         Prop.computed __type __id "enable_builtin_logging";
       enabled = Prop.computed __type __id "enabled";
       function_app_name =
         Prop.computed __type __id "function_app_name";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       os_type = Prop.computed __type __id "os_type";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       possible_outbound_ip_addresses =
         Prop.computed __type __id "possible_outbound_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       site_credential = Prop.computed __type __id "site_credential";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_function_app_slot
        (azurerm_function_app_slot ?app_settings
           ?daily_memory_time_quota ?enable_builtin_logging ?enabled
           ?https_only ?id ?os_type ?tags ?version ~auth_settings
           ~identity ~site_config ?timeouts ~app_service_plan_id
           ~function_app_name ~location ~name ~resource_group_name
           ~storage_account_access_key ~storage_account_name
           ~connection_string ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?daily_memory_time_quota
    ?enable_builtin_logging ?enabled ?https_only ?id ?os_type ?tags
    ?version ?(auth_settings = []) ?(identity = [])
    ?(site_config = []) ?timeouts ~app_service_plan_id
    ~function_app_name ~location ~name ~resource_group_name
    ~storage_account_access_key ~storage_account_name
    ~connection_string __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?daily_memory_time_quota
      ?enable_builtin_logging ?enabled ?https_only ?id ?os_type ?tags
      ?version ~auth_settings ~identity ~site_config ?timeouts
      ~app_service_plan_id ~function_app_name ~location ~name
      ~resource_group_name ~storage_account_access_key
      ~storage_account_name ~connection_string __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
