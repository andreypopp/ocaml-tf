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
  additional_login_parameters : string prop Tf_core.assoc option;
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
  github : auth_settings__github list;
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
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings__github)
               v_github
           in
           let bnd = "github", arg in
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
         match v_additional_login_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
  login_parameters : string prop Tf_core.assoc option; [@option]
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
  apple_v2 : auth_settings_v2__apple_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  azure_static_web_app_v2 :
    auth_settings_v2__azure_static_web_app_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_oidc_v2 : auth_settings_v2__custom_oidc_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  facebook_v2 : auth_settings_v2__facebook_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github_v2 : auth_settings_v2__github_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  google_v2 : auth_settings_v2__google_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  login : auth_settings_v2__login list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  microsoft_v2 : auth_settings_v2__microsoft_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  twitter_v2 : auth_settings_v2__twitter_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_twitter_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__twitter_v2)
               v_twitter_v2
           in
           let bnd = "twitter_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_microsoft_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__microsoft_v2)
               v_microsoft_v2
           in
           let bnd = "microsoft_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_login then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__login)
               v_login
           in
           let bnd = "login", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_google_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__google_v2)
               v_google_v2
           in
           let bnd = "google_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__github_v2)
               v_github_v2
           in
           let bnd = "github_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_facebook_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__facebook_v2)
               v_facebook_v2
           in
           let bnd = "facebook_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_oidc_v2 then bnds
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
         if Stdlib.( = ) [] v_azure_static_web_app_v2 then bnds
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
         if Stdlib.( = ) [] v_apple_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2__apple_v2)
               v_apple_v2
           in
           let bnd = "apple_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_active_directory_v2 then bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_schedule then bnds
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

type logs__application_logs__azure_blob_storage = {
  level : string prop;
  retention_in_days : float prop;
  sas_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__application_logs__azure_blob_storage) -> ()

