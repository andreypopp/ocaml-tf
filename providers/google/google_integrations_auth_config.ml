(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type client_certificate = {
  encrypted_private_key : string prop;
  passphrase : string prop option; [@option]
  ssl_certificate : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_certificate) -> ()

let yojson_of_client_certificate =
  (function
   | {
       encrypted_private_key = v_encrypted_private_key;
       passphrase = v_passphrase;
       ssl_certificate = v_ssl_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_certificate
         in
         ("ssl_certificate", arg) :: bnds
       in
       let bnds =
         match v_passphrase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "passphrase", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encrypted_private_key
         in
         ("encrypted_private_key", arg) :: bnds
       in
       `Assoc bnds
    : client_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_certificate

[@@@deriving.end]

type decrypted_credential__auth_token = {
  token : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : decrypted_credential__auth_token) -> ()

let yojson_of_decrypted_credential__auth_token =
  (function
   | { token = v_token; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__auth_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_decrypted_credential__auth_token

[@@@deriving.end]

type decrypted_credential__jwt = {
  jwt_header : string prop option; [@option]
  jwt_payload : string prop option; [@option]
  secret : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : decrypted_credential__jwt) -> ()

let yojson_of_decrypted_credential__jwt =
  (function
   | {
       jwt_header = v_jwt_header;
       jwt_payload = v_jwt_payload;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jwt_payload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "jwt_payload", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jwt_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "jwt_header", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__jwt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_decrypted_credential__jwt

[@@@deriving.end]

type decrypted_credential__oauth2_authorization_code = {
  auth_endpoint : string prop option; [@option]
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  scope : string prop option; [@option]
  token_endpoint : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : decrypted_credential__oauth2_authorization_code) -> ()

let yojson_of_decrypted_credential__oauth2_authorization_code =
  (function
   | {
       auth_endpoint = v_auth_endpoint;
       client_id = v_client_id;
       client_secret = v_client_secret;
       scope = v_scope;
       token_endpoint = v_token_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_endpoint", arg in
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
         match v_auth_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__oauth2_authorization_code ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_decrypted_credential__oauth2_authorization_code

[@@@deriving.end]

type decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value = {
  string_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value) ->
  ()

let yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value
    =
  (function
   | { string_value = v_string_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value

[@@@deriving.end]

type decrypted_credential__oauth2_client_credentials__token_params__entries__key = {
  literal_value :
    decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       decrypted_credential__oauth2_client_credentials__token_params__entries__key) ->
  ()

let yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__key
    =
  (function
   | { literal_value = v_literal_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_literal_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value)
               v_literal_value
           in
           let bnd = "literal_value", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__oauth2_client_credentials__token_params__entries__key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__key

[@@@deriving.end]

type decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value = {
  string_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value) ->
  ()

let yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value
    =
  (function
   | { string_value = v_string_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value

[@@@deriving.end]

type decrypted_credential__oauth2_client_credentials__token_params__entries__value = {
  literal_value :
    decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       decrypted_credential__oauth2_client_credentials__token_params__entries__value) ->
  ()

let yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__value
    =
  (function
   | { literal_value = v_literal_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_literal_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value)
               v_literal_value
           in
           let bnd = "literal_value", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__oauth2_client_credentials__token_params__entries__value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__value

[@@@deriving.end]

type decrypted_credential__oauth2_client_credentials__token_params__entries = {
  key :
    decrypted_credential__oauth2_client_credentials__token_params__entries__key
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  value :
    decrypted_credential__oauth2_client_credentials__token_params__entries__value
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       decrypted_credential__oauth2_client_credentials__token_params__entries) ->
  ()

let yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries
    =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__value)
               v_value
           in
           let bnd = "value", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries__key)
               v_key
           in
           let bnd = "key", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__oauth2_client_credentials__token_params__entries ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries

[@@@deriving.end]

type decrypted_credential__oauth2_client_credentials__token_params = {
  entries :
    decrypted_credential__oauth2_client_credentials__token_params__entries
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       decrypted_credential__oauth2_client_credentials__token_params) ->
  ()

let yojson_of_decrypted_credential__oauth2_client_credentials__token_params
    =
  (function
   | { entries = v_entries } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_entries then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oauth2_client_credentials__token_params__entries)
               v_entries
           in
           let bnd = "entries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__oauth2_client_credentials__token_params ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_decrypted_credential__oauth2_client_credentials__token_params

[@@@deriving.end]

type decrypted_credential__oauth2_client_credentials = {
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  request_type : string prop option; [@option]
  scope : string prop option; [@option]
  token_endpoint : string prop option; [@option]
  token_params :
    decrypted_credential__oauth2_client_credentials__token_params
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : decrypted_credential__oauth2_client_credentials) -> ()

let yojson_of_decrypted_credential__oauth2_client_credentials =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       request_type = v_request_type;
       scope = v_scope;
       token_endpoint = v_token_endpoint;
       token_params = v_token_params;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_token_params then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oauth2_client_credentials__token_params)
               v_token_params
           in
           let bnd = "token_params", arg in
           bnd :: bnds
       in
       let bnds =
         match v_token_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_endpoint", arg in
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
         match v_request_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_type", arg in
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
       `Assoc bnds
    : decrypted_credential__oauth2_client_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_decrypted_credential__oauth2_client_credentials

[@@@deriving.end]

type decrypted_credential__oidc_token = {
  audience : string prop option; [@option]
  service_account_email : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : decrypted_credential__oidc_token) -> ()

let yojson_of_decrypted_credential__oidc_token =
  (function
   | {
       audience = v_audience;
       service_account_email = v_service_account_email;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_email", arg in
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
       `Assoc bnds
    : decrypted_credential__oidc_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_decrypted_credential__oidc_token

[@@@deriving.end]

type decrypted_credential__service_account_credentials = {
  scope : string prop option; [@option]
  service_account : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : decrypted_credential__service_account_credentials) -> ()

let yojson_of_decrypted_credential__service_account_credentials =
  (function
   | { scope = v_scope; service_account = v_service_account } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
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
       `Assoc bnds
    : decrypted_credential__service_account_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_decrypted_credential__service_account_credentials

[@@@deriving.end]

type decrypted_credential__username_and_password = {
  password : string prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : decrypted_credential__username_and_password) -> ()

let yojson_of_decrypted_credential__username_and_password =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : decrypted_credential__username_and_password ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_decrypted_credential__username_and_password

[@@@deriving.end]

type decrypted_credential = {
  credential_type : string prop;
  auth_token : decrypted_credential__auth_token list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  jwt : decrypted_credential__jwt list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oauth2_authorization_code :
    decrypted_credential__oauth2_authorization_code list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oauth2_client_credentials :
    decrypted_credential__oauth2_client_credentials list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oidc_token : decrypted_credential__oidc_token list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_account_credentials :
    decrypted_credential__service_account_credentials list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  username_and_password :
    decrypted_credential__username_and_password list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : decrypted_credential) -> ()

let yojson_of_decrypted_credential =
  (function
   | {
       credential_type = v_credential_type;
       auth_token = v_auth_token;
       jwt = v_jwt;
       oauth2_authorization_code = v_oauth2_authorization_code;
       oauth2_client_credentials = v_oauth2_client_credentials;
       oidc_token = v_oidc_token;
       service_account_credentials = v_service_account_credentials;
       username_and_password = v_username_and_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_username_and_password then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__username_and_password)
               v_username_and_password
           in
           let bnd = "username_and_password", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service_account_credentials then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__service_account_credentials)
               v_service_account_credentials
           in
           let bnd = "service_account_credentials", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oidc_token then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oidc_token)
               v_oidc_token
           in
           let bnd = "oidc_token", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oauth2_client_credentials then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oauth2_client_credentials)
               v_oauth2_client_credentials
           in
           let bnd = "oauth2_client_credentials", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oauth2_authorization_code then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__oauth2_authorization_code)
               v_oauth2_authorization_code
           in
           let bnd = "oauth2_authorization_code", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_jwt then bnds
         else
           let arg =
             (yojson_of_list yojson_of_decrypted_credential__jwt)
               v_jwt
           in
           let bnd = "jwt", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auth_token then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_decrypted_credential__auth_token)
               v_auth_token
           in
           let bnd = "auth_token", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_credential_type
         in
         ("credential_type", arg) :: bnds
       in
       `Assoc bnds
    : decrypted_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_decrypted_credential

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_integrations_auth_config = {
  description : string prop option; [@option]
  display_name : string prop;
  expiry_notification_duration : string prop list option; [@option]
  id : string prop option; [@option]
  location : string prop;
  override_valid_time : string prop option; [@option]
  project : string prop option; [@option]
  visibility : string prop option; [@option]
  client_certificate : client_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  decrypted_credential : decrypted_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_integrations_auth_config) -> ()

let yojson_of_google_integrations_auth_config =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       expiry_notification_duration = v_expiry_notification_duration;
       id = v_id;
       location = v_location;
       override_valid_time = v_override_valid_time;
       project = v_project;
       visibility = v_visibility;
       client_certificate = v_client_certificate;
       decrypted_credential = v_decrypted_credential;
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
         if Stdlib.( = ) [] v_decrypted_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_decrypted_credential)
               v_decrypted_credential
           in
           let bnd = "decrypted_credential", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_client_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_client_certificate)
               v_client_certificate
           in
           let bnd = "client_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         match v_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "visibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_override_valid_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "override_valid_time", arg in
             bnd :: bnds
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
         match v_expiry_notification_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expiry_notification_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_integrations_auth_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_integrations_auth_config

[@@@deriving.end]

let client_certificate ?passphrase ~encrypted_private_key
    ~ssl_certificate () : client_certificate =
  { encrypted_private_key; passphrase; ssl_certificate }

let decrypted_credential__auth_token ?token ?type_ () :
    decrypted_credential__auth_token =
  { token; type_ }

let decrypted_credential__jwt ?jwt_header ?jwt_payload ?secret () :
    decrypted_credential__jwt =
  { jwt_header; jwt_payload; secret }

let decrypted_credential__oauth2_authorization_code ?auth_endpoint
    ?client_id ?client_secret ?scope ?token_endpoint () :
    decrypted_credential__oauth2_authorization_code =
  { auth_endpoint; client_id; client_secret; scope; token_endpoint }

let decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value
    ?string_value () :
    decrypted_credential__oauth2_client_credentials__token_params__entries__key__literal_value
    =
  { string_value }

let decrypted_credential__oauth2_client_credentials__token_params__entries__key
    ?(literal_value = []) () :
    decrypted_credential__oauth2_client_credentials__token_params__entries__key
    =
  { literal_value }

let decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value
    ?string_value () :
    decrypted_credential__oauth2_client_credentials__token_params__entries__value__literal_value
    =
  { string_value }

let decrypted_credential__oauth2_client_credentials__token_params__entries__value
    ?(literal_value = []) () :
    decrypted_credential__oauth2_client_credentials__token_params__entries__value
    =
  { literal_value }

let decrypted_credential__oauth2_client_credentials__token_params__entries
    ?(key = []) ?(value = []) () :
    decrypted_credential__oauth2_client_credentials__token_params__entries
    =
  { key; value }

let decrypted_credential__oauth2_client_credentials__token_params
    ?(entries = []) () :
    decrypted_credential__oauth2_client_credentials__token_params =
  { entries }

let decrypted_credential__oauth2_client_credentials ?client_id
    ?client_secret ?request_type ?scope ?token_endpoint
    ?(token_params = []) () :
    decrypted_credential__oauth2_client_credentials =
  {
    client_id;
    client_secret;
    request_type;
    scope;
    token_endpoint;
    token_params;
  }

let decrypted_credential__oidc_token ?audience ?service_account_email
    () : decrypted_credential__oidc_token =
  { audience; service_account_email }

let decrypted_credential__service_account_credentials ?scope
    ?service_account () :
    decrypted_credential__service_account_credentials =
  { scope; service_account }

let decrypted_credential__username_and_password ?password ?username
    () : decrypted_credential__username_and_password =
  { password; username }

let decrypted_credential ?(auth_token = []) ?(jwt = [])
    ?(oauth2_authorization_code = [])
    ?(oauth2_client_credentials = []) ?(oidc_token = [])
    ?(service_account_credentials = []) ?(username_and_password = [])
    ~credential_type () : decrypted_credential =
  {
    credential_type;
    auth_token;
    jwt;
    oauth2_authorization_code;
    oauth2_client_credentials;
    oidc_token;
    service_account_credentials;
    username_and_password;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_integrations_auth_config ?description
    ?expiry_notification_duration ?id ?override_valid_time ?project
    ?visibility ?(client_certificate = [])
    ?(decrypted_credential = []) ?timeouts ~display_name ~location ()
    : google_integrations_auth_config =
  {
    description;
    display_name;
    expiry_notification_duration;
    id;
    location;
    override_valid_time;
    project;
    visibility;
    client_certificate;
    decrypted_credential;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate_id : string prop;
  create_time : string prop;
  creator_email : string prop;
  credential_type : string prop;
  description : string prop;
  display_name : string prop;
  encrypted_credential : string prop;
  expiry_notification_duration : string list prop;
  id : string prop;
  last_modifier_email : string prop;
  location : string prop;
  name : string prop;
  override_valid_time : string prop;
  project : string prop;
  reason : string prop;
  state : string prop;
  update_time : string prop;
  valid_time : string prop;
  visibility : string prop;
}

let make ?description ?expiry_notification_duration ?id
    ?override_valid_time ?project ?visibility
    ?(client_certificate = []) ?(decrypted_credential = []) ?timeouts
    ~display_name ~location __id =
  let __type = "google_integrations_auth_config" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_id = Prop.computed __type __id "certificate_id";
       create_time = Prop.computed __type __id "create_time";
       creator_email = Prop.computed __type __id "creator_email";
       credential_type = Prop.computed __type __id "credential_type";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       encrypted_credential =
         Prop.computed __type __id "encrypted_credential";
       expiry_notification_duration =
         Prop.computed __type __id "expiry_notification_duration";
       id = Prop.computed __type __id "id";
       last_modifier_email =
         Prop.computed __type __id "last_modifier_email";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       override_valid_time =
         Prop.computed __type __id "override_valid_time";
       project = Prop.computed __type __id "project";
       reason = Prop.computed __type __id "reason";
       state = Prop.computed __type __id "state";
       update_time = Prop.computed __type __id "update_time";
       valid_time = Prop.computed __type __id "valid_time";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_integrations_auth_config
        (google_integrations_auth_config ?description
           ?expiry_notification_duration ?id ?override_valid_time
           ?project ?visibility ~client_certificate
           ~decrypted_credential ?timeouts ~display_name ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?expiry_notification_duration
    ?id ?override_valid_time ?project ?visibility
    ?(client_certificate = []) ?(decrypted_credential = []) ?timeouts
    ~display_name ~location __id =
  let (r : _ Tf_core.resource) =
    make ?description ?expiry_notification_duration ?id
      ?override_valid_time ?project ?visibility ~client_certificate
      ~decrypted_credential ?timeouts ~display_name ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
