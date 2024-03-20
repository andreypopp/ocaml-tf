(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type auth_settings__twitter = {
  consumer_key : string prop;
  consumer_secret : string prop;
  consumer_secret_setting_name : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_consumer_secret_setting_name
         in
         ("consumer_secret_setting_name", arg) :: bnds
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

type auth_settings__microsoft = {
  client_id : string prop;
  client_secret : string prop;
  client_secret_setting_name : string prop;
  oauth_scopes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_oauth_scopes
         in
         ("oauth_scopes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
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

type auth_settings__google = {
  client_id : string prop;
  client_secret : string prop;
  client_secret_setting_name : string prop;
  oauth_scopes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_oauth_scopes
         in
         ("oauth_scopes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
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

type auth_settings__github = {
  client_id : string prop;
  client_secret : string prop;
  client_secret_setting_name : string prop;
  oauth_scopes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_oauth_scopes
         in
         ("oauth_scopes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
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
    : auth_settings__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__github

[@@@deriving.end]

type auth_settings__facebook = {
  app_id : string prop;
  app_secret : string prop;
  app_secret_setting_name : string prop;
  oauth_scopes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_oauth_scopes
         in
         ("oauth_scopes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_secret_setting_name
         in
         ("app_secret_setting_name", arg) :: bnds
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

type auth_settings__active_directory = {
  allowed_audiences : string prop list;
  client_id : string prop;
  client_secret : string prop;
  client_secret_setting_name : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_audiences
         in
         ("allowed_audiences", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings__active_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings__active_directory

[@@@deriving.end]

type auth_settings = {
  active_directory : auth_settings__active_directory list;
  additional_login_parameters : (string * string prop) list;
  allowed_external_redirect_urls : string prop list;
  default_provider : string prop;
  enabled : bool prop;
  facebook : auth_settings__facebook list;
  github : auth_settings__github list;
  google : auth_settings__google list;
  issuer : string prop;
  microsoft : auth_settings__microsoft list;
  runtime_version : string prop;
  token_refresh_extension_hours : float prop;
  token_store_enabled : bool prop;
  twitter : auth_settings__twitter list;
  unauthenticated_client_action : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings) -> ()

let yojson_of_auth_settings =
  (function
   | {
       active_directory = v_active_directory;
       additional_login_parameters = v_additional_login_parameters;
       allowed_external_redirect_urls =
         v_allowed_external_redirect_urls;
       default_provider = v_default_provider;
       enabled = v_enabled;
       facebook = v_facebook;
       github = v_github;
       google = v_google;
       issuer = v_issuer;
       microsoft = v_microsoft;
       runtime_version = v_runtime_version;
       token_refresh_extension_hours =
         v_token_refresh_extension_hours;
       token_store_enabled = v_token_store_enabled;
       twitter = v_twitter;
       unauthenticated_client_action =
         v_unauthenticated_client_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_unauthenticated_client_action
         in
         ("unauthenticated_client_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings__twitter v_twitter
         in
         ("twitter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_token_store_enabled
         in
         ("token_store_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_token_refresh_extension_hours
         in
         ("token_refresh_extension_hours", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_runtime_version
         in
         ("runtime_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings__microsoft
             v_microsoft
         in
         ("microsoft", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings__google v_google
         in
         ("google", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings__github v_github
         in
         ("github", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings__facebook
             v_facebook
         in
         ("facebook", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_provider
         in
         ("default_provider", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_external_redirect_urls
         in
         ("allowed_external_redirect_urls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_additional_login_parameters
         in
         ("additional_login_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings__active_directory
             v_active_directory
         in
         ("active_directory", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings

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

type auth_settings_v2__microsoft_v2 = {
  allowed_audiences : string prop list;
  client_id : string prop;
  client_secret_setting_name : string prop;
  login_scopes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_login_scopes
         in
         ("login_scopes", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_audiences
         in
         ("allowed_audiences", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__microsoft_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__microsoft_v2

[@@@deriving.end]

type auth_settings_v2__login = {
  allowed_external_redirect_urls : string prop list;
  cookie_expiration_convention : string prop;
  cookie_expiration_time : string prop;
  logout_endpoint : string prop;
  nonce_expiration_time : string prop;
  preserve_url_fragments_for_logins : bool prop;
  token_refresh_extension_time : float prop;
  token_store_enabled : bool prop;
  token_store_path : string prop;
  token_store_sas_setting_name : string prop;
  validate_nonce : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_validate_nonce in
         ("validate_nonce", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_token_store_sas_setting_name
         in
         ("token_store_sas_setting_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_token_store_path
         in
         ("token_store_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_token_store_enabled
         in
         ("token_store_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_token_refresh_extension_time
         in
         ("token_refresh_extension_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_preserve_url_fragments_for_logins
         in
         ("preserve_url_fragments_for_logins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_nonce_expiration_time
         in
         ("nonce_expiration_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logout_endpoint
         in
         ("logout_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cookie_expiration_time
         in
         ("cookie_expiration_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cookie_expiration_convention
         in
         ("cookie_expiration_convention", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_external_redirect_urls
         in
         ("allowed_external_redirect_urls", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__login -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__login

[@@@deriving.end]

type auth_settings_v2__google_v2 = {
  allowed_audiences : string prop list;
  client_id : string prop;
  client_secret_setting_name : string prop;
  login_scopes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_login_scopes
         in
         ("login_scopes", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_audiences
         in
         ("allowed_audiences", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__google_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__google_v2

[@@@deriving.end]

type auth_settings_v2__github_v2 = {
  client_id : string prop;
  client_secret_setting_name : string prop;
  login_scopes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_login_scopes
         in
         ("login_scopes", arg) :: bnds
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

type auth_settings_v2__facebook_v2 = {
  app_id : string prop;
  app_secret_setting_name : string prop;
  graph_api_version : string prop;
  login_scopes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_login_scopes
         in
         ("login_scopes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_graph_api_version
         in
         ("graph_api_version", arg) :: bnds
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

type auth_settings_v2__custom_oidc_v2 = {
  authorisation_endpoint : string prop;
  certification_uri : string prop;
  client_credential_method : string prop;
  client_id : string prop;
  client_secret_setting_name : string prop;
  issuer_endpoint : string prop;
  name : string prop;
  name_claim_type : string prop;
  openid_configuration_endpoint : string prop;
  scopes : string prop list;
  token_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__custom_oidc_v2) -> ()

let yojson_of_auth_settings_v2__custom_oidc_v2 =
  (function
   | {
       authorisation_endpoint = v_authorisation_endpoint;
       certification_uri = v_certification_uri;
       client_credential_method = v_client_credential_method;
       client_id = v_client_id;
       client_secret_setting_name = v_client_secret_setting_name;
       issuer_endpoint = v_issuer_endpoint;
       name = v_name;
       name_claim_type = v_name_claim_type;
       openid_configuration_endpoint =
         v_openid_configuration_endpoint;
       scopes = v_scopes;
       token_endpoint = v_token_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_token_endpoint
         in
         ("token_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_scopes
         in
         ("scopes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_openid_configuration_endpoint
         in
         ("openid_configuration_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_name_claim_type
         in
         ("name_claim_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_issuer_endpoint
         in
         ("issuer_endpoint", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_client_credential_method
         in
         ("client_credential_method", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certification_uri
         in
         ("certification_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorisation_endpoint
         in
         ("authorisation_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__custom_oidc_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__custom_oidc_v2

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

type auth_settings_v2__apple_v2 = {
  client_id : string prop;
  client_secret_setting_name : string prop;
  login_scopes : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2__apple_v2) -> ()

let yojson_of_auth_settings_v2__apple_v2 =
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_login_scopes
         in
         ("login_scopes", arg) :: bnds
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

type auth_settings_v2__active_directory_v2 = {
  allowed_applications : string prop list;
  allowed_audiences : string prop list;
  allowed_groups : string prop list;
  allowed_identities : string prop list;
  client_id : string prop;
  client_secret_certificate_thumbprint : string prop;
  client_secret_setting_name : string prop;
  jwt_allowed_client_applications : string prop list;
  jwt_allowed_groups : string prop list;
  login_parameters : (string * string prop) list;
  tenant_auth_endpoint : string prop;
  www_authentication_disabled : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool
             v_www_authentication_disabled
         in
         ("www_authentication_disabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_tenant_auth_endpoint
         in
         ("tenant_auth_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_login_parameters
         in
         ("login_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_jwt_allowed_groups
         in
         ("jwt_allowed_groups", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_jwt_allowed_client_applications
         in
         ("jwt_allowed_client_applications", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_setting_name
         in
         ("client_secret_setting_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_client_secret_certificate_thumbprint
         in
         ("client_secret_certificate_thumbprint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_identities
         in
         ("allowed_identities", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_groups
         in
         ("allowed_groups", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_audiences
         in
         ("allowed_audiences", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_applications
         in
         ("allowed_applications", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2__active_directory_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2__active_directory_v2

[@@@deriving.end]

type auth_settings_v2 = {
  active_directory_v2 : auth_settings_v2__active_directory_v2 list;
  apple_v2 : auth_settings_v2__apple_v2 list;
  auth_enabled : bool prop;
  azure_static_web_app_v2 :
    auth_settings_v2__azure_static_web_app_v2 list;
  config_file_path : string prop;
  custom_oidc_v2 : auth_settings_v2__custom_oidc_v2 list;
  default_provider : string prop;
  excluded_paths : string prop list;
  facebook_v2 : auth_settings_v2__facebook_v2 list;
  forward_proxy_convention : string prop;
  forward_proxy_custom_host_header_name : string prop;
  forward_proxy_custom_scheme_header_name : string prop;
  github_v2 : auth_settings_v2__github_v2 list;
  google_v2 : auth_settings_v2__google_v2 list;
  http_route_api_prefix : string prop;
  login : auth_settings_v2__login list;
  microsoft_v2 : auth_settings_v2__microsoft_v2 list;
  require_authentication : bool prop;
  require_https : bool prop;
  runtime_version : string prop;
  twitter_v2 : auth_settings_v2__twitter_v2 list;
  unauthenticated_action : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_settings_v2) -> ()

let yojson_of_auth_settings_v2 =
  (function
   | {
       active_directory_v2 = v_active_directory_v2;
       apple_v2 = v_apple_v2;
       auth_enabled = v_auth_enabled;
       azure_static_web_app_v2 = v_azure_static_web_app_v2;
       config_file_path = v_config_file_path;
       custom_oidc_v2 = v_custom_oidc_v2;
       default_provider = v_default_provider;
       excluded_paths = v_excluded_paths;
       facebook_v2 = v_facebook_v2;
       forward_proxy_convention = v_forward_proxy_convention;
       forward_proxy_custom_host_header_name =
         v_forward_proxy_custom_host_header_name;
       forward_proxy_custom_scheme_header_name =
         v_forward_proxy_custom_scheme_header_name;
       github_v2 = v_github_v2;
       google_v2 = v_google_v2;
       http_route_api_prefix = v_http_route_api_prefix;
       login = v_login;
       microsoft_v2 = v_microsoft_v2;
       require_authentication = v_require_authentication;
       require_https = v_require_https;
       runtime_version = v_runtime_version;
       twitter_v2 = v_twitter_v2;
       unauthenticated_action = v_unauthenticated_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_unauthenticated_action
         in
         ("unauthenticated_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings_v2__twitter_v2
             v_twitter_v2
         in
         ("twitter_v2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_runtime_version
         in
         ("runtime_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_require_https in
         ("require_https", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_require_authentication
         in
         ("require_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings_v2__microsoft_v2
             v_microsoft_v2
         in
         ("microsoft_v2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings_v2__login v_login
         in
         ("login", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_http_route_api_prefix
         in
         ("http_route_api_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings_v2__google_v2
             v_google_v2
         in
         ("google_v2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings_v2__github_v2
             v_github_v2
         in
         ("github_v2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_forward_proxy_custom_scheme_header_name
         in
         ("forward_proxy_custom_scheme_header_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_forward_proxy_custom_host_header_name
         in
         ("forward_proxy_custom_host_header_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_forward_proxy_convention
         in
         ("forward_proxy_convention", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings_v2__facebook_v2
             v_facebook_v2
         in
         ("facebook_v2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_excluded_paths
         in
         ("excluded_paths", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_provider
         in
         ("default_provider", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings_v2__custom_oidc_v2
             v_custom_oidc_v2
         in
         ("custom_oidc_v2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_config_file_path
         in
         ("config_file_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_settings_v2__azure_static_web_app_v2
             v_azure_static_web_app_v2
         in
         ("azure_static_web_app_v2", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auth_enabled in
         ("auth_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_settings_v2__apple_v2
             v_apple_v2
         in
         ("apple_v2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_settings_v2__active_directory_v2
             v_active_directory_v2
         in
         ("active_directory_v2", arg) :: bnds
       in
       `Assoc bnds
    : auth_settings_v2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_settings_v2

[@@@deriving.end]

type backup__schedule = {
  frequency_interval : float prop;
  frequency_unit : string prop;
  keep_at_least_one_backup : bool prop;
  last_execution_time : string prop;
  retention_period_days : float prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup__schedule) -> ()

let yojson_of_backup__schedule =
  (function
   | {
       frequency_interval = v_frequency_interval;
       frequency_unit = v_frequency_unit;
       keep_at_least_one_backup = v_keep_at_least_one_backup;
       last_execution_time = v_last_execution_time;
       retention_period_days = v_retention_period_days;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_period_days
         in
         ("retention_period_days", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_execution_time
         in
         ("last_execution_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_keep_at_least_one_backup
         in
         ("keep_at_least_one_backup", arg) :: bnds
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
  enabled : bool prop;
  name : string prop;
  schedule : backup__schedule list;
  storage_account_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup) -> ()

let yojson_of_backup =
  (function
   | {
       enabled = v_enabled;
       name = v_name;
       schedule = v_schedule;
       storage_account_url = v_storage_account_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_url
         in
         ("storage_account_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_backup__schedule v_schedule
         in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
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
  identity_ids : string prop list;
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
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
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
  x_fd_health_probe : string prop list;
  x_forwarded_for : string prop list;
  x_forwarded_host : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_forwarded_host
         in
         ("x_forwarded_host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_forwarded_for
         in
         ("x_forwarded_for", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_fd_health_probe
         in
         ("x_fd_health_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_azure_fdid
         in
         ("x_azure_fdid", arg) :: bnds
       in
       `Assoc bnds
    : site_config__scm_ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__scm_ip_restriction__headers

[@@@deriving.end]

type site_config__scm_ip_restriction = {
  action : string prop;
  description : string prop;
  headers : site_config__scm_ip_restriction__headers list;
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
         let arg =
           yojson_of_list
             yojson_of_site_config__scm_ip_restriction__headers
             v_headers
         in
         ("headers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
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

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
  x_fd_health_probe : string prop list;
  x_forwarded_for : string prop list;
  x_forwarded_host : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_forwarded_host
         in
         ("x_forwarded_host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_forwarded_for
         in
         ("x_forwarded_for", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_fd_health_probe
         in
         ("x_fd_health_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_x_azure_fdid
         in
         ("x_azure_fdid", arg) :: bnds
       in
       `Assoc bnds
    : site_config__ip_restriction__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__ip_restriction__headers

[@@@deriving.end]

type site_config__ip_restriction = {
  action : string prop;
  description : string prop;
  headers : site_config__ip_restriction__headers list;
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
         let arg =
           yojson_of_list
             yojson_of_site_config__ip_restriction__headers v_headers
         in
         ("headers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
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

type site_config__cors = {
  allowed_origins : string prop list;
  support_credentials : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_support_credentials
         in
         ("support_credentials", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_origins
         in
         ("allowed_origins", arg) :: bnds
       in
       `Assoc bnds
    : site_config__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__cors

[@@@deriving.end]

type site_config__application_stack__docker = {
  image_name : string prop;
  image_tag : string prop;
  registry_password : string prop;
  registry_url : string prop;
  registry_username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__application_stack__docker) -> ()

let yojson_of_site_config__application_stack__docker =
  (function
   | {
       image_name = v_image_name;
       image_tag = v_image_tag;
       registry_password = v_registry_password;
       registry_url = v_registry_url;
       registry_username = v_registry_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registry_username
         in
         ("registry_username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_url in
         ("registry_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registry_password
         in
         ("registry_password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_tag in
         ("image_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
       in
       `Assoc bnds
    : site_config__application_stack__docker ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__application_stack__docker

[@@@deriving.end]

type site_config__application_stack = {
  docker : site_config__application_stack__docker list;
  dotnet_version : string prop;
  java_version : string prop;
  node_version : string prop;
  powershell_core_version : string prop;
  python_version : string prop;
  use_custom_runtime : bool prop;
  use_dotnet_isolated_runtime : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site_config__application_stack) -> ()

let yojson_of_site_config__application_stack =
  (function
   | {
       docker = v_docker;
       dotnet_version = v_dotnet_version;
       java_version = v_java_version;
       node_version = v_node_version;
       powershell_core_version = v_powershell_core_version;
       python_version = v_python_version;
       use_custom_runtime = v_use_custom_runtime;
       use_dotnet_isolated_runtime = v_use_dotnet_isolated_runtime;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_use_dotnet_isolated_runtime
         in
         ("use_dotnet_isolated_runtime", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_custom_runtime
         in
         ("use_custom_runtime", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_python_version
         in
         ("python_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_powershell_core_version
         in
         ("powershell_core_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_version in
         ("node_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_java_version in
         ("java_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dotnet_version
         in
         ("dotnet_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_site_config__application_stack__docker
             v_docker
         in
         ("docker", arg) :: bnds
       in
       `Assoc bnds
    : site_config__application_stack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__application_stack

[@@@deriving.end]

type site_config__app_service_logs = {
  disk_quota_mb : float prop;
  retention_period_days : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_retention_period_days
         in
         ("retention_period_days", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_quota_mb in
         ("disk_quota_mb", arg) :: bnds
       in
       `Assoc bnds
    : site_config__app_service_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config__app_service_logs

[@@@deriving.end]

type site_config = {
  always_on : bool prop;
  api_definition_url : string prop;
  api_management_api_id : string prop;
  app_command_line : string prop;
  app_scale_limit : float prop;
  app_service_logs : site_config__app_service_logs list;
  application_insights_connection_string : string prop;
  application_insights_key : string prop;
  application_stack : site_config__application_stack list;
  container_registry_managed_identity_client_id : string prop;
  container_registry_use_managed_identity : bool prop;
  cors : site_config__cors list;
  default_documents : string prop list;
  detailed_error_logging_enabled : bool prop;
  elastic_instance_minimum : float prop;
  ftps_state : string prop;
  health_check_eviction_time_in_min : float prop;
  health_check_path : string prop;
  http2_enabled : bool prop;
  ip_restriction : site_config__ip_restriction list;
  ip_restriction_default_action : string prop;
  linux_fx_version : string prop;
  load_balancing_mode : string prop;
  managed_pipeline_mode : string prop;
  minimum_tls_version : string prop;
  pre_warmed_instance_count : float prop;
  remote_debugging_enabled : bool prop;
  remote_debugging_version : string prop;
  runtime_scale_monitoring_enabled : bool prop;
  scm_ip_restriction : site_config__scm_ip_restriction list;
  scm_ip_restriction_default_action : string prop;
  scm_minimum_tls_version : string prop;
  scm_type : string prop;
  scm_use_main_ip_restriction : bool prop;
  use_32_bit_worker : bool prop;
  vnet_route_all_enabled : bool prop;
  websockets_enabled : bool prop;
  worker_count : float prop;
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
       app_service_logs = v_app_service_logs;
       application_insights_connection_string =
         v_application_insights_connection_string;
       application_insights_key = v_application_insights_key;
       application_stack = v_application_stack;
       container_registry_managed_identity_client_id =
         v_container_registry_managed_identity_client_id;
       container_registry_use_managed_identity =
         v_container_registry_use_managed_identity;
       cors = v_cors;
       default_documents = v_default_documents;
       detailed_error_logging_enabled =
         v_detailed_error_logging_enabled;
       elastic_instance_minimum = v_elastic_instance_minimum;
       ftps_state = v_ftps_state;
       health_check_eviction_time_in_min =
         v_health_check_eviction_time_in_min;
       health_check_path = v_health_check_path;
       http2_enabled = v_http2_enabled;
       ip_restriction = v_ip_restriction;
       ip_restriction_default_action =
         v_ip_restriction_default_action;
       linux_fx_version = v_linux_fx_version;
       load_balancing_mode = v_load_balancing_mode;
       managed_pipeline_mode = v_managed_pipeline_mode;
       minimum_tls_version = v_minimum_tls_version;
       pre_warmed_instance_count = v_pre_warmed_instance_count;
       remote_debugging_enabled = v_remote_debugging_enabled;
       remote_debugging_version = v_remote_debugging_version;
       runtime_scale_monitoring_enabled =
         v_runtime_scale_monitoring_enabled;
       scm_ip_restriction = v_scm_ip_restriction;
       scm_ip_restriction_default_action =
         v_scm_ip_restriction_default_action;
       scm_minimum_tls_version = v_scm_minimum_tls_version;
       scm_type = v_scm_type;
       scm_use_main_ip_restriction = v_scm_use_main_ip_restriction;
       use_32_bit_worker = v_use_32_bit_worker;
       vnet_route_all_enabled = v_vnet_route_all_enabled;
       websockets_enabled = v_websockets_enabled;
       worker_count = v_worker_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_worker_count in
         ("worker_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_websockets_enabled
         in
         ("websockets_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_vnet_route_all_enabled
         in
         ("vnet_route_all_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_32_bit_worker
         in
         ("use_32_bit_worker", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_scm_use_main_ip_restriction
         in
         ("scm_use_main_ip_restriction", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scm_type in
         ("scm_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scm_minimum_tls_version
         in
         ("scm_minimum_tls_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_scm_ip_restriction_default_action
         in
         ("scm_ip_restriction_default_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_site_config__scm_ip_restriction
             v_scm_ip_restriction
         in
         ("scm_ip_restriction", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_runtime_scale_monitoring_enabled
         in
         ("runtime_scale_monitoring_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_remote_debugging_version
         in
         ("remote_debugging_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_remote_debugging_enabled
         in
         ("remote_debugging_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_pre_warmed_instance_count
         in
         ("pre_warmed_instance_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_minimum_tls_version
         in
         ("minimum_tls_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_pipeline_mode
         in
         ("managed_pipeline_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancing_mode
         in
         ("load_balancing_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linux_fx_version
         in
         ("linux_fx_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ip_restriction_default_action
         in
         ("ip_restriction_default_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_site_config__ip_restriction
             v_ip_restriction
         in
         ("ip_restriction", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_http2_enabled in
         ("http2_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_health_check_path
         in
         ("health_check_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_health_check_eviction_time_in_min
         in
         ("health_check_eviction_time_in_min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ftps_state in
         ("ftps_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_elastic_instance_minimum
         in
         ("elastic_instance_minimum", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_detailed_error_logging_enabled
         in
         ("detailed_error_logging_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_default_documents
         in
         ("default_documents", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_site_config__cors v_cors
         in
         ("cors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_container_registry_use_managed_identity
         in
         ("container_registry_use_managed_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_container_registry_managed_identity_client_id
         in
         ("container_registry_managed_identity_client_id", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_site_config__application_stack
             v_application_stack
         in
         ("application_stack", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_insights_key
         in
         ("application_insights_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_application_insights_connection_string
         in
         ("application_insights_connection_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_site_config__app_service_logs
             v_app_service_logs
         in
         ("app_service_logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_app_scale_limit
         in
         ("app_scale_limit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_command_line
         in
         ("app_command_line", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_api_id
         in
         ("api_management_api_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_definition_url
         in
         ("api_definition_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_always_on in
         ("always_on", arg) :: bnds
       in
       `Assoc bnds
    : site_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site_config

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

type sticky_settings = {
  app_setting_names : string prop list;
  connection_string_names : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_connection_string_names
         in
         ("connection_string_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_app_setting_names
         in
         ("app_setting_names", arg) :: bnds
       in
       `Assoc bnds
    : sticky_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sticky_settings

[@@@deriving.end]

type azurerm_linux_function_app = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_linux_function_app) -> ()

let yojson_of_azurerm_linux_function_app =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_linux_function_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_linux_function_app

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_linux_function_app ?id ?timeouts ~name
    ~resource_group_name () : azurerm_linux_function_app =
  { id; name; resource_group_name; timeouts }

type t = {
  app_settings : (string * string) list prop;
  auth_settings : auth_settings list prop;
  auth_settings_v2 : auth_settings_v2 list prop;
  availability : string prop;
  backup : backup list prop;
  builtin_logging_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  connection_string : connection_string list prop;
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
  identity : identity list prop;
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
  site_config : site_config list prop;
  site_credential : site_credential list prop;
  sticky_settings : sticky_settings list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_key_vault_secret_id : string prop;
  storage_uses_managed_identity : bool prop;
  tags : (string * string) list prop;
  usage : string prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_linux_function_app" in
  let __attrs =
    ({
       app_settings = Prop.computed __type __id "app_settings";
       auth_settings = Prop.computed __type __id "auth_settings";
       auth_settings_v2 =
         Prop.computed __type __id "auth_settings_v2";
       availability = Prop.computed __type __id "availability";
       backup = Prop.computed __type __id "backup";
       builtin_logging_enabled =
         Prop.computed __type __id "builtin_logging_enabled";
       client_certificate_enabled =
         Prop.computed __type __id "client_certificate_enabled";
       client_certificate_exclusion_paths =
         Prop.computed __type __id
           "client_certificate_exclusion_paths";
       client_certificate_mode =
         Prop.computed __type __id "client_certificate_mode";
       connection_string =
         Prop.computed __type __id "connection_string";
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
       identity = Prop.computed __type __id "identity";
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
       site_config = Prop.computed __type __id "site_config";
       site_credential = Prop.computed __type __id "site_credential";
       sticky_settings = Prop.computed __type __id "sticky_settings";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_key_vault_secret_id =
         Prop.computed __type __id "storage_key_vault_secret_id";
       storage_uses_managed_identity =
         Prop.computed __type __id "storage_uses_managed_identity";
       tags = Prop.computed __type __id "tags";
       usage = Prop.computed __type __id "usage";
       virtual_network_subnet_id =
         Prop.computed __type __id "virtual_network_subnet_id";
       webdeploy_publish_basic_authentication_enabled =
         Prop.computed __type __id
           "webdeploy_publish_basic_authentication_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_linux_function_app
        (azurerm_linux_function_app ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
