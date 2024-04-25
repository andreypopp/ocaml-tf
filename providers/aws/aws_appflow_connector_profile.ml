(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connector_profile_config__connector_profile_credentials__amplitude = {
  api_key : string prop;
  secret_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__amplitude) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__amplitude
    =
  (function
   | { api_key = v_api_key; secret_key = v_secret_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_key in
         ("secret_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__amplitude ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__amplitude

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__custom_connector__api_key = {
  api_key : string prop;
  api_secret_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__custom_connector__api_key) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__api_key
    =
  (function
   | { api_key = v_api_key; api_secret_key = v_api_secret_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_api_secret_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_secret_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__custom_connector__api_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__api_key

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__custom_connector__basic = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__custom_connector__basic) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__basic
    =
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
    : connector_profile_config__connector_profile_credentials__custom_connector__basic ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__basic

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__custom_connector__custom = {
  credentials_map : (string * string prop) list option; [@option]
  custom_authentication_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__custom_connector__custom) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__custom
    =
  (function
   | {
       credentials_map = v_credentials_map;
       custom_authentication_type = v_custom_authentication_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_custom_authentication_type
         in
         ("custom_authentication_type", arg) :: bnds
       in
       let bnds =
         match v_credentials_map with
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
             let bnd = "credentials_map", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__custom_connector__custom ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__custom

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request = {
  auth_code : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    =
  (function
   | { auth_code = v_auth_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__custom_connector__oauth2 = {
  access_token : string prop option; [@option]
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  refresh_token : string prop option; [@option]
  oauth_request :
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__custom_connector__oauth2) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    =
  (function
   | {
       access_token = v_access_token;
       client_id = v_client_id;
       client_secret = v_client_secret;
       refresh_token = v_refresh_token;
       oauth_request = v_oauth_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
             v_oauth_request
         in
         ("oauth_request", arg) :: bnds
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token", arg in
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
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__custom_connector__oauth2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__oauth2

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__custom_connector = {
  authentication_type : string prop;
  api_key :
    connector_profile_config__connector_profile_credentials__custom_connector__api_key
    list;
  basic :
    connector_profile_config__connector_profile_credentials__custom_connector__basic
    list;
  custom :
    connector_profile_config__connector_profile_credentials__custom_connector__custom
    list;
  oauth2 :
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__custom_connector) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__custom_connector
    =
  (function
   | {
       authentication_type = v_authentication_type;
       api_key = v_api_key;
       basic = v_basic;
       custom = v_custom;
       oauth2 = v_oauth2;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__oauth2
             v_oauth2
         in
         ("oauth2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__custom
             v_custom
         in
         ("custom", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__basic
             v_basic
         in
         ("basic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__custom_connector__api_key
             v_api_key
         in
         ("api_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__custom_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__custom_connector

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__datadog = {
  api_key : string prop;
  application_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__datadog) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__datadog
    =
  (function
   | { api_key = v_api_key; application_key = v_application_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_key
         in
         ("application_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__datadog ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__datadog

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__dynatrace = {
  api_token : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__dynatrace) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__dynatrace
    =
  (function
   | { api_token = v_api_token } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_token in
         ("api_token", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__dynatrace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__dynatrace

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__google_analytics__oauth_request = {
  auth_code : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__google_analytics__oauth_request) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    =
  (function
   | { auth_code = v_auth_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__google_analytics__oauth_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__google_analytics__oauth_request

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__google_analytics = {
  access_token : string prop option; [@option]
  client_id : string prop;
  client_secret : string prop;
  refresh_token : string prop option; [@option]
  oauth_request :
    connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__google_analytics) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__google_analytics
    =
  (function
   | {
       access_token = v_access_token;
       client_id = v_client_id;
       client_secret = v_client_secret;
       refresh_token = v_refresh_token;
       oauth_request = v_oauth_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
             v_oauth_request
         in
         ("oauth_request", arg) :: bnds
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token", arg in
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
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__google_analytics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__google_analytics

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__honeycode__oauth_request = {
  auth_code : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__honeycode__oauth_request) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    =
  (function
   | { auth_code = v_auth_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__honeycode__oauth_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__honeycode__oauth_request

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__honeycode = {
  access_token : string prop option; [@option]
  refresh_token : string prop option; [@option]
  oauth_request :
    connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__honeycode) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__honeycode
    =
  (function
   | {
       access_token = v_access_token;
       refresh_token = v_refresh_token;
       oauth_request = v_oauth_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__honeycode__oauth_request
             v_oauth_request
         in
         ("oauth_request", arg) :: bnds
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__honeycode ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__honeycode

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__infor_nexus = {
  access_key_id : string prop;
  datakey : string prop;
  secret_access_key : string prop;
  user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__infor_nexus) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__infor_nexus
    =
  (function
   | {
       access_key_id = v_access_key_id;
       datakey = v_datakey;
       secret_access_key = v_secret_access_key;
       user_id = v_user_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_access_key
         in
         ("secret_access_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_datakey in
         ("datakey", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_key_id in
         ("access_key_id", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__infor_nexus ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__infor_nexus

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__marketo__oauth_request = {
  auth_code : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__marketo__oauth_request) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__marketo__oauth_request
    =
  (function
   | { auth_code = v_auth_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__marketo__oauth_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__marketo__oauth_request

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__marketo = {
  access_token : string prop option; [@option]
  client_id : string prop;
  client_secret : string prop;
  oauth_request :
    connector_profile_config__connector_profile_credentials__marketo__oauth_request
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__marketo) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__marketo
    =
  (function
   | {
       access_token = v_access_token;
       client_id = v_client_id;
       client_secret = v_client_secret;
       oauth_request = v_oauth_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__marketo__oauth_request
             v_oauth_request
         in
         ("oauth_request", arg) :: bnds
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
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__marketo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__marketo

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__redshift = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__redshift) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__redshift
    =
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
    : connector_profile_config__connector_profile_credentials__redshift ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__redshift

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__salesforce__oauth_request = {
  auth_code : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__salesforce__oauth_request) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    =
  (function
   | { auth_code = v_auth_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__salesforce__oauth_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__salesforce__oauth_request

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__salesforce = {
  access_token : string prop option; [@option]
  client_credentials_arn : string prop option; [@option]
  jwt_token : string prop option; [@option]
  oauth2_grant_type : string prop option; [@option]
  refresh_token : string prop option; [@option]
  oauth_request :
    connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__salesforce) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__salesforce
    =
  (function
   | {
       access_token = v_access_token;
       client_credentials_arn = v_client_credentials_arn;
       jwt_token = v_jwt_token;
       oauth2_grant_type = v_oauth2_grant_type;
       refresh_token = v_refresh_token;
       oauth_request = v_oauth_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__salesforce__oauth_request
             v_oauth_request
         in
         ("oauth_request", arg) :: bnds
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oauth2_grant_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "oauth2_grant_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jwt_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "jwt_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_credentials_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_credentials_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__salesforce ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__salesforce

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    =
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
    : connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request = {
  auth_code : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    =
  (function
   | { auth_code = v_auth_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials = {
  access_token : string prop option; [@option]
  client_id : string prop;
  client_secret : string prop;
  refresh_token : string prop option; [@option]
  oauth_request :
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    =
  (function
   | {
       access_token = v_access_token;
       client_id = v_client_id;
       client_secret = v_client_secret;
       refresh_token = v_refresh_token;
       oauth_request = v_oauth_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
             v_oauth_request
         in
         ("oauth_request", arg) :: bnds
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token", arg in
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
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__sapo_data = {
  basic_auth_credentials :
    connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    list;
  oauth_credentials :
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__sapo_data) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__sapo_data
    =
  (function
   | {
       basic_auth_credentials = v_basic_auth_credentials;
       oauth_credentials = v_oauth_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
             v_oauth_credentials
         in
         ("oauth_credentials", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
             v_basic_auth_credentials
         in
         ("basic_auth_credentials", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__sapo_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__sapo_data

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__service_now = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__service_now) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__service_now
    =
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
    : connector_profile_config__connector_profile_credentials__service_now ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__service_now

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__singular = {
  api_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__singular) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__singular
    =
  (function
   | { api_key = v_api_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__singular ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__singular

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__slack__oauth_request = {
  auth_code : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__slack__oauth_request) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__slack__oauth_request
    =
  (function
   | { auth_code = v_auth_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__slack__oauth_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__slack__oauth_request

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__slack = {
  access_token : string prop option; [@option]
  client_id : string prop;
  client_secret : string prop;
  oauth_request :
    connector_profile_config__connector_profile_credentials__slack__oauth_request
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__slack) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__slack
    =
  (function
   | {
       access_token = v_access_token;
       client_id = v_client_id;
       client_secret = v_client_secret;
       oauth_request = v_oauth_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__slack__oauth_request
             v_oauth_request
         in
         ("oauth_request", arg) :: bnds
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
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__slack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__slack

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__snowflake = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__snowflake) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__snowflake
    =
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
    : connector_profile_config__connector_profile_credentials__snowflake ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__snowflake

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__trendmicro = {
  api_secret_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__trendmicro) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__trendmicro
    =
  (function
   | { api_secret_key = v_api_secret_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_secret_key
         in
         ("api_secret_key", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__trendmicro ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__trendmicro

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__veeva = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__veeva) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__veeva
    =
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
    : connector_profile_config__connector_profile_credentials__veeva ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__veeva

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__zendesk__oauth_request = {
  auth_code : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__zendesk__oauth_request) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    =
  (function
   | { auth_code = v_auth_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__zendesk__oauth_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__zendesk__oauth_request

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials__zendesk = {
  access_token : string prop option; [@option]
  client_id : string prop;
  client_secret : string prop;
  oauth_request :
    connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_credentials__zendesk) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials__zendesk
    =
  (function
   | {
       access_token = v_access_token;
       client_id = v_client_id;
       client_secret = v_client_secret;
       oauth_request = v_oauth_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__zendesk__oauth_request
             v_oauth_request
         in
         ("oauth_request", arg) :: bnds
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
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials__zendesk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials__zendesk

[@@@deriving.end]

type connector_profile_config__connector_profile_credentials = {
  amplitude :
    connector_profile_config__connector_profile_credentials__amplitude
    list;
  custom_connector :
    connector_profile_config__connector_profile_credentials__custom_connector
    list;
  datadog :
    connector_profile_config__connector_profile_credentials__datadog
    list;
  dynatrace :
    connector_profile_config__connector_profile_credentials__dynatrace
    list;
  google_analytics :
    connector_profile_config__connector_profile_credentials__google_analytics
    list;
  honeycode :
    connector_profile_config__connector_profile_credentials__honeycode
    list;
  infor_nexus :
    connector_profile_config__connector_profile_credentials__infor_nexus
    list;
  marketo :
    connector_profile_config__connector_profile_credentials__marketo
    list;
  redshift :
    connector_profile_config__connector_profile_credentials__redshift
    list;
  salesforce :
    connector_profile_config__connector_profile_credentials__salesforce
    list;
  sapo_data :
    connector_profile_config__connector_profile_credentials__sapo_data
    list;
  service_now :
    connector_profile_config__connector_profile_credentials__service_now
    list;
  singular :
    connector_profile_config__connector_profile_credentials__singular
    list;
  slack :
    connector_profile_config__connector_profile_credentials__slack
    list;
  snowflake :
    connector_profile_config__connector_profile_credentials__snowflake
    list;
  trendmicro :
    connector_profile_config__connector_profile_credentials__trendmicro
    list;
  veeva :
    connector_profile_config__connector_profile_credentials__veeva
    list;
  zendesk :
    connector_profile_config__connector_profile_credentials__zendesk
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : connector_profile_config__connector_profile_credentials) ->
  ()

let yojson_of_connector_profile_config__connector_profile_credentials
    =
  (function
   | {
       amplitude = v_amplitude;
       custom_connector = v_custom_connector;
       datadog = v_datadog;
       dynatrace = v_dynatrace;
       google_analytics = v_google_analytics;
       honeycode = v_honeycode;
       infor_nexus = v_infor_nexus;
       marketo = v_marketo;
       redshift = v_redshift;
       salesforce = v_salesforce;
       sapo_data = v_sapo_data;
       service_now = v_service_now;
       singular = v_singular;
       slack = v_slack;
       snowflake = v_snowflake;
       trendmicro = v_trendmicro;
       veeva = v_veeva;
       zendesk = v_zendesk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__zendesk
             v_zendesk
         in
         ("zendesk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__veeva
             v_veeva
         in
         ("veeva", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__trendmicro
             v_trendmicro
         in
         ("trendmicro", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__snowflake
             v_snowflake
         in
         ("snowflake", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__slack
             v_slack
         in
         ("slack", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__singular
             v_singular
         in
         ("singular", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__service_now
             v_service_now
         in
         ("service_now", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__sapo_data
             v_sapo_data
         in
         ("sapo_data", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__salesforce
             v_salesforce
         in
         ("salesforce", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__redshift
             v_redshift
         in
         ("redshift", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__marketo
             v_marketo
         in
         ("marketo", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__infor_nexus
             v_infor_nexus
         in
         ("infor_nexus", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__honeycode
             v_honeycode
         in
         ("honeycode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__google_analytics
             v_google_analytics
         in
         ("google_analytics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__dynatrace
             v_dynatrace
         in
         ("dynatrace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__datadog
             v_datadog
         in
         ("datadog", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__custom_connector
             v_custom_connector
         in
         ("custom_connector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials__amplitude
             v_amplitude
         in
         ("amplitude", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_credentials

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__amplitude =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__amplitude) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__amplitude
    =
  (yojson_of_unit
    : connector_profile_config__connector_profile_properties__amplitude ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__amplitude

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties = {
  oauth2_grant_type : string prop;
  token_url : string prop;
  token_url_custom_properties : (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    =
  (function
   | {
       oauth2_grant_type = v_oauth2_grant_type;
       token_url = v_token_url;
       token_url_custom_properties = v_token_url_custom_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token_url_custom_properties with
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
             let bnd = "token_url_custom_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token_url in
         ("token_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_oauth2_grant_type
         in
         ("oauth2_grant_type", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__custom_connector = {
  profile_properties : (string * string prop) list option; [@option]
  oauth2_properties :
    connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__custom_connector) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__custom_connector
    =
  (function
   | {
       profile_properties = v_profile_properties;
       oauth2_properties = v_oauth2_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
             v_oauth2_properties
         in
         ("oauth2_properties", arg) :: bnds
       in
       let bnds =
         match v_profile_properties with
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
             let bnd = "profile_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__custom_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__custom_connector

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__datadog = {
  instance_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__datadog) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__datadog
    =
  (function
   | { instance_url = v_instance_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_url in
         ("instance_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__datadog ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__datadog

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__dynatrace = {
  instance_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__dynatrace) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__dynatrace
    =
  (function
   | { instance_url = v_instance_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_url in
         ("instance_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__dynatrace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__dynatrace

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__google_analytics =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__google_analytics) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__google_analytics
    =
  (yojson_of_unit
    : connector_profile_config__connector_profile_properties__google_analytics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__google_analytics

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__honeycode =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__honeycode) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__honeycode
    =
  (yojson_of_unit
    : connector_profile_config__connector_profile_properties__honeycode ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__honeycode

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__infor_nexus = {
  instance_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__infor_nexus) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__infor_nexus
    =
  (function
   | { instance_url = v_instance_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_url in
         ("instance_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__infor_nexus ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__infor_nexus

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__marketo = {
  instance_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__marketo) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__marketo
    =
  (function
   | { instance_url = v_instance_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_url in
         ("instance_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__marketo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__marketo

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__redshift = {
  bucket_name : string prop;
  bucket_prefix : string prop option; [@option]
  cluster_identifier : string prop option; [@option]
  data_api_role_arn : string prop option; [@option]
  database_name : string prop option; [@option]
  database_url : string prop option; [@option]
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__redshift) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__redshift
    =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       cluster_identifier = v_cluster_identifier;
       data_api_role_arn = v_data_api_role_arn;
       database_name = v_database_name;
       database_url = v_database_url;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_database_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_api_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_api_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__redshift ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__redshift

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__salesforce = {
  instance_url : string prop option; [@option]
  is_sandbox_environment : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__salesforce) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__salesforce
    =
  (function
   | {
       instance_url = v_instance_url;
       is_sandbox_environment = v_is_sandbox_environment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_is_sandbox_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_sandbox_environment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__salesforce ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__salesforce

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__sapo_data__oauth_properties = {
  auth_code_url : string prop;
  oauth_scopes : string prop list;
  token_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__sapo_data__oauth_properties) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    =
  (function
   | {
       auth_code_url = v_auth_code_url;
       oauth_scopes = v_oauth_scopes;
       token_url = v_token_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token_url in
         ("token_url", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_auth_code_url in
         ("auth_code_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__sapo_data__oauth_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__sapo_data__oauth_properties

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__sapo_data = {
  application_host_url : string prop;
  application_service_path : string prop;
  client_number : string prop;
  logon_language : string prop option; [@option]
  port_number : float prop;
  private_link_service_name : string prop option; [@option]
  oauth_properties :
    connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__sapo_data) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__sapo_data
    =
  (function
   | {
       application_host_url = v_application_host_url;
       application_service_path = v_application_service_path;
       client_number = v_client_number;
       logon_language = v_logon_language;
       port_number = v_port_number;
       private_link_service_name = v_private_link_service_name;
       oauth_properties = v_oauth_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
             v_oauth_properties
         in
         ("oauth_properties", arg) :: bnds
       in
       let bnds =
         match v_private_link_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_link_service_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port_number in
         ("port_number", arg) :: bnds
       in
       let bnds =
         match v_logon_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logon_language", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_number in
         ("client_number", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_service_path
         in
         ("application_service_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_host_url
         in
         ("application_host_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__sapo_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__sapo_data

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__service_now = {
  instance_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__service_now) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__service_now
    =
  (function
   | { instance_url = v_instance_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_url in
         ("instance_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__service_now ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__service_now

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__singular =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__singular) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__singular
    =
  (yojson_of_unit
    : connector_profile_config__connector_profile_properties__singular ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__singular

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__slack = {
  instance_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__slack) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__slack
    =
  (function
   | { instance_url = v_instance_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_url in
         ("instance_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__slack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__slack

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__snowflake = {
  account_name : string prop option; [@option]
  bucket_name : string prop;
  bucket_prefix : string prop option; [@option]
  private_link_service_name : string prop option; [@option]
  region : string prop option; [@option]
  stage : string prop;
  warehouse : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__snowflake) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__snowflake
    =
  (function
   | {
       account_name = v_account_name;
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       private_link_service_name = v_private_link_service_name;
       region = v_region;
       stage = v_stage;
       warehouse = v_warehouse;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_warehouse in
         ("warehouse", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage in
         ("stage", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_link_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_link_service_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       let bnds =
         match v_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__snowflake ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__snowflake

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__trendmicro =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__trendmicro) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__trendmicro
    =
  (yojson_of_unit
    : connector_profile_config__connector_profile_properties__trendmicro ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__trendmicro

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__veeva = {
  instance_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__veeva) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__veeva
    =
  (function
   | { instance_url = v_instance_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_url in
         ("instance_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__veeva ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__veeva

[@@@deriving.end]

type connector_profile_config__connector_profile_properties__zendesk = {
  instance_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       connector_profile_config__connector_profile_properties__zendesk) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties__zendesk
    =
  (function
   | { instance_url = v_instance_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_url in
         ("instance_url", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties__zendesk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties__zendesk

[@@@deriving.end]

type connector_profile_config__connector_profile_properties = {
  amplitude :
    connector_profile_config__connector_profile_properties__amplitude
    list;
  custom_connector :
    connector_profile_config__connector_profile_properties__custom_connector
    list;
  datadog :
    connector_profile_config__connector_profile_properties__datadog
    list;
  dynatrace :
    connector_profile_config__connector_profile_properties__dynatrace
    list;
  google_analytics :
    connector_profile_config__connector_profile_properties__google_analytics
    list;
  honeycode :
    connector_profile_config__connector_profile_properties__honeycode
    list;
  infor_nexus :
    connector_profile_config__connector_profile_properties__infor_nexus
    list;
  marketo :
    connector_profile_config__connector_profile_properties__marketo
    list;
  redshift :
    connector_profile_config__connector_profile_properties__redshift
    list;
  salesforce :
    connector_profile_config__connector_profile_properties__salesforce
    list;
  sapo_data :
    connector_profile_config__connector_profile_properties__sapo_data
    list;
  service_now :
    connector_profile_config__connector_profile_properties__service_now
    list;
  singular :
    connector_profile_config__connector_profile_properties__singular
    list;
  slack :
    connector_profile_config__connector_profile_properties__slack
    list;
  snowflake :
    connector_profile_config__connector_profile_properties__snowflake
    list;
  trendmicro :
    connector_profile_config__connector_profile_properties__trendmicro
    list;
  veeva :
    connector_profile_config__connector_profile_properties__veeva
    list;
  zendesk :
    connector_profile_config__connector_profile_properties__zendesk
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : connector_profile_config__connector_profile_properties) ->
  ()

let yojson_of_connector_profile_config__connector_profile_properties
    =
  (function
   | {
       amplitude = v_amplitude;
       custom_connector = v_custom_connector;
       datadog = v_datadog;
       dynatrace = v_dynatrace;
       google_analytics = v_google_analytics;
       honeycode = v_honeycode;
       infor_nexus = v_infor_nexus;
       marketo = v_marketo;
       redshift = v_redshift;
       salesforce = v_salesforce;
       sapo_data = v_sapo_data;
       service_now = v_service_now;
       singular = v_singular;
       slack = v_slack;
       snowflake = v_snowflake;
       trendmicro = v_trendmicro;
       veeva = v_veeva;
       zendesk = v_zendesk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__zendesk
             v_zendesk
         in
         ("zendesk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__veeva
             v_veeva
         in
         ("veeva", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__trendmicro
             v_trendmicro
         in
         ("trendmicro", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__snowflake
             v_snowflake
         in
         ("snowflake", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__slack
             v_slack
         in
         ("slack", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__singular
             v_singular
         in
         ("singular", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__service_now
             v_service_now
         in
         ("service_now", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__sapo_data
             v_sapo_data
         in
         ("sapo_data", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__salesforce
             v_salesforce
         in
         ("salesforce", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__redshift
             v_redshift
         in
         ("redshift", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__marketo
             v_marketo
         in
         ("marketo", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__infor_nexus
             v_infor_nexus
         in
         ("infor_nexus", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__honeycode
             v_honeycode
         in
         ("honeycode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__google_analytics
             v_google_analytics
         in
         ("google_analytics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__dynatrace
             v_dynatrace
         in
         ("dynatrace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__datadog
             v_datadog
         in
         ("datadog", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__custom_connector
             v_custom_connector
         in
         ("custom_connector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties__amplitude
             v_amplitude
         in
         ("amplitude", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config__connector_profile_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connector_profile_config__connector_profile_properties

[@@@deriving.end]

type connector_profile_config = {
  connector_profile_credentials :
    connector_profile_config__connector_profile_credentials list;
  connector_profile_properties :
    connector_profile_config__connector_profile_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connector_profile_config) -> ()

let yojson_of_connector_profile_config =
  (function
   | {
       connector_profile_credentials =
         v_connector_profile_credentials;
       connector_profile_properties = v_connector_profile_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_properties
             v_connector_profile_properties
         in
         ("connector_profile_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connector_profile_config__connector_profile_credentials
             v_connector_profile_credentials
         in
         ("connector_profile_credentials", arg) :: bnds
       in
       `Assoc bnds
    : connector_profile_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connector_profile_config

[@@@deriving.end]

type aws_appflow_connector_profile = {
  connection_mode : string prop;
  connector_label : string prop option; [@option]
  connector_type : string prop;
  id : string prop option; [@option]
  kms_arn : string prop option; [@option]
  name : string prop;
  connector_profile_config : connector_profile_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appflow_connector_profile) -> ()

let yojson_of_aws_appflow_connector_profile =
  (function
   | {
       connection_mode = v_connection_mode;
       connector_label = v_connector_label;
       connector_type = v_connector_type;
       id = v_id;
       kms_arn = v_kms_arn;
       name = v_name;
       connector_profile_config = v_connector_profile_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_connector_profile_config
             v_connector_profile_config
         in
         ("connector_profile_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_arn", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_connector_type
         in
         ("connector_type", arg) :: bnds
       in
       let bnds =
         match v_connector_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connector_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_mode
         in
         ("connection_mode", arg) :: bnds
       in
       `Assoc bnds
    : aws_appflow_connector_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appflow_connector_profile

[@@@deriving.end]

let connector_profile_config__connector_profile_credentials__amplitude
    ~api_key ~secret_key () :
    connector_profile_config__connector_profile_credentials__amplitude
    =
  { api_key; secret_key }

let connector_profile_config__connector_profile_credentials__custom_connector__api_key
    ?api_secret_key ~api_key () :
    connector_profile_config__connector_profile_credentials__custom_connector__api_key
    =
  { api_key; api_secret_key }

let connector_profile_config__connector_profile_credentials__custom_connector__basic
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__custom_connector__basic
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__custom_connector__custom
    ?credentials_map ~custom_authentication_type () :
    connector_profile_config__connector_profile_credentials__custom_connector__custom
    =
  { credentials_map; custom_authentication_type }

let connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    ?access_token ?client_id ?client_secret ?refresh_token
    ?(oauth_request = []) () :
    connector_profile_config__connector_profile_credentials__custom_connector__oauth2
    =
  {
    access_token;
    client_id;
    client_secret;
    refresh_token;
    oauth_request;
  }

let connector_profile_config__connector_profile_credentials__custom_connector
    ?(api_key = []) ?(basic = []) ?(custom = []) ?(oauth2 = [])
    ~authentication_type () :
    connector_profile_config__connector_profile_credentials__custom_connector
    =
  { authentication_type; api_key; basic; custom; oauth2 }

let connector_profile_config__connector_profile_credentials__datadog
    ~api_key ~application_key () :
    connector_profile_config__connector_profile_credentials__datadog
    =
  { api_key; application_key }

let connector_profile_config__connector_profile_credentials__dynatrace
    ~api_token () :
    connector_profile_config__connector_profile_credentials__dynatrace
    =
  { api_token }

let connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__google_analytics__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__google_analytics
    ?access_token ?refresh_token ?(oauth_request = []) ~client_id
    ~client_secret () :
    connector_profile_config__connector_profile_credentials__google_analytics
    =
  {
    access_token;
    client_id;
    client_secret;
    refresh_token;
    oauth_request;
  }

let connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__honeycode__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__honeycode
    ?access_token ?refresh_token ?(oauth_request = []) () :
    connector_profile_config__connector_profile_credentials__honeycode
    =
  { access_token; refresh_token; oauth_request }

let connector_profile_config__connector_profile_credentials__infor_nexus
    ~access_key_id ~datakey ~secret_access_key ~user_id () :
    connector_profile_config__connector_profile_credentials__infor_nexus
    =
  { access_key_id; datakey; secret_access_key; user_id }

let connector_profile_config__connector_profile_credentials__marketo__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__marketo__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__marketo
    ?access_token ?(oauth_request = []) ~client_id ~client_secret ()
    :
    connector_profile_config__connector_profile_credentials__marketo
    =
  { access_token; client_id; client_secret; oauth_request }

let connector_profile_config__connector_profile_credentials__redshift
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__redshift
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__salesforce__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__salesforce
    ?access_token ?client_credentials_arn ?jwt_token
    ?oauth2_grant_type ?refresh_token ?(oauth_request = []) () :
    connector_profile_config__connector_profile_credentials__salesforce
    =
  {
    access_token;
    client_credentials_arn;
    jwt_token;
    oauth2_grant_type;
    refresh_token;
    oauth_request;
  }

let connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__sapo_data__basic_auth_credentials
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    ?access_token ?refresh_token ?(oauth_request = []) ~client_id
    ~client_secret () :
    connector_profile_config__connector_profile_credentials__sapo_data__oauth_credentials
    =
  {
    access_token;
    client_id;
    client_secret;
    refresh_token;
    oauth_request;
  }

let connector_profile_config__connector_profile_credentials__sapo_data
    ?(basic_auth_credentials = []) ?(oauth_credentials = []) () :
    connector_profile_config__connector_profile_credentials__sapo_data
    =
  { basic_auth_credentials; oauth_credentials }

let connector_profile_config__connector_profile_credentials__service_now
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__service_now
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__singular
    ~api_key () :
    connector_profile_config__connector_profile_credentials__singular
    =
  { api_key }

let connector_profile_config__connector_profile_credentials__slack__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__slack__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__slack
    ?access_token ?(oauth_request = []) ~client_id ~client_secret ()
    : connector_profile_config__connector_profile_credentials__slack
    =
  { access_token; client_id; client_secret; oauth_request }

let connector_profile_config__connector_profile_credentials__snowflake
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__snowflake
    =
  { password; username }

let connector_profile_config__connector_profile_credentials__trendmicro
    ~api_secret_key () :
    connector_profile_config__connector_profile_credentials__trendmicro
    =
  { api_secret_key }

let connector_profile_config__connector_profile_credentials__veeva
    ~password ~username () :
    connector_profile_config__connector_profile_credentials__veeva =
  { password; username }

let connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    ?auth_code ?redirect_uri () :
    connector_profile_config__connector_profile_credentials__zendesk__oauth_request
    =
  { auth_code; redirect_uri }

let connector_profile_config__connector_profile_credentials__zendesk
    ?access_token ?(oauth_request = []) ~client_id ~client_secret ()
    :
    connector_profile_config__connector_profile_credentials__zendesk
    =
  { access_token; client_id; client_secret; oauth_request }

let connector_profile_config__connector_profile_credentials
    ?(amplitude = []) ?(custom_connector = []) ?(datadog = [])
    ?(dynatrace = []) ?(google_analytics = []) ?(honeycode = [])
    ?(infor_nexus = []) ?(marketo = []) ?(redshift = [])
    ?(salesforce = []) ?(sapo_data = []) ?(service_now = [])
    ?(singular = []) ?(slack = []) ?(snowflake = [])
    ?(trendmicro = []) ?(veeva = []) ?(zendesk = []) () :
    connector_profile_config__connector_profile_credentials =
  {
    amplitude;
    custom_connector;
    datadog;
    dynatrace;
    google_analytics;
    honeycode;
    infor_nexus;
    marketo;
    redshift;
    salesforce;
    sapo_data;
    service_now;
    singular;
    slack;
    snowflake;
    trendmicro;
    veeva;
    zendesk;
  }

let connector_profile_config__connector_profile_properties__amplitude
    () =
  ()

let connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    ?token_url_custom_properties ~oauth2_grant_type ~token_url () :
    connector_profile_config__connector_profile_properties__custom_connector__oauth2_properties
    =
  { oauth2_grant_type; token_url; token_url_custom_properties }

let connector_profile_config__connector_profile_properties__custom_connector
    ?profile_properties ?(oauth2_properties = []) () :
    connector_profile_config__connector_profile_properties__custom_connector
    =
  { profile_properties; oauth2_properties }

let connector_profile_config__connector_profile_properties__datadog
    ~instance_url () :
    connector_profile_config__connector_profile_properties__datadog =
  { instance_url }

let connector_profile_config__connector_profile_properties__dynatrace
    ~instance_url () :
    connector_profile_config__connector_profile_properties__dynatrace
    =
  { instance_url }

let connector_profile_config__connector_profile_properties__google_analytics
    () =
  ()

let connector_profile_config__connector_profile_properties__honeycode
    () =
  ()

let connector_profile_config__connector_profile_properties__infor_nexus
    ~instance_url () :
    connector_profile_config__connector_profile_properties__infor_nexus
    =
  { instance_url }

let connector_profile_config__connector_profile_properties__marketo
    ~instance_url () :
    connector_profile_config__connector_profile_properties__marketo =
  { instance_url }

let connector_profile_config__connector_profile_properties__redshift
    ?bucket_prefix ?cluster_identifier ?data_api_role_arn
    ?database_name ?database_url ~bucket_name ~role_arn () :
    connector_profile_config__connector_profile_properties__redshift
    =
  {
    bucket_name;
    bucket_prefix;
    cluster_identifier;
    data_api_role_arn;
    database_name;
    database_url;
    role_arn;
  }

let connector_profile_config__connector_profile_properties__salesforce
    ?instance_url ?is_sandbox_environment () :
    connector_profile_config__connector_profile_properties__salesforce
    =
  { instance_url; is_sandbox_environment }

let connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    ~auth_code_url ~oauth_scopes ~token_url () :
    connector_profile_config__connector_profile_properties__sapo_data__oauth_properties
    =
  { auth_code_url; oauth_scopes; token_url }

let connector_profile_config__connector_profile_properties__sapo_data
    ?logon_language ?private_link_service_name
    ?(oauth_properties = []) ~application_host_url
    ~application_service_path ~client_number ~port_number () :
    connector_profile_config__connector_profile_properties__sapo_data
    =
  {
    application_host_url;
    application_service_path;
    client_number;
    logon_language;
    port_number;
    private_link_service_name;
    oauth_properties;
  }

let connector_profile_config__connector_profile_properties__service_now
    ~instance_url () :
    connector_profile_config__connector_profile_properties__service_now
    =
  { instance_url }

let connector_profile_config__connector_profile_properties__singular
    () =
  ()

let connector_profile_config__connector_profile_properties__slack
    ~instance_url () :
    connector_profile_config__connector_profile_properties__slack =
  { instance_url }

let connector_profile_config__connector_profile_properties__snowflake
    ?account_name ?bucket_prefix ?private_link_service_name ?region
    ~bucket_name ~stage ~warehouse () :
    connector_profile_config__connector_profile_properties__snowflake
    =
  {
    account_name;
    bucket_name;
    bucket_prefix;
    private_link_service_name;
    region;
    stage;
    warehouse;
  }

let connector_profile_config__connector_profile_properties__trendmicro
    () =
  ()

let connector_profile_config__connector_profile_properties__veeva
    ~instance_url () :
    connector_profile_config__connector_profile_properties__veeva =
  { instance_url }

let connector_profile_config__connector_profile_properties__zendesk
    ~instance_url () :
    connector_profile_config__connector_profile_properties__zendesk =
  { instance_url }

let connector_profile_config__connector_profile_properties
    ?(amplitude = []) ?(custom_connector = []) ?(datadog = [])
    ?(dynatrace = []) ?(google_analytics = []) ?(honeycode = [])
    ?(infor_nexus = []) ?(marketo = []) ?(redshift = [])
    ?(salesforce = []) ?(sapo_data = []) ?(service_now = [])
    ?(singular = []) ?(slack = []) ?(snowflake = [])
    ?(trendmicro = []) ?(veeva = []) ?(zendesk = []) () :
    connector_profile_config__connector_profile_properties =
  {
    amplitude;
    custom_connector;
    datadog;
    dynatrace;
    google_analytics;
    honeycode;
    infor_nexus;
    marketo;
    redshift;
    salesforce;
    sapo_data;
    service_now;
    singular;
    slack;
    snowflake;
    trendmicro;
    veeva;
    zendesk;
  }

let connector_profile_config ~connector_profile_credentials
    ~connector_profile_properties () : connector_profile_config =
  { connector_profile_credentials; connector_profile_properties }

let aws_appflow_connector_profile ?connector_label ?id ?kms_arn
    ~connection_mode ~connector_type ~name ~connector_profile_config
    () : aws_appflow_connector_profile =
  {
    connection_mode;
    connector_label;
    connector_type;
    id;
    kms_arn;
    name;
    connector_profile_config;
  }

type t = {
  arn : string prop;
  connection_mode : string prop;
  connector_label : string prop;
  connector_type : string prop;
  credentials_arn : string prop;
  id : string prop;
  kms_arn : string prop;
  name : string prop;
}

let make ?connector_label ?id ?kms_arn ~connection_mode
    ~connector_type ~name ~connector_profile_config __id =
  let __type = "aws_appflow_connector_profile" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       connection_mode = Prop.computed __type __id "connection_mode";
       connector_label = Prop.computed __type __id "connector_label";
       connector_type = Prop.computed __type __id "connector_type";
       credentials_arn = Prop.computed __type __id "credentials_arn";
       id = Prop.computed __type __id "id";
       kms_arn = Prop.computed __type __id "kms_arn";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appflow_connector_profile
        (aws_appflow_connector_profile ?connector_label ?id ?kms_arn
           ~connection_mode ~connector_type ~name
           ~connector_profile_config ());
    attrs = __attrs;
  }

let register ?tf_module ?connector_label ?id ?kms_arn
    ~connection_mode ~connector_type ~name ~connector_profile_config
    __id =
  let (r : _ Tf_core.resource) =
    make ?connector_label ?id ?kms_arn ~connection_mode
      ~connector_type ~name ~connector_profile_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
