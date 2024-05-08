(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_settings__active_directory = {
  allowed_audiences : string prop list option; [@option]
  client_id : string prop;
  client_secret : string prop option; [@option]
  client_secret_setting_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__active_directory) -> ()

let yojson_of_auth_settings__active_directory =
  (function
   | {
       allowed_audiences = v_allowed_audiences;
       client_id = v_client_id;
       client_secret = v_client_secret;
       client_secret_setting_name = v_client_secret_setting_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_client_secret_setting_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret_setting_name", arg in
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
  app_secret : string prop option; [@option]
  app_secret_setting_name : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__facebook) -> ()

let yojson_of_auth_settings__facebook =
  (function
   | {
       app_id = v_app_id;
       app_secret = v_app_secret;
       app_secret_setting_name = v_app_secret_setting_name;
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
         match v_app_secret_setting_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_secret_setting_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_secret", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__facebook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__facebook

[@@@deriving.end]

type auth_settings__github = {
  client_id : string prop;
  client_secret : string prop option; [@option]
  client_secret_setting_name : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__github) -> ()

let yojson_of_auth_settings__github =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       client_secret_setting_name = v_client_secret_setting_name;
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
         match v_client_secret_setting_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret_setting_name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__github

[@@@deriving.end]

type auth_settings__google = {
  client_id : string prop;
  client_secret : string prop option; [@option]
  client_secret_setting_name : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__google) -> ()

let yojson_of_auth_settings__google =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       client_secret_setting_name = v_client_secret_setting_name;
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
         match v_client_secret_setting_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret_setting_name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__google -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__google

[@@@deriving.end]

type auth_settings__microsoft = {
  client_id : string prop;
  client_secret : string prop option; [@option]
  client_secret_setting_name : string prop option; [@option]
  oauth_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__microsoft) -> ()

let yojson_of_auth_settings__microsoft =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       client_secret_setting_name = v_client_secret_setting_name;
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
         match v_client_secret_setting_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret_setting_name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__microsoft -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__microsoft

[@@@deriving.end]

type auth_settings__twitter = {
  consumer_key : string prop;
  consumer_secret : string prop option; [@option]
  consumer_secret_setting_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings__twitter) -> ()

let yojson_of_auth_settings__twitter =
  (function
   | {
       consumer_key = v_consumer_key;
       consumer_secret = v_consumer_secret;
       consumer_secret_setting_name = v_consumer_secret_setting_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_consumer_secret_setting_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_secret_setting_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consumer_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_secret", arg in
             bnd :: bnds
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
  additional_login_parameters : (string * string prop) list option;
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
      [@default []] [@yojson_drop_default ( = )]
  facebook : auth_settings__facebook list;
      [@default []] [@yojson_drop_default ( = )]
  github : auth_settings__github list;
      [@default []] [@yojson_drop_default ( = )]
  google : auth_settings__google list;
      [@default []] [@yojson_drop_default ( = )]
  microsoft : auth_settings__microsoft list;
      [@default []] [@yojson_drop_default ( = )]
  twitter : auth_settings__twitter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings) -> ()

let yojson_of_auth_settings =
  (function
   | {
       additional_login_parameters = v_additional_login_parameters;
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
       github = v_github;
       google = v_google;
       microsoft = v_microsoft;
       twitter = v_twitter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_twitter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__twitter)
               v_twitter
           in
           let bnd = "twitter", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_microsoft then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__microsoft)
               v_microsoft
           in
           let bnd = "microsoft", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_google then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__google)
               v_google
           in
           let bnd = "google", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__github)
               v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_facebook then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__facebook)
               v_facebook
           in
           let bnd = "facebook", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_active_directory then bnds
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
         match v_additional_login_parameters with
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
             let bnd = "additional_login_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings

[@@@deriving.end]

type auth_settings_v2__active_directory_v2 = {
  allowed_applications : string prop list option; [@option]
  allowed_audiences : string prop list option; [@option]
  allowed_groups : string prop list option; [@option]
  allowed_identities : string prop list option; [@option]
  client_id : string prop;
  client_secret_certificate_thumbprint : string prop option;
      [@option]
  client_secret_setting_name : string prop option; [@option]
  jwt_allowed_client_applications : string prop list option;
      [@option]
  jwt_allowed_groups : string prop list option; [@option]
  login_parameters : (string * string prop) list option; [@option]
  tenant_auth_endpoint : string prop;
  www_authentication_disabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__active_directory_v2) -> ()

let yojson_of_auth_settings_v2__active_directory_v2 =
  (function
   | {
       allowed_applications = v_allowed_applications;
       allowed_audiences = v_allowed_audiences;
       allowed_groups = v_allowed_groups;
       allowed_identities = v_allowed_identities;
       client_id = v_client_id;
       client_secret_certificate_thumbprint =
         v_client_secret_certificate_thumbprint;
       client_secret_setting_name = v_client_secret_setting_name;
       jwt_allowed_client_applications =
         v_jwt_allowed_client_applications;
       jwt_allowed_groups = v_jwt_allowed_groups;
       login_parameters = v_login_parameters;
       tenant_auth_endpoint = v_tenant_auth_endpoint;
       www_authentication_disabled = v_www_authentication_disabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_www_authentication_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "www_authentication_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_tenant_auth_endpoint
         in
         ("tenant_auth_endpoint", arg) :: bnds
       in
       let bnds =
         match v_login_parameters with
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
             let bnd = "login_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jwt_allowed_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jwt_allowed_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jwt_allowed_client_applications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jwt_allowed_client_applications", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret_setting_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret_setting_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret_certificate_thumbprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret_certificate_thumbprint", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         match v_allowed_identities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_identities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_groups", arg in
             bnd :: bnds
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
       let bnds =
         match v_allowed_applications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_applications", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__active_directory_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__active_directory_v2

[@@@deriving.end]

type auth_settings_v2__apple_v2 = {
  client_id : string prop;
  client_secret_setting_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__apple_v2) -> ()

let yojson_of_auth_settings_v2__apple_v2 =
  (function
   | {
       client_id = v_client_id;
       client_secret_setting_name = v_client_secret_setting_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__apple_v2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__apple_v2

[@@@deriving.end]

type auth_settings_v2__azure_static_web_app_v2 = {
  client_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__azure_static_web_app_v2) -> ()

let yojson_of_auth_settings_v2__azure_static_web_app_v2 =
  (function
   | { client_id = v_client_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__azure_static_web_app_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__azure_static_web_app_v2

[@@@deriving.end]

type auth_settings_v2__custom_oidc_v2 = {
  client_id : string prop;
  name : string prop;
  name_claim_type : string prop option; [@option]
  openid_configuration_endpoint : string prop;
  scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__custom_oidc_v2) -> ()

let yojson_of_auth_settings_v2__custom_oidc_v2 =
  (function
   | {
       client_id = v_client_id;
       name = v_name;
       name_claim_type = v_name_claim_type;
       openid_configuration_endpoint =
         v_openid_configuration_endpoint;
       scopes = v_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string
             v_openid_configuration_endpoint
         in
         ("openid_configuration_endpoint", arg) :: bnds
       in
       let bnds =
         match v_name_claim_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_claim_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__custom_oidc_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__custom_oidc_v2

[@@@deriving.end]

type auth_settings_v2__facebook_v2 = {
  app_id : string prop;
  app_secret_setting_name : string prop;
  graph_api_version : string prop option; [@option]
  login_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__facebook_v2) -> ()

let yojson_of_auth_settings_v2__facebook_v2 =
  (function
   | {
       app_id = v_app_id;
       app_secret_setting_name = v_app_secret_setting_name;
       graph_api_version = v_graph_api_version;
       login_scopes = v_login_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_graph_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "graph_api_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_secret_setting_name
         in
         ("app_secret_setting_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__facebook_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__facebook_v2

[@@@deriving.end]

type auth_settings_v2__github_v2 = {
  client_id : string prop;
  client_secret_setting_name : string prop;
  login_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__github_v2) -> ()

let yojson_of_auth_settings_v2__github_v2 =
  (function
   | {
       client_id = v_client_id;
       client_secret_setting_name = v_client_secret_setting_name;
       login_scopes = v_login_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__github_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__github_v2

[@@@deriving.end]

type auth_settings_v2__google_v2 = {
  allowed_audiences : string prop list option; [@option]
  client_id : string prop;
  client_secret_setting_name : string prop;
  login_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__google_v2) -> ()

let yojson_of_auth_settings_v2__google_v2 =
  (function
   | {
       allowed_audiences = v_allowed_audiences;
       client_id = v_client_id;
       client_secret_setting_name = v_client_secret_setting_name;
       login_scopes = v_login_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
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
    : auth_settings_v2__google_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__google_v2

[@@@deriving.end]

type auth_settings_v2__login = {
  allowed_external_redirect_urls : string prop list option; [@option]
  cookie_expiration_convention : string prop option; [@option]
  cookie_expiration_time : string prop option; [@option]
  logout_endpoint : string prop option; [@option]
  nonce_expiration_time : string prop option; [@option]
  preserve_url_fragments_for_logins : bool prop option; [@option]
  token_refresh_extension_time : float prop option; [@option]
  token_store_enabled : bool prop option; [@option]
  token_store_path : string prop option; [@option]
  token_store_sas_setting_name : string prop option; [@option]
  validate_nonce : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__login) -> ()

let yojson_of_auth_settings_v2__login =
  (function
   | {
       allowed_external_redirect_urls =
         v_allowed_external_redirect_urls;
       cookie_expiration_convention = v_cookie_expiration_convention;
       cookie_expiration_time = v_cookie_expiration_time;
       logout_endpoint = v_logout_endpoint;
       nonce_expiration_time = v_nonce_expiration_time;
       preserve_url_fragments_for_logins =
         v_preserve_url_fragments_for_logins;
       token_refresh_extension_time = v_token_refresh_extension_time;
       token_store_enabled = v_token_store_enabled;
       token_store_path = v_token_store_path;
       token_store_sas_setting_name = v_token_store_sas_setting_name;
       validate_nonce = v_validate_nonce;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_validate_nonce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_nonce", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_store_sas_setting_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_store_sas_setting_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_store_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_store_path", arg in
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
         match v_token_refresh_extension_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "token_refresh_extension_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_url_fragments_for_logins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_url_fragments_for_logins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nonce_expiration_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nonce_expiration_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logout_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logout_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_expiration_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cookie_expiration_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_expiration_convention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cookie_expiration_convention", arg in
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
       `Assoc bnds
    : auth_settings_v2__login -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__login

[@@@deriving.end]

type auth_settings_v2__microsoft_v2 = {
  allowed_audiences : string prop list option; [@option]
  client_id : string prop;
  client_secret_setting_name : string prop;
  login_scopes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__microsoft_v2) -> ()

let yojson_of_auth_settings_v2__microsoft_v2 =
  (function
   | {
       allowed_audiences = v_allowed_audiences;
       client_id = v_client_id;
       client_secret_setting_name = v_client_secret_setting_name;
       login_scopes = v_login_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
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
    : auth_settings_v2__microsoft_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__microsoft_v2

[@@@deriving.end]

type auth_settings_v2__twitter_v2 = {
  consumer_key : string prop;
  consumer_secret_setting_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__twitter_v2) -> ()

let yojson_of_auth_settings_v2__twitter_v2 =
  (function
   | {
       consumer_key = v_consumer_key;
       consumer_secret_setting_name = v_consumer_secret_setting_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_consumer_secret_setting_name
         in
         ("consumer_secret_setting_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_consumer_key in
         ("consumer_key", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__twitter_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__twitter_v2

[@@@deriving.end]

type auth_settings_v2 = {
  auth_enabled : bool prop option; [@option]
  config_file_path : string prop option; [@option]
  default_provider : string prop option; [@option]
  excluded_paths : string prop list option; [@option]
  forward_proxy_convention : string prop option; [@option]
  forward_proxy_custom_host_header_name : string prop option;
      [@option]
  forward_proxy_custom_scheme_header_name : string prop option;
      [@option]
  http_route_api_prefix : string prop option; [@option]
  require_authentication : bool prop option; [@option]
  require_https : bool prop option; [@option]
  runtime_version : string prop option; [@option]
  unauthenticated_action : string prop option; [@option]
  active_directory_v2 : auth_settings_v2__active_directory_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  apple_v2 : auth_settings_v2__apple_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  azure_static_web_app_v2 :
    auth_settings_v2__azure_static_web_app_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  custom_oidc_v2 : auth_settings_v2__custom_oidc_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  facebook_v2 : auth_settings_v2__facebook_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  github_v2 : auth_settings_v2__github_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  google_v2 : auth_settings_v2__google_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  login : auth_settings_v2__login list;
      [@default []] [@yojson_drop_default ( = )]
  microsoft_v2 : auth_settings_v2__microsoft_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  twitter_v2 : auth_settings_v2__twitter_v2 list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2) -> ()

let yojson_of_auth_settings_v2 =
  (function
   | {
       auth_enabled = v_auth_enabled;
       config_file_path = v_config_file_path;
       default_provider = v_default_provider;
       excluded_paths = v_excluded_paths;
       forward_proxy_convention = v_forward_proxy_convention;
       forward_proxy_custom_host_header_name =
         v_forward_proxy_custom_host_header_name;
       forward_proxy_custom_scheme_header_name =
         v_forward_proxy_custom_scheme_header_name;
       http_route_api_prefix = v_http_route_api_prefix;
       require_authentication = v_require_authentication;
       require_https = v_require_https;
       runtime_version = v_runtime_version;
       unauthenticated_action = v_unauthenticated_action;
       active_directory_v2 = v_active_directory_v2;
       apple_v2 = v_apple_v2;
       azure_static_web_app_v2 = v_azure_static_web_app_v2;
       custom_oidc_v2 = v_custom_oidc_v2;
       facebook_v2 = v_facebook_v2;
       github_v2 = v_github_v2;
       google_v2 = v_google_v2;
       login = v_login;
       microsoft_v2 = v_microsoft_v2;
       twitter_v2 = v_twitter_v2;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_twitter_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__twitter_v2)
               v_twitter_v2
           in
           let bnd = "twitter_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_microsoft_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__microsoft_v2)
               v_microsoft_v2
           in
           let bnd = "microsoft_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_login then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__login)
               v_login
           in
           let bnd = "login", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_google_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__google_v2)
               v_google_v2
           in
           let bnd = "google_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_github_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__github_v2)
               v_github_v2
           in
           let bnd = "github_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_facebook_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__facebook_v2)
               v_facebook_v2
           in
           let bnd = "facebook_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_custom_oidc_v2 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auth_settings_v2__custom_oidc_v2)
               v_custom_oidc_v2
           in
           let bnd = "custom_oidc_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_azure_static_web_app_v2 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auth_settings_v2__azure_static_web_app_v2)
               v_azure_static_web_app_v2
           in
           let bnd = "azure_static_web_app_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_apple_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__apple_v2)
               v_apple_v2
           in
           let bnd = "apple_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_active_directory_v2 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auth_settings_v2__active_directory_v2)
               v_active_directory_v2
           in
           let bnd = "active_directory_v2", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unauthenticated_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unauthenticated_action", arg in
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
         match v_require_https with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_https", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_route_api_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_route_api_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forward_proxy_custom_scheme_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "forward_proxy_custom_scheme_header_name", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_forward_proxy_custom_host_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "forward_proxy_custom_host_header_name", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_forward_proxy_convention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forward_proxy_convention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_paths", arg in
             bnd :: bnds
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
         match v_config_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auth_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_settings_v2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2

[@@@deriving.end]

type backup__schedule = {
  frequency_interval : float prop;
  frequency_unit : string prop;
  keep_at_least_one_backup : bool prop option; [@option]
  retention_period_days : float prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup__schedule) -> ()

let yojson_of_backup__schedule =
  (function
   | {
       frequency_interval = v_frequency_interval;
       frequency_unit = v_frequency_unit;
       keep_at_least_one_backup = v_keep_at_least_one_backup;
       retention_period_days = v_retention_period_days;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_period_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_at_least_one_backup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "keep_at_least_one_backup", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_frequency_unit
         in
         ("frequency_unit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_frequency_interval
         in
         ("frequency_interval", arg) :: bnds
       in
       `Assoc bnds
    : backup__schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup__schedule

[@@@deriving.end]

type backup = {
  enabled : bool prop option; [@option]
  name : string prop;
  storage_account_url : string prop;
  schedule : backup__schedule list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup) -> ()

let yojson_of_backup =
  (function
   | {
       enabled = v_enabled;
       name = v_name;
       storage_account_url = v_storage_account_url;
       schedule = v_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backup__schedule) v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_url
         in
         ("storage_account_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup

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

type site_config__app_service_logs = {
  disk_quota_mb : float prop option; [@option]
  retention_period_days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__app_service_logs) -> ()

let yojson_of_site_config__app_service_logs =
  (function
   | {
       disk_quota_mb = v_disk_quota_mb;
       retention_period_days = v_retention_period_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retention_period_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_quota_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_quota_mb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site_config__app_service_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__app_service_logs

[@@@deriving.end]

type site_config__application_stack = {
  dotnet_version : string prop option; [@option]
  java_version : string prop option; [@option]
  node_version : string prop option; [@option]
  powershell_core_version : string prop option; [@option]
  use_custom_runtime : bool prop option; [@option]
  use_dotnet_isolated_runtime : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__application_stack) -> ()

let yojson_of_site_config__application_stack =
  (function
   | {
       dotnet_version = v_dotnet_version;
       java_version = v_java_version;
       node_version = v_node_version;
       powershell_core_version = v_powershell_core_version;
       use_custom_runtime = v_use_custom_runtime;
       use_dotnet_isolated_runtime = v_use_dotnet_isolated_runtime;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_dotnet_isolated_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_dotnet_isolated_runtime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_custom_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_custom_runtime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_powershell_core_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "powershell_core_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_version", arg in
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
         match v_dotnet_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dotnet_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site_config__application_stack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__application_stack

[@@@deriving.end]

type site_config__cors = {
  allowed_origins : string prop list option; [@option]
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
         match v_allowed_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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
      [@default []] [@yojson_drop_default ( = )]
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_x_forwarded_host then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_host
           in
           let bnd = "x_forwarded_host", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_x_forwarded_for then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_for
           in
           let bnd = "x_forwarded_for", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_x_fd_health_probe then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_fd_health_probe
           in
           let bnd = "x_fd_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_x_azure_fdid then bnds
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
  action : string prop option; [@option]
  description : string prop option; [@option]
  headers : site_config__ip_restriction__headers list option;
      [@option]
  ip_address : string prop option; [@option]
  name : string prop option; [@option]
  priority : float prop option; [@option]
  service_tag : string prop option; [@option]
  virtual_network_subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__ip_restriction) -> ()

let yojson_of_site_config__ip_restriction =
  (function
   | {
       action = v_action;
       description = v_description;
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
         match v_virtual_network_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_site_config__ip_restriction__headers v
             in
             let bnd = "headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction

[@@@deriving.end]

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_x_forwarded_host then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_host
           in
           let bnd = "x_forwarded_host", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_x_forwarded_for then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_forwarded_for
           in
           let bnd = "x_forwarded_for", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_x_fd_health_probe then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_fd_health_probe
           in
           let bnd = "x_fd_health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_x_azure_fdid then bnds
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
  action : string prop option; [@option]
  description : string prop option; [@option]
  headers : site_config__scm_ip_restriction__headers list option;
      [@option]
  ip_address : string prop option; [@option]
  name : string prop option; [@option]
  priority : float prop option; [@option]
  service_tag : string prop option; [@option]
  virtual_network_subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__scm_ip_restriction) -> ()

let yojson_of_site_config__scm_ip_restriction =
  (function
   | {
       action = v_action;
       description = v_description;
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
         match v_virtual_network_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_site_config__scm_ip_restriction__headers v
             in
             let bnd = "headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction

[@@@deriving.end]

type site_config = {
  always_on : bool prop option; [@option]
  api_definition_url : string prop option; [@option]
  api_management_api_id : string prop option; [@option]
  app_command_line : string prop option; [@option]
  app_scale_limit : float prop option; [@option]
  application_insights_connection_string : string prop option;
      [@option]
  application_insights_key : string prop option; [@option]
  default_documents : string prop list option; [@option]
  elastic_instance_minimum : float prop option; [@option]
  ftps_state : string prop option; [@option]
  health_check_eviction_time_in_min : float prop option; [@option]
  health_check_path : string prop option; [@option]
  http2_enabled : bool prop option; [@option]
  ip_restriction_default_action : string prop option; [@option]
  load_balancing_mode : string prop option; [@option]
  managed_pipeline_mode : string prop option; [@option]
  minimum_tls_version : string prop option; [@option]
  pre_warmed_instance_count : float prop option; [@option]
  remote_debugging_enabled : bool prop option; [@option]
  remote_debugging_version : string prop option; [@option]
  runtime_scale_monitoring_enabled : bool prop option; [@option]
  scm_ip_restriction_default_action : string prop option; [@option]
  scm_minimum_tls_version : string prop option; [@option]
  scm_use_main_ip_restriction : bool prop option; [@option]
  use_32_bit_worker : bool prop option; [@option]
  vnet_route_all_enabled : bool prop option; [@option]
  websockets_enabled : bool prop option; [@option]
  worker_count : float prop option; [@option]
  app_service_logs : site_config__app_service_logs list;
      [@default []] [@yojson_drop_default ( = )]
  application_stack : site_config__application_stack list;
      [@default []] [@yojson_drop_default ( = )]
  cors : site_config__cors list;
      [@default []] [@yojson_drop_default ( = )]
  ip_restriction : site_config__ip_restriction list;
      [@default []] [@yojson_drop_default ( = )]
  scm_ip_restriction : site_config__scm_ip_restriction list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config) -> ()

let yojson_of_site_config =
  (function
   | {
       always_on = v_always_on;
       api_definition_url = v_api_definition_url;
       api_management_api_id = v_api_management_api_id;
       app_command_line = v_app_command_line;
       app_scale_limit = v_app_scale_limit;
       application_insights_connection_string =
         v_application_insights_connection_string;
       application_insights_key = v_application_insights_key;
       default_documents = v_default_documents;
       elastic_instance_minimum = v_elastic_instance_minimum;
       ftps_state = v_ftps_state;
       health_check_eviction_time_in_min =
         v_health_check_eviction_time_in_min;
       health_check_path = v_health_check_path;
       http2_enabled = v_http2_enabled;
       ip_restriction_default_action =
         v_ip_restriction_default_action;
       load_balancing_mode = v_load_balancing_mode;
       managed_pipeline_mode = v_managed_pipeline_mode;
       minimum_tls_version = v_minimum_tls_version;
       pre_warmed_instance_count = v_pre_warmed_instance_count;
       remote_debugging_enabled = v_remote_debugging_enabled;
       remote_debugging_version = v_remote_debugging_version;
       runtime_scale_monitoring_enabled =
         v_runtime_scale_monitoring_enabled;
       scm_ip_restriction_default_action =
         v_scm_ip_restriction_default_action;
       scm_minimum_tls_version = v_scm_minimum_tls_version;
       scm_use_main_ip_restriction = v_scm_use_main_ip_restriction;
       use_32_bit_worker = v_use_32_bit_worker;
       vnet_route_all_enabled = v_vnet_route_all_enabled;
       websockets_enabled = v_websockets_enabled;
       worker_count = v_worker_count;
       app_service_logs = v_app_service_logs;
       application_stack = v_application_stack;
       cors = v_cors;
       ip_restriction = v_ip_restriction;
       scm_ip_restriction = v_scm_ip_restriction;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_scm_ip_restriction then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__scm_ip_restriction)
               v_scm_ip_restriction
           in
           let bnd = "scm_ip_restriction", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ip_restriction then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__ip_restriction)
               v_ip_restriction
           in
           let bnd = "ip_restriction", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__cors) v_cors
           in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_application_stack then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__application_stack)
               v_application_stack
           in
           let bnd = "application_stack", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_app_service_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__app_service_logs)
               v_app_service_logs
           in
           let bnd = "app_service_logs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_worker_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "worker_count", arg in
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
         match v_use_32_bit_worker with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_32_bit_worker", arg in
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
         match v_scm_minimum_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scm_minimum_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scm_ip_restriction_default_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scm_ip_restriction_default_action", arg in
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
         match v_remote_debugging_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remote_debugging_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_debugging_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remote_debugging_enabled", arg in
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
         match v_minimum_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_pipeline_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_pipeline_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancing_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_restriction_default_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_restriction_default_action", arg in
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
         match v_health_check_eviction_time_in_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "health_check_eviction_time_in_min", arg in
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
         match v_default_documents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "default_documents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_insights_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_insights_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_insights_connection_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "application_insights_connection_string", arg
             in
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
         match v_app_command_line with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_command_line", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_management_api_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_management_api_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_definition_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_definition_url", arg in
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

type sticky_settings = {
  app_setting_names : string prop list option; [@option]
  connection_string_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sticky_settings) -> ()

let yojson_of_sticky_settings =
  (function
   | {
       app_setting_names = v_app_setting_names;
       connection_string_names = v_connection_string_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_connection_string_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "connection_string_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_setting_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "app_setting_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sticky_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sticky_settings

[@@@deriving.end]

type storage_account = {
  access_key : string prop;
  account_name : string prop;
  mount_path : string prop option; [@option]
  name : string prop;
  share_name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account) -> ()

let yojson_of_storage_account =
  (function
   | {
       access_key = v_access_key;
       account_name = v_account_name;
       mount_path = v_mount_path;
       name = v_name;
       share_name = v_share_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_name in
         ("share_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mount_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_key in
         ("access_key", arg) :: bnds
       in
       `Assoc bnds
    : storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account

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

type site_credential = { name : string prop; password : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : site_credential) -> ()

let yojson_of_site_credential =
  (function
   | { name = v_name; password = v_password } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : site_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_credential

[@@@deriving.end]

type azurerm_windows_function_app = {
  app_settings : (string * string prop) list option; [@option]
  builtin_logging_enabled : bool prop option; [@option]
  client_certificate_enabled : bool prop option; [@option]
  client_certificate_exclusion_paths : string prop option; [@option]
  client_certificate_mode : string prop option; [@option]
  content_share_force_disabled : bool prop option; [@option]
  daily_memory_time_quota : float prop option; [@option]
  enabled : bool prop option; [@option]
  ftp_publish_basic_authentication_enabled : bool prop option;
      [@option]
  functions_extension_version : string prop option; [@option]
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  key_vault_reference_identity_id : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  service_plan_id : string prop;
  storage_account_access_key : string prop option; [@option]
  storage_account_name : string prop option; [@option]
  storage_key_vault_secret_id : string prop option; [@option]
  storage_uses_managed_identity : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  virtual_network_subnet_id : string prop option; [@option]
  webdeploy_publish_basic_authentication_enabled : bool prop option;
      [@option]
  zip_deploy_file : string prop option; [@option]
  auth_settings : auth_settings list;
      [@default []] [@yojson_drop_default ( = )]
  auth_settings_v2 : auth_settings_v2 list;
      [@default []] [@yojson_drop_default ( = )]
  backup : backup list; [@default []] [@yojson_drop_default ( = )]
  connection_string : connection_string list;
      [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  site_config : site_config list;
      [@default []] [@yojson_drop_default ( = )]
  sticky_settings : sticky_settings list;
      [@default []] [@yojson_drop_default ( = )]
  storage_account : storage_account list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_windows_function_app) -> ()

let yojson_of_azurerm_windows_function_app =
  (function
   | {
       app_settings = v_app_settings;
       builtin_logging_enabled = v_builtin_logging_enabled;
       client_certificate_enabled = v_client_certificate_enabled;
       client_certificate_exclusion_paths =
         v_client_certificate_exclusion_paths;
       client_certificate_mode = v_client_certificate_mode;
       content_share_force_disabled = v_content_share_force_disabled;
       daily_memory_time_quota = v_daily_memory_time_quota;
       enabled = v_enabled;
       ftp_publish_basic_authentication_enabled =
         v_ftp_publish_basic_authentication_enabled;
       functions_extension_version = v_functions_extension_version;
       https_only = v_https_only;
       id = v_id;
       key_vault_reference_identity_id =
         v_key_vault_reference_identity_id;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       service_plan_id = v_service_plan_id;
       storage_account_access_key = v_storage_account_access_key;
       storage_account_name = v_storage_account_name;
       storage_key_vault_secret_id = v_storage_key_vault_secret_id;
       storage_uses_managed_identity =
         v_storage_uses_managed_identity;
       tags = v_tags;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
       webdeploy_publish_basic_authentication_enabled =
         v_webdeploy_publish_basic_authentication_enabled;
       zip_deploy_file = v_zip_deploy_file;
       auth_settings = v_auth_settings;
       auth_settings_v2 = v_auth_settings_v2;
       backup = v_backup;
       connection_string = v_connection_string;
       identity = v_identity;
       site_config = v_site_config;
       sticky_settings = v_sticky_settings;
       storage_account = v_storage_account;
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
         if [] = v_storage_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_account)
               v_storage_account
           in
           let bnd = "storage_account", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_sticky_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sticky_settings)
               v_sticky_settings
           in
           let bnd = "sticky_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_site_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config) v_site_config
           in
           let bnd = "site_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_connection_string then bnds
         else
           let arg =
             (yojson_of_list yojson_of_connection_string)
               v_connection_string
           in
           let bnd = "connection_string", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backup then bnds
         else
           let arg = (yojson_of_list yojson_of_backup) v_backup in
           let bnd = "backup", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_auth_settings_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2)
               v_auth_settings_v2
           in
           let bnd = "auth_settings_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_auth_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings) v_auth_settings
           in
           let bnd = "auth_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zip_deploy_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zip_deploy_file", arg in
             bnd :: bnds
       in
       let bnds =
         match v_webdeploy_publish_basic_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "webdeploy_publish_basic_authentication_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_virtual_network_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_subnet_id", arg in
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
         match v_storage_uses_managed_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "storage_uses_managed_identity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_key_vault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_key_vault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_access_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_access_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_plan_id
         in
         ("service_plan_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
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
         match v_key_vault_reference_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_reference_identity_id", arg in
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
         match v_https_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_functions_extension_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "functions_extension_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ftp_publish_basic_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "ftp_publish_basic_authentication_enabled", arg
             in
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
       let bnds =
         match v_daily_memory_time_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "daily_memory_time_quota", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_share_force_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "content_share_force_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_exclusion_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_exclusion_paths", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_certificate_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_builtin_logging_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "builtin_logging_enabled", arg in
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
       `Assoc bnds
    : azurerm_windows_function_app ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_windows_function_app

[@@@deriving.end]

let auth_settings__active_directory ?allowed_audiences ?client_secret
    ?client_secret_setting_name ~client_id () :
    auth_settings__active_directory =
  {
    allowed_audiences;
    client_id;
    client_secret;
    client_secret_setting_name;
  }

let auth_settings__facebook ?app_secret ?app_secret_setting_name
    ?oauth_scopes ~app_id () : auth_settings__facebook =
  { app_id; app_secret; app_secret_setting_name; oauth_scopes }

let auth_settings__github ?client_secret ?client_secret_setting_name
    ?oauth_scopes ~client_id () : auth_settings__github =
  {
    client_id;
    client_secret;
    client_secret_setting_name;
    oauth_scopes;
  }

let auth_settings__google ?client_secret ?client_secret_setting_name
    ?oauth_scopes ~client_id () : auth_settings__google =
  {
    client_id;
    client_secret;
    client_secret_setting_name;
    oauth_scopes;
  }

let auth_settings__microsoft ?client_secret
    ?client_secret_setting_name ?oauth_scopes ~client_id () :
    auth_settings__microsoft =
  {
    client_id;
    client_secret;
    client_secret_setting_name;
    oauth_scopes;
  }

let auth_settings__twitter ?consumer_secret
    ?consumer_secret_setting_name ~consumer_key () :
    auth_settings__twitter =
  { consumer_key; consumer_secret; consumer_secret_setting_name }

let auth_settings ?additional_login_parameters
    ?allowed_external_redirect_urls ?default_provider ?issuer
    ?runtime_version ?token_refresh_extension_hours
    ?token_store_enabled ?unauthenticated_client_action
    ?(active_directory = []) ?(facebook = []) ?(github = [])
    ?(google = []) ?(microsoft = []) ?(twitter = []) ~enabled () :
    auth_settings =
  {
    additional_login_parameters;
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
    github;
    google;
    microsoft;
    twitter;
  }

let auth_settings_v2__active_directory_v2 ?allowed_applications
    ?allowed_audiences ?allowed_groups ?allowed_identities
    ?client_secret_certificate_thumbprint ?client_secret_setting_name
    ?jwt_allowed_client_applications ?jwt_allowed_groups
    ?login_parameters ?www_authentication_disabled ~client_id
    ~tenant_auth_endpoint () : auth_settings_v2__active_directory_v2
    =
  {
    allowed_applications;
    allowed_audiences;
    allowed_groups;
    allowed_identities;
    client_id;
    client_secret_certificate_thumbprint;
    client_secret_setting_name;
    jwt_allowed_client_applications;
    jwt_allowed_groups;
    login_parameters;
    tenant_auth_endpoint;
    www_authentication_disabled;
  }

let auth_settings_v2__apple_v2 ~client_id ~client_secret_setting_name
    () : auth_settings_v2__apple_v2 =
  { client_id; client_secret_setting_name }

let auth_settings_v2__azure_static_web_app_v2 ~client_id () :
    auth_settings_v2__azure_static_web_app_v2 =
  { client_id }

let auth_settings_v2__custom_oidc_v2 ?name_claim_type ?scopes
    ~client_id ~name ~openid_configuration_endpoint () :
    auth_settings_v2__custom_oidc_v2 =
  {
    client_id;
    name;
    name_claim_type;
    openid_configuration_endpoint;
    scopes;
  }

let auth_settings_v2__facebook_v2 ?graph_api_version ?login_scopes
    ~app_id ~app_secret_setting_name () :
    auth_settings_v2__facebook_v2 =
  {
    app_id;
    app_secret_setting_name;
    graph_api_version;
    login_scopes;
  }

let auth_settings_v2__github_v2 ?login_scopes ~client_id
    ~client_secret_setting_name () : auth_settings_v2__github_v2 =
  { client_id; client_secret_setting_name; login_scopes }

let auth_settings_v2__google_v2 ?allowed_audiences ?login_scopes
    ~client_id ~client_secret_setting_name () :
    auth_settings_v2__google_v2 =
  {
    allowed_audiences;
    client_id;
    client_secret_setting_name;
    login_scopes;
  }

let auth_settings_v2__login ?allowed_external_redirect_urls
    ?cookie_expiration_convention ?cookie_expiration_time
    ?logout_endpoint ?nonce_expiration_time
    ?preserve_url_fragments_for_logins ?token_refresh_extension_time
    ?token_store_enabled ?token_store_path
    ?token_store_sas_setting_name ?validate_nonce () :
    auth_settings_v2__login =
  {
    allowed_external_redirect_urls;
    cookie_expiration_convention;
    cookie_expiration_time;
    logout_endpoint;
    nonce_expiration_time;
    preserve_url_fragments_for_logins;
    token_refresh_extension_time;
    token_store_enabled;
    token_store_path;
    token_store_sas_setting_name;
    validate_nonce;
  }

let auth_settings_v2__microsoft_v2 ?allowed_audiences ?login_scopes
    ~client_id ~client_secret_setting_name () :
    auth_settings_v2__microsoft_v2 =
  {
    allowed_audiences;
    client_id;
    client_secret_setting_name;
    login_scopes;
  }

let auth_settings_v2__twitter_v2 ~consumer_key
    ~consumer_secret_setting_name () : auth_settings_v2__twitter_v2 =
  { consumer_key; consumer_secret_setting_name }

let auth_settings_v2 ?auth_enabled ?config_file_path
    ?default_provider ?excluded_paths ?forward_proxy_convention
    ?forward_proxy_custom_host_header_name
    ?forward_proxy_custom_scheme_header_name ?http_route_api_prefix
    ?require_authentication ?require_https ?runtime_version
    ?unauthenticated_action ?(active_directory_v2 = [])
    ?(apple_v2 = []) ?(azure_static_web_app_v2 = [])
    ?(custom_oidc_v2 = []) ?(facebook_v2 = []) ?(github_v2 = [])
    ?(google_v2 = []) ?(microsoft_v2 = []) ?(twitter_v2 = []) ~login
    () : auth_settings_v2 =
  {
    auth_enabled;
    config_file_path;
    default_provider;
    excluded_paths;
    forward_proxy_convention;
    forward_proxy_custom_host_header_name;
    forward_proxy_custom_scheme_header_name;
    http_route_api_prefix;
    require_authentication;
    require_https;
    runtime_version;
    unauthenticated_action;
    active_directory_v2;
    apple_v2;
    azure_static_web_app_v2;
    custom_oidc_v2;
    facebook_v2;
    github_v2;
    google_v2;
    login;
    microsoft_v2;
    twitter_v2;
  }

let backup__schedule ?keep_at_least_one_backup ?retention_period_days
    ?start_time ~frequency_interval ~frequency_unit () :
    backup__schedule =
  {
    frequency_interval;
    frequency_unit;
    keep_at_least_one_backup;
    retention_period_days;
    start_time;
  }

let backup ?enabled ~name ~storage_account_url ~schedule () : backup
    =
  { enabled; name; storage_account_url; schedule }

let connection_string ~name ~type_ ~value () : connection_string =
  { name; type_; value }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let site_config__app_service_logs ?disk_quota_mb
    ?retention_period_days () : site_config__app_service_logs =
  { disk_quota_mb; retention_period_days }

let site_config__application_stack ?dotnet_version ?java_version
    ?node_version ?powershell_core_version ?use_custom_runtime
    ?use_dotnet_isolated_runtime () : site_config__application_stack
    =
  {
    dotnet_version;
    java_version;
    node_version;
    powershell_core_version;
    use_custom_runtime;
    use_dotnet_isolated_runtime;
  }

let site_config__cors ?allowed_origins ?support_credentials () :
    site_config__cors =
  { allowed_origins; support_credentials }

let site_config__ip_restriction ?action ?description ?headers
    ?ip_address ?name ?priority ?service_tag
    ?virtual_network_subnet_id () : site_config__ip_restriction =
  {
    action;
    description;
    headers;
    ip_address;
    name;
    priority;
    service_tag;
    virtual_network_subnet_id;
  }

let site_config__scm_ip_restriction ?action ?description ?headers
    ?ip_address ?name ?priority ?service_tag
    ?virtual_network_subnet_id () : site_config__scm_ip_restriction =
  {
    action;
    description;
    headers;
    ip_address;
    name;
    priority;
    service_tag;
    virtual_network_subnet_id;
  }

let site_config ?always_on ?api_definition_url ?api_management_api_id
    ?app_command_line ?app_scale_limit
    ?application_insights_connection_string ?application_insights_key
    ?default_documents ?elastic_instance_minimum ?ftps_state
    ?health_check_eviction_time_in_min ?health_check_path
    ?http2_enabled ?ip_restriction_default_action
    ?load_balancing_mode ?managed_pipeline_mode ?minimum_tls_version
    ?pre_warmed_instance_count ?remote_debugging_enabled
    ?remote_debugging_version ?runtime_scale_monitoring_enabled
    ?scm_ip_restriction_default_action ?scm_minimum_tls_version
    ?scm_use_main_ip_restriction ?use_32_bit_worker
    ?vnet_route_all_enabled ?websockets_enabled ?worker_count
    ?(app_service_logs = []) ?(application_stack = []) ?(cors = [])
    ?(ip_restriction = []) ?(scm_ip_restriction = []) () :
    site_config =
  {
    always_on;
    api_definition_url;
    api_management_api_id;
    app_command_line;
    app_scale_limit;
    application_insights_connection_string;
    application_insights_key;
    default_documents;
    elastic_instance_minimum;
    ftps_state;
    health_check_eviction_time_in_min;
    health_check_path;
    http2_enabled;
    ip_restriction_default_action;
    load_balancing_mode;
    managed_pipeline_mode;
    minimum_tls_version;
    pre_warmed_instance_count;
    remote_debugging_enabled;
    remote_debugging_version;
    runtime_scale_monitoring_enabled;
    scm_ip_restriction_default_action;
    scm_minimum_tls_version;
    scm_use_main_ip_restriction;
    use_32_bit_worker;
    vnet_route_all_enabled;
    websockets_enabled;
    worker_count;
    app_service_logs;
    application_stack;
    cors;
    ip_restriction;
    scm_ip_restriction;
  }

let sticky_settings ?app_setting_names ?connection_string_names () :
    sticky_settings =
  { app_setting_names; connection_string_names }

let storage_account ?mount_path ~access_key ~account_name ~name
    ~share_name ~type_ () : storage_account =
  { access_key; account_name; mount_path; name; share_name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_windows_function_app ?app_settings
    ?builtin_logging_enabled ?client_certificate_enabled
    ?client_certificate_exclusion_paths ?client_certificate_mode
    ?content_share_force_disabled ?daily_memory_time_quota ?enabled
    ?ftp_publish_basic_authentication_enabled
    ?functions_extension_version ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?storage_account_access_key ?storage_account_name
    ?storage_key_vault_secret_id ?storage_uses_managed_identity ?tags
    ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?zip_deploy_file
    ?(auth_settings = []) ?(auth_settings_v2 = []) ?(backup = [])
    ?(identity = []) ?(sticky_settings = []) ?timeouts ~location
    ~name ~resource_group_name ~service_plan_id ~connection_string
    ~site_config ~storage_account () : azurerm_windows_function_app =
  {
    app_settings;
    builtin_logging_enabled;
    client_certificate_enabled;
    client_certificate_exclusion_paths;
    client_certificate_mode;
    content_share_force_disabled;
    daily_memory_time_quota;
    enabled;
    ftp_publish_basic_authentication_enabled;
    functions_extension_version;
    https_only;
    id;
    key_vault_reference_identity_id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    service_plan_id;
    storage_account_access_key;
    storage_account_name;
    storage_key_vault_secret_id;
    storage_uses_managed_identity;
    tags;
    virtual_network_subnet_id;
    webdeploy_publish_basic_authentication_enabled;
    zip_deploy_file;
    auth_settings;
    auth_settings_v2;
    backup;
    connection_string;
    identity;
    site_config;
    sticky_settings;
    storage_account;
    timeouts;
  }

type t = {
  tf_name : string;
  app_settings : (string * string) list prop;
  builtin_logging_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  content_share_force_disabled : bool prop;
  custom_domain_verification_id : string prop;
  daily_memory_time_quota : float prop;
  default_hostname : string prop;
  enabled : bool prop;
  ftp_publish_basic_authentication_enabled : bool prop;
  functions_extension_version : string prop;
  hosting_environment_id : string prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  service_plan_id : string prop;
  site_credential : site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_key_vault_secret_id : string prop;
  storage_uses_managed_identity : bool prop;
  tags : (string * string) list prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
  zip_deploy_file : string prop;
}

let make ?app_settings ?builtin_logging_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?content_share_force_disabled
    ?daily_memory_time_quota ?enabled
    ?ftp_publish_basic_authentication_enabled
    ?functions_extension_version ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?storage_account_access_key ?storage_account_name
    ?storage_key_vault_secret_id ?storage_uses_managed_identity ?tags
    ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?zip_deploy_file
    ?(auth_settings = []) ?(auth_settings_v2 = []) ?(backup = [])
    ?(identity = []) ?(sticky_settings = []) ?timeouts ~location
    ~name ~resource_group_name ~service_plan_id ~connection_string
    ~site_config ~storage_account __id =
  let __type = "azurerm_windows_function_app" in
  let __attrs =
    ({
       tf_name = __id;
       app_settings = Prop.computed __type __id "app_settings";
       builtin_logging_enabled =
         Prop.computed __type __id "builtin_logging_enabled";
       client_certificate_enabled =
         Prop.computed __type __id "client_certificate_enabled";
       client_certificate_exclusion_paths =
         Prop.computed __type __id
           "client_certificate_exclusion_paths";
       client_certificate_mode =
         Prop.computed __type __id "client_certificate_mode";
       content_share_force_disabled =
         Prop.computed __type __id "content_share_force_disabled";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       daily_memory_time_quota =
         Prop.computed __type __id "daily_memory_time_quota";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       enabled = Prop.computed __type __id "enabled";
       ftp_publish_basic_authentication_enabled =
         Prop.computed __type __id
           "ftp_publish_basic_authentication_enabled";
       functions_extension_version =
         Prop.computed __type __id "functions_extension_version";
       hosting_environment_id =
         Prop.computed __type __id "hosting_environment_id";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       key_vault_reference_identity_id =
         Prop.computed __type __id "key_vault_reference_identity_id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip_address_list =
         Prop.computed __type __id "outbound_ip_address_list";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       possible_outbound_ip_address_list =
         Prop.computed __type __id
           "possible_outbound_ip_address_list";
       possible_outbound_ip_addresses =
         Prop.computed __type __id "possible_outbound_ip_addresses";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_plan_id = Prop.computed __type __id "service_plan_id";
       site_credential = Prop.computed __type __id "site_credential";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_key_vault_secret_id =
         Prop.computed __type __id "storage_key_vault_secret_id";
       storage_uses_managed_identity =
         Prop.computed __type __id "storage_uses_managed_identity";
       tags = Prop.computed __type __id "tags";
       virtual_network_subnet_id =
         Prop.computed __type __id "virtual_network_subnet_id";
       webdeploy_publish_basic_authentication_enabled =
         Prop.computed __type __id
           "webdeploy_publish_basic_authentication_enabled";
       zip_deploy_file = Prop.computed __type __id "zip_deploy_file";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_windows_function_app
        (azurerm_windows_function_app ?app_settings
           ?builtin_logging_enabled ?client_certificate_enabled
           ?client_certificate_exclusion_paths
           ?client_certificate_mode ?content_share_force_disabled
           ?daily_memory_time_quota ?enabled
           ?ftp_publish_basic_authentication_enabled
           ?functions_extension_version ?https_only ?id
           ?key_vault_reference_identity_id
           ?public_network_access_enabled ?storage_account_access_key
           ?storage_account_name ?storage_key_vault_secret_id
           ?storage_uses_managed_identity ?tags
           ?virtual_network_subnet_id
           ?webdeploy_publish_basic_authentication_enabled
           ?zip_deploy_file ~auth_settings ~auth_settings_v2 ~backup
           ~identity ~sticky_settings ?timeouts ~location ~name
           ~resource_group_name ~service_plan_id ~connection_string
           ~site_config ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?builtin_logging_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?content_share_force_disabled
    ?daily_memory_time_quota ?enabled
    ?ftp_publish_basic_authentication_enabled
    ?functions_extension_version ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?storage_account_access_key ?storage_account_name
    ?storage_key_vault_secret_id ?storage_uses_managed_identity ?tags
    ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?zip_deploy_file
    ?(auth_settings = []) ?(auth_settings_v2 = []) ?(backup = [])
    ?(identity = []) ?(sticky_settings = []) ?timeouts ~location
    ~name ~resource_group_name ~service_plan_id ~connection_string
    ~site_config ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?builtin_logging_enabled
      ?client_certificate_enabled ?client_certificate_exclusion_paths
      ?client_certificate_mode ?content_share_force_disabled
      ?daily_memory_time_quota ?enabled
      ?ftp_publish_basic_authentication_enabled
      ?functions_extension_version ?https_only ?id
      ?key_vault_reference_identity_id ?public_network_access_enabled
      ?storage_account_access_key ?storage_account_name
      ?storage_key_vault_secret_id ?storage_uses_managed_identity
      ?tags ?virtual_network_subnet_id
      ?webdeploy_publish_basic_authentication_enabled
      ?zip_deploy_file ~auth_settings ~auth_settings_v2 ~backup
      ~identity ~sticky_settings ?timeouts ~location ~name
      ~resource_group_name ~service_plan_id ~connection_string
      ~site_config ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