let yojson_of_logs__application_logs__azure_blob_storage =
  (function
   | {
       level = v_level;
       retention_in_days = v_retention_in_days;
       sas_url = v_sas_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sas_url in
         ("sas_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_in_days
         in
         ("retention_in_days", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_level in
         ("level", arg) :: bnds
       in
       `Assoc bnds
    : logs__application_logs__azure_blob_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__application_logs__azure_blob_storage

[@@@deriving.end]

type logs__application_logs = {
  file_system_level : string prop;
  azure_blob_storage :
    logs__application_logs__azure_blob_storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__application_logs) -> ()

let yojson_of_logs__application_logs =
  (function
   | {
       file_system_level = v_file_system_level;
       azure_blob_storage = v_azure_blob_storage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_blob_storage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_logs__application_logs__azure_blob_storage)
               v_azure_blob_storage
           in
           let bnd = "azure_blob_storage", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_level
         in
         ("file_system_level", arg) :: bnds
       in
       `Assoc bnds
    : logs__application_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__application_logs

[@@@deriving.end]

type logs__http_logs__azure_blob_storage = {
  retention_in_days : float prop option; [@option]
  sas_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__http_logs__azure_blob_storage) -> ()

let yojson_of_logs__http_logs__azure_blob_storage =
  (function
   | { retention_in_days = v_retention_in_days; sas_url = v_sas_url }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sas_url in
         ("sas_url", arg) :: bnds
       in
       let bnds =
         match v_retention_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_in_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs__http_logs__azure_blob_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__http_logs__azure_blob_storage

[@@@deriving.end]

type logs__http_logs__file_system = {
  retention_in_days : float prop;
  retention_in_mb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__http_logs__file_system) -> ()

let yojson_of_logs__http_logs__file_system =
  (function
   | {
       retention_in_days = v_retention_in_days;
       retention_in_mb = v_retention_in_mb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_in_mb
         in
         ("retention_in_mb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_in_days
         in
         ("retention_in_days", arg) :: bnds
       in
       `Assoc bnds
    : logs__http_logs__file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__http_logs__file_system

[@@@deriving.end]

type logs__http_logs = {
  azure_blob_storage : logs__http_logs__azure_blob_storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  file_system : logs__http_logs__file_system list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__http_logs) -> ()

let yojson_of_logs__http_logs =
  (function
   | {
       azure_blob_storage = v_azure_blob_storage;
       file_system = v_file_system;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_file_system then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs__http_logs__file_system)
               v_file_system
           in
           let bnd = "file_system", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_blob_storage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_logs__http_logs__azure_blob_storage)
               v_azure_blob_storage
           in
           let bnd = "azure_blob_storage", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : logs__http_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__http_logs

[@@@deriving.end]

type logs = {
  detailed_error_messages : bool prop option; [@option]
  failed_request_tracing : bool prop option; [@option]
  application_logs : logs__application_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_logs : logs__http_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs) -> ()

let yojson_of_logs =
  (function
   | {
       detailed_error_messages = v_detailed_error_messages;
       failed_request_tracing = v_failed_request_tracing;
       application_logs = v_application_logs;
       http_logs = v_http_logs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_http_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs__http_logs) v_http_logs
           in
           let bnd = "http_logs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs__application_logs)
               v_application_logs
           in
           let bnd = "application_logs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_failed_request_tracing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "failed_request_tracing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detailed_error_messages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "detailed_error_messages", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs

[@@@deriving.end]

type site_config__application_stack = {
  docker_image : string prop option; [@option]
  docker_image_name : string prop option; [@option]
  docker_image_tag : string prop option; [@option]
  docker_registry_password : string prop option; [@option]
  docker_registry_url : string prop option; [@option]
  docker_registry_username : string prop option; [@option]
  dotnet_version : string prop option; [@option]
  go_version : string prop option; [@option]
  java_server : string prop option; [@option]
  java_server_version : string prop option; [@option]
  java_version : string prop option; [@option]
  node_version : string prop option; [@option]
  php_version : string prop option; [@option]
  python_version : string prop option; [@option]
  ruby_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__application_stack) -> ()

let yojson_of_site_config__application_stack =
  (function
   | {
       docker_image = v_docker_image;
       docker_image_name = v_docker_image_name;
       docker_image_tag = v_docker_image_tag;
       docker_registry_password = v_docker_registry_password;
       docker_registry_url = v_docker_registry_url;
       docker_registry_username = v_docker_registry_username;
       dotnet_version = v_dotnet_version;
       go_version = v_go_version;
       java_server = v_java_server;
       java_server_version = v_java_server_version;
       java_version = v_java_version;
       node_version = v_node_version;
       php_version = v_php_version;
       python_version = v_python_version;
       ruby_version = v_ruby_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ruby_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ruby_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_python_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "python_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_php_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "php_version", arg in
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
         match v_java_server_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "java_server_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_java_server with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "java_server", arg in
             bnd :: bnds
       in
       let bnds =
         match v_go_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "go_version", arg in
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
       let bnds =
         match v_docker_registry_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_registry_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_registry_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_registry_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_registry_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_registry_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_image_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_image_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_image_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_image_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_image", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site_config__application_stack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__application_stack

[@@@deriving.end]

type site_config__auto_heal_setting__action = {
  action_type : string prop;
  minimum_process_execution_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__auto_heal_setting__action) -> ()

let yojson_of_site_config__auto_heal_setting__action =
  (function
   | {
       action_type = v_action_type;
       minimum_process_execution_time =
         v_minimum_process_execution_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_minimum_process_execution_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_process_execution_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_type in
         ("action_type", arg) :: bnds
       in
       `Assoc bnds
    : site_config__auto_heal_setting__action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__auto_heal_setting__action

[@@@deriving.end]

type site_config__auto_heal_setting__trigger__requests = {
  count : float prop;
  interval : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : site_config__auto_heal_setting__trigger__requests) -> ()

let yojson_of_site_config__auto_heal_setting__trigger__requests =
  (function
   | { count = v_count; interval = v_interval } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : site_config__auto_heal_setting__trigger__requests ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__auto_heal_setting__trigger__requests

[@@@deriving.end]

type site_config__auto_heal_setting__trigger__slow_request = {
  count : float prop;
  interval : string prop;
  path : string prop option; [@option]
  time_taken : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : site_config__auto_heal_setting__trigger__slow_request) ->
  ()

let yojson_of_site_config__auto_heal_setting__trigger__slow_request =
  (function
   | {
       count = v_count;
       interval = v_interval;
       path = v_path;
       time_taken = v_time_taken;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_taken in
         ("time_taken", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : site_config__auto_heal_setting__trigger__slow_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_site_config__auto_heal_setting__trigger__slow_request

[@@@deriving.end]

type site_config__auto_heal_setting__trigger__slow_request_with_path = {
  count : float prop;
  interval : string prop;
  path : string prop option; [@option]
  time_taken : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       site_config__auto_heal_setting__trigger__slow_request_with_path) ->
  ()

let yojson_of_site_config__auto_heal_setting__trigger__slow_request_with_path
    =
  (function
   | {
       count = v_count;
       interval = v_interval;
       path = v_path;
       time_taken = v_time_taken;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_taken in
         ("time_taken", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : site_config__auto_heal_setting__trigger__slow_request_with_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_site_config__auto_heal_setting__trigger__slow_request_with_path

[@@@deriving.end]

type site_config__auto_heal_setting__trigger__status_code = {
  count : float prop;
  interval : string prop;
  path : string prop option; [@option]
  status_code_range : string prop;
  sub_status : float prop option; [@option]
  win32_status_code : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : site_config__auto_heal_setting__trigger__status_code) -> ()

let yojson_of_site_config__auto_heal_setting__trigger__status_code =
  (function
   | {
       count = v_count;
       interval = v_interval;
       path = v_path;
       status_code_range = v_status_code_range;
       sub_status = v_sub_status;
       win32_status_code = v_win32_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_win32_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "win32_status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sub_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sub_status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_status_code_range
         in
         ("status_code_range", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : site_config__auto_heal_setting__trigger__status_code ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_site_config__auto_heal_setting__trigger__status_code

[@@@deriving.end]

type site_config__auto_heal_setting__trigger = {
  requests : site_config__auto_heal_setting__trigger__requests list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  slow_request :
    site_config__auto_heal_setting__trigger__slow_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  slow_request_with_path :
    site_config__auto_heal_setting__trigger__slow_request_with_path
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  status_code :
    site_config__auto_heal_setting__trigger__status_code list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__auto_heal_setting__trigger) -> ()

let yojson_of_site_config__auto_heal_setting__trigger =
  (function
   | {
       requests = v_requests;
       slow_request = v_slow_request;
       slow_request_with_path = v_slow_request_with_path;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_status_code then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__auto_heal_setting__trigger__status_code)
               v_status_code
           in
           let bnd = "status_code", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_slow_request_with_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__auto_heal_setting__trigger__slow_request_with_path)
               v_slow_request_with_path
           in
           let bnd = "slow_request_with_path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_slow_request then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__auto_heal_setting__trigger__slow_request)
               v_slow_request
           in
           let bnd = "slow_request", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_requests then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__auto_heal_setting__trigger__requests)
               v_requests
           in
           let bnd = "requests", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__auto_heal_setting__trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__auto_heal_setting__trigger

[@@@deriving.end]

type site_config__auto_heal_setting = {
  action : site_config__auto_heal_setting__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trigger : site_config__auto_heal_setting__trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__auto_heal_setting) -> ()

let yojson_of_site_config__auto_heal_setting =
  (function
   | { action = v_action; trigger = v_trigger } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_trigger then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__auto_heal_setting__trigger)
               v_trigger
           in
           let bnd = "trigger", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_site_config__auto_heal_setting__action)
               v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : site_config__auto_heal_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__auto_heal_setting

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
  auto_heal_enabled : bool prop option; [@option]
  auto_swap_slot_name : string prop option; [@option]
  container_registry_managed_identity_client_id : string prop option;
      [@option]
  container_registry_use_managed_identity : bool prop option;
      [@option]
  default_documents : string prop list option; [@option]
  ftps_state : string prop option; [@option]
  health_check_eviction_time_in_min : float prop option; [@option]
  health_check_path : string prop option; [@option]
  http2_enabled : bool prop option; [@option]
  ip_restriction_default_action : string prop option; [@option]
  load_balancing_mode : string prop option; [@option]
  local_mysql_enabled : bool prop option; [@option]
  managed_pipeline_mode : string prop option; [@option]
  minimum_tls_version : string prop option; [@option]
  remote_debugging_enabled : bool prop option; [@option]
  remote_debugging_version : string prop option; [@option]
  scm_ip_restriction_default_action : string prop option; [@option]
  scm_minimum_tls_version : string prop option; [@option]
  scm_use_main_ip_restriction : bool prop option; [@option]
  use_32_bit_worker : bool prop option; [@option]
  vnet_route_all_enabled : bool prop option; [@option]
  websockets_enabled : bool prop option; [@option]
  worker_count : float prop option; [@option]
  application_stack : site_config__application_stack list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  auto_heal_setting : site_config__auto_heal_setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cors : site_config__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_restriction : site_config__ip_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scm_ip_restriction : site_config__scm_ip_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       auto_heal_enabled = v_auto_heal_enabled;
       auto_swap_slot_name = v_auto_swap_slot_name;
       container_registry_managed_identity_client_id =
         v_container_registry_managed_identity_client_id;
       container_registry_use_managed_identity =
         v_container_registry_use_managed_identity;
       default_documents = v_default_documents;
       ftps_state = v_ftps_state;
       health_check_eviction_time_in_min =
         v_health_check_eviction_time_in_min;
       health_check_path = v_health_check_path;
       http2_enabled = v_http2_enabled;
       ip_restriction_default_action =
         v_ip_restriction_default_action;
       load_balancing_mode = v_load_balancing_mode;
       local_mysql_enabled = v_local_mysql_enabled;
       managed_pipeline_mode = v_managed_pipeline_mode;
       minimum_tls_version = v_minimum_tls_version;
       remote_debugging_enabled = v_remote_debugging_enabled;
       remote_debugging_version = v_remote_debugging_version;
       scm_ip_restriction_default_action =
         v_scm_ip_restriction_default_action;
       scm_minimum_tls_version = v_scm_minimum_tls_version;
       scm_use_main_ip_restriction = v_scm_use_main_ip_restriction;
       use_32_bit_worker = v_use_32_bit_worker;
       vnet_route_all_enabled = v_vnet_route_all_enabled;
       websockets_enabled = v_websockets_enabled;
       worker_count = v_worker_count;
       application_stack = v_application_stack;
       auto_heal_setting = v_auto_heal_setting;
       cors = v_cors;
       ip_restriction = v_ip_restriction;
       scm_ip_restriction = v_scm_ip_restriction;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scm_ip_restriction then bnds
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
         if Stdlib.( = ) [] v_ip_restriction then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__ip_restriction)
               v_ip_restriction
           in
           let bnd = "ip_restriction", arg in
           bnd :: bnds
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
         if Stdlib.( = ) [] v_auto_heal_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__auto_heal_setting)
               v_auto_heal_setting
           in
           let bnd = "auto_heal_setting", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_stack then bnds
         else
           let arg =
             (yojson_of_list yojson_of_site_config__application_stack)
               v_application_stack
           in
           let bnd = "application_stack", arg in
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
         match v_local_mysql_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_mysql_enabled", arg in
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
         match v_container_registry_use_managed_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "container_registry_use_managed_identity", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_container_registry_managed_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "container_registry_managed_identity_client_id", arg
             in
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
         match v_auto_heal_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_heal_enabled", arg in
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

type azurerm_linux_web_app_slot = {
  app_service_id : string prop;
  app_settings : string prop Tf_core.assoc option; [@option]
  client_affinity_enabled : bool prop option; [@option]
  client_certificate_enabled : bool prop option; [@option]
  client_certificate_exclusion_paths : string prop option; [@option]
  client_certificate_mode : string prop option; [@option]
  enabled : bool prop option; [@option]
  ftp_publish_basic_authentication_enabled : bool prop option;
      [@option]
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  key_vault_reference_identity_id : string prop option; [@option]
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  service_plan_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  virtual_network_subnet_id : string prop option; [@option]
  webdeploy_publish_basic_authentication_enabled : bool prop option;
      [@option]
  zip_deploy_file : string prop option; [@option]
  auth_settings : auth_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_settings_v2 : auth_settings_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  backup : backup list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  connection_string : connection_string list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logs : logs list; [@default []] [@yojson_drop_default Stdlib.( = )]
  site_config : site_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_account : storage_account list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_linux_web_app_slot) -> ()

let yojson_of_azurerm_linux_web_app_slot =
  (function
   | {
       app_service_id = v_app_service_id;
       app_settings = v_app_settings;
       client_affinity_enabled = v_client_affinity_enabled;
       client_certificate_enabled = v_client_certificate_enabled;
       client_certificate_exclusion_paths =
         v_client_certificate_exclusion_paths;
       client_certificate_mode = v_client_certificate_mode;
       enabled = v_enabled;
       ftp_publish_basic_authentication_enabled =
         v_ftp_publish_basic_authentication_enabled;
       https_only = v_https_only;
       id = v_id;
       key_vault_reference_identity_id =
         v_key_vault_reference_identity_id;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       service_plan_id = v_service_plan_id;
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
       logs = v_logs;
       site_config = v_site_config;
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
         if Stdlib.( = ) [] v_storage_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_account)
               v_storage_account
           in
           let bnd = "storage_account", arg in
           bnd :: bnds
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
         if Stdlib.( = ) [] v_logs then bnds
         else
           let arg = (yojson_of_list yojson_of_logs) v_logs in
           let bnd = "logs", arg in
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
         if Stdlib.( = ) [] v_backup then bnds
         else
           let arg = (yojson_of_list yojson_of_backup) v_backup in
           let bnd = "backup", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auth_settings_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_settings_v2)
               v_auth_settings_v2
           in
           let bnd = "auth_settings_v2", arg in
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_plan_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_plan_id", arg in
             bnd :: bnds
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
         match v_client_affinity_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_affinity_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "app_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_service_id
         in
         ("app_service_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_linux_web_app_slot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_linux_web_app_slot

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

let logs__application_logs__azure_blob_storage ~level
    ~retention_in_days ~sas_url () :
    logs__application_logs__azure_blob_storage =
  { level; retention_in_days; sas_url }

let logs__application_logs ?(azure_blob_storage = [])
    ~file_system_level () : logs__application_logs =
  { file_system_level; azure_blob_storage }

let logs__http_logs__azure_blob_storage ?retention_in_days ~sas_url
    () : logs__http_logs__azure_blob_storage =
  { retention_in_days; sas_url }

let logs__http_logs__file_system ~retention_in_days ~retention_in_mb
    () : logs__http_logs__file_system =
  { retention_in_days; retention_in_mb }

let logs__http_logs ?(azure_blob_storage = []) ?(file_system = []) ()
    : logs__http_logs =
  { azure_blob_storage; file_system }

let logs ?detailed_error_messages ?failed_request_tracing
    ?(application_logs = []) ?(http_logs = []) () : logs =
  {
    detailed_error_messages;
    failed_request_tracing;
    application_logs;
    http_logs;
  }

let site_config__application_stack ?docker_image ?docker_image_name
    ?docker_image_tag ?docker_registry_password ?docker_registry_url
    ?docker_registry_username ?dotnet_version ?go_version
    ?java_server ?java_server_version ?java_version ?node_version
    ?php_version ?python_version ?ruby_version () :
    site_config__application_stack =
  {
    docker_image;
    docker_image_name;
    docker_image_tag;
    docker_registry_password;
    docker_registry_url;
    docker_registry_username;
    dotnet_version;
    go_version;
    java_server;
    java_server_version;
    java_version;
    node_version;
    php_version;
    python_version;
    ruby_version;
  }

let site_config__auto_heal_setting__action
    ?minimum_process_execution_time ~action_type () :
    site_config__auto_heal_setting__action =
  { action_type; minimum_process_execution_time }

let site_config__auto_heal_setting__trigger__requests ~count
    ~interval () : site_config__auto_heal_setting__trigger__requests
    =
  { count; interval }

let site_config__auto_heal_setting__trigger__slow_request ?path
    ~count ~interval ~time_taken () :
    site_config__auto_heal_setting__trigger__slow_request =
  { count; interval; path; time_taken }

let site_config__auto_heal_setting__trigger__slow_request_with_path
    ?path ~count ~interval ~time_taken () :
    site_config__auto_heal_setting__trigger__slow_request_with_path =
  { count; interval; path; time_taken }

let site_config__auto_heal_setting__trigger__status_code ?path
    ?sub_status ?win32_status_code ~count ~interval
    ~status_code_range () :
    site_config__auto_heal_setting__trigger__status_code =
  {
    count;
    interval;
    path;
    status_code_range;
    sub_status;
    win32_status_code;
  }

let site_config__auto_heal_setting__trigger ?(requests = [])
    ?(slow_request = []) ?(slow_request_with_path = [])
    ?(status_code = []) () : site_config__auto_heal_setting__trigger
    =
  { requests; slow_request; slow_request_with_path; status_code }

let site_config__auto_heal_setting ?(action = []) ?(trigger = []) ()
    : site_config__auto_heal_setting =
  { action; trigger }

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
    ?app_command_line ?auto_heal_enabled ?auto_swap_slot_name
    ?container_registry_managed_identity_client_id
    ?container_registry_use_managed_identity ?default_documents
    ?ftps_state ?health_check_eviction_time_in_min ?health_check_path
    ?http2_enabled ?ip_restriction_default_action
    ?load_balancing_mode ?local_mysql_enabled ?managed_pipeline_mode
    ?minimum_tls_version ?remote_debugging_enabled
    ?remote_debugging_version ?scm_ip_restriction_default_action
    ?scm_minimum_tls_version ?scm_use_main_ip_restriction
    ?use_32_bit_worker ?vnet_route_all_enabled ?websockets_enabled
    ?worker_count ?(application_stack = []) ?(auto_heal_setting = [])
    ?(cors = []) ?(ip_restriction = []) ?(scm_ip_restriction = []) ()
    : site_config =
  {
    always_on;
    api_definition_url;
    api_management_api_id;
    app_command_line;
    auto_heal_enabled;
    auto_swap_slot_name;
    container_registry_managed_identity_client_id;
    container_registry_use_managed_identity;
    default_documents;
    ftps_state;
    health_check_eviction_time_in_min;
    health_check_path;
    http2_enabled;
    ip_restriction_default_action;
    load_balancing_mode;
    local_mysql_enabled;
    managed_pipeline_mode;
    minimum_tls_version;
    remote_debugging_enabled;
    remote_debugging_version;
    scm_ip_restriction_default_action;
    scm_minimum_tls_version;
    scm_use_main_ip_restriction;
    use_32_bit_worker;
    vnet_route_all_enabled;
    websockets_enabled;
    worker_count;
    application_stack;
    auto_heal_setting;
    cors;
    ip_restriction;
    scm_ip_restriction;
  }

let storage_account ?mount_path ~access_key ~account_name ~name
    ~share_name ~type_ () : storage_account =
  { access_key; account_name; mount_path; name; share_name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_linux_web_app_slot ?app_settings ?client_affinity_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?enabled
    ?ftp_publish_basic_authentication_enabled ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?service_plan_id ?tags ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?zip_deploy_file
    ?(auth_settings = []) ?(auth_settings_v2 = []) ?(backup = [])
    ?(identity = []) ?(logs = []) ?timeouts ~app_service_id ~name
    ~connection_string ~site_config ~storage_account () :
    azurerm_linux_web_app_slot =
  {
    app_service_id;
    app_settings;
    client_affinity_enabled;
    client_certificate_enabled;
    client_certificate_exclusion_paths;
    client_certificate_mode;
    enabled;
    ftp_publish_basic_authentication_enabled;
    https_only;
    id;
    key_vault_reference_identity_id;
    name;
    public_network_access_enabled;
    service_plan_id;
    tags;
    virtual_network_subnet_id;
    webdeploy_publish_basic_authentication_enabled;
    zip_deploy_file;
    auth_settings;
    auth_settings_v2;
    backup;
    connection_string;
    identity;
    logs;
    site_config;
    storage_account;
    timeouts;
  }

type t = {
  tf_name : string;
  app_metadata : string Tf_core.assoc prop;
  app_service_id : string prop;
  app_settings : string Tf_core.assoc prop;
  client_affinity_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  custom_domain_verification_id : string prop;
  default_hostname : string prop;
  enabled : bool prop;
  ftp_publish_basic_authentication_enabled : bool prop;
  hosting_environment_id : string prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  kind : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  public_network_access_enabled : bool prop;
  service_plan_id : string prop;
  site_credential : site_credential list prop;
  tags : string Tf_core.assoc prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
  zip_deploy_file : string prop;
}

let make ?app_settings ?client_affinity_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?enabled
    ?ftp_publish_basic_authentication_enabled ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?service_plan_id ?tags ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?zip_deploy_file
    ?(auth_settings = []) ?(auth_settings_v2 = []) ?(backup = [])
    ?(identity = []) ?(logs = []) ?timeouts ~app_service_id ~name
    ~connection_string ~site_config ~storage_account __id =
  let __type = "azurerm_linux_web_app_slot" in
  let __attrs =
    ({
       tf_name = __id;
       app_metadata = Prop.computed __type __id "app_metadata";
       app_service_id = Prop.computed __type __id "app_service_id";
       app_settings = Prop.computed __type __id "app_settings";
       client_affinity_enabled =
         Prop.computed __type __id "client_affinity_enabled";
       client_certificate_enabled =
         Prop.computed __type __id "client_certificate_enabled";
       client_certificate_exclusion_paths =
         Prop.computed __type __id
           "client_certificate_exclusion_paths";
       client_certificate_mode =
         Prop.computed __type __id "client_certificate_mode";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       enabled = Prop.computed __type __id "enabled";
       ftp_publish_basic_authentication_enabled =
         Prop.computed __type __id
           "ftp_publish_basic_authentication_enabled";
       hosting_environment_id =
         Prop.computed __type __id "hosting_environment_id";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       key_vault_reference_identity_id =
         Prop.computed __type __id "key_vault_reference_identity_id";
       kind = Prop.computed __type __id "kind";
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
       service_plan_id = Prop.computed __type __id "service_plan_id";
       site_credential = Prop.computed __type __id "site_credential";
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
      yojson_of_azurerm_linux_web_app_slot
        (azurerm_linux_web_app_slot ?app_settings
           ?client_affinity_enabled ?client_certificate_enabled
           ?client_certificate_exclusion_paths
           ?client_certificate_mode ?enabled
           ?ftp_publish_basic_authentication_enabled ?https_only ?id
           ?key_vault_reference_identity_id
           ?public_network_access_enabled ?service_plan_id ?tags
           ?virtual_network_subnet_id
           ?webdeploy_publish_basic_authentication_enabled
           ?zip_deploy_file ~auth_settings ~auth_settings_v2 ~backup
           ~identity ~logs ?timeouts ~app_service_id ~name
           ~connection_string ~site_config ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?client_affinity_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?enabled
    ?ftp_publish_basic_authentication_enabled ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?service_plan_id ?tags ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?zip_deploy_file
    ?(auth_settings = []) ?(auth_settings_v2 = []) ?(backup = [])
    ?(identity = []) ?(logs = []) ?timeouts ~app_service_id ~name
    ~connection_string ~site_config ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?client_affinity_enabled
      ?client_certificate_enabled ?client_certificate_exclusion_paths
      ?client_certificate_mode ?enabled
      ?ftp_publish_basic_authentication_enabled ?https_only ?id
      ?key_vault_reference_identity_id ?public_network_access_enabled
      ?service_plan_id ?tags ?virtual_network_subnet_id
      ?webdeploy_publish_basic_authentication_enabled
      ?zip_deploy_file ~auth_settings ~auth_settings_v2 ~backup
      ~identity ~logs ?timeouts ~app_service_id ~name
      ~connection_string ~site_config ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
