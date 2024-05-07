(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_config__additional_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_config__additional_variable__encryption_key_value) ->
  ()

let yojson_of_auth_config__additional_variable__encryption_key_value
    =
  (function
   | { kms_key_name = v_kms_key_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_config__additional_variable__encryption_key_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_auth_config__additional_variable__encryption_key_value

[@@@deriving.end]

type auth_config__additional_variable__secret_value = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_config__additional_variable__secret_value) -> ()

let yojson_of_auth_config__additional_variable__secret_value =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__additional_variable__secret_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__additional_variable__secret_value

[@@@deriving.end]

type auth_config__additional_variable = {
  boolean_value : bool prop option; [@option]
  integer_value : float prop option; [@option]
  key : string prop;
  string_value : string prop option; [@option]
  encryption_key_value :
    auth_config__additional_variable__encryption_key_value list;
  secret_value : auth_config__additional_variable__secret_value list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__additional_variable) -> ()

let yojson_of_auth_config__additional_variable =
  (function
   | {
       boolean_value = v_boolean_value;
       integer_value = v_integer_value;
       key = v_key;
       string_value = v_string_value;
       encryption_key_value = v_encryption_key_value;
       secret_value = v_secret_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__additional_variable__secret_value
             v_secret_value
         in
         ("secret_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__additional_variable__encryption_key_value
             v_encryption_key_value
         in
         ("encryption_key_value", arg) :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_config__additional_variable ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__additional_variable

[@@@deriving.end]

type auth_config__oauth2_auth_code_flow__client_secret = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_config__oauth2_auth_code_flow__client_secret) -> ()

let yojson_of_auth_config__oauth2_auth_code_flow__client_secret =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__oauth2_auth_code_flow__client_secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__oauth2_auth_code_flow__client_secret

[@@@deriving.end]

type auth_config__oauth2_auth_code_flow = {
  auth_uri : string prop option; [@option]
  client_id : string prop option; [@option]
  enable_pkce : bool prop option; [@option]
  scopes : string prop list option; [@option]
  client_secret :
    auth_config__oauth2_auth_code_flow__client_secret list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__oauth2_auth_code_flow) -> ()

let yojson_of_auth_config__oauth2_auth_code_flow =
  (function
   | {
       auth_uri = v_auth_uri;
       client_id = v_client_id;
       enable_pkce = v_enable_pkce;
       scopes = v_scopes;
       client_secret = v_client_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__oauth2_auth_code_flow__client_secret
             v_client_secret
         in
         ("client_secret", arg) :: bnds
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
         match v_enable_pkce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_pkce", arg in
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
         match v_auth_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_config__oauth2_auth_code_flow ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__oauth2_auth_code_flow

[@@@deriving.end]

type auth_config__oauth2_client_credentials__client_secret = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_config__oauth2_client_credentials__client_secret) ->
  ()

let yojson_of_auth_config__oauth2_client_credentials__client_secret =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__oauth2_client_credentials__client_secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_auth_config__oauth2_client_credentials__client_secret

[@@@deriving.end]

type auth_config__oauth2_client_credentials = {
  client_id : string prop;
  client_secret :
    auth_config__oauth2_client_credentials__client_secret list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__oauth2_client_credentials) -> ()

let yojson_of_auth_config__oauth2_client_credentials =
  (function
   | { client_id = v_client_id; client_secret = v_client_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__oauth2_client_credentials__client_secret
             v_client_secret
         in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__oauth2_client_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__oauth2_client_credentials

[@@@deriving.end]

type auth_config__oauth2_jwt_bearer__client_key = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__oauth2_jwt_bearer__client_key) -> ()

let yojson_of_auth_config__oauth2_jwt_bearer__client_key =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__oauth2_jwt_bearer__client_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__oauth2_jwt_bearer__client_key

[@@@deriving.end]

type auth_config__oauth2_jwt_bearer__jwt_claims = {
  audience : string prop option; [@option]
  issuer : string prop option; [@option]
  subject : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__oauth2_jwt_bearer__jwt_claims) -> ()

let yojson_of_auth_config__oauth2_jwt_bearer__jwt_claims =
  (function
   | {
       audience = v_audience;
       issuer = v_issuer;
       subject = v_subject;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject", arg in
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
         match v_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audience", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_config__oauth2_jwt_bearer__jwt_claims ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__oauth2_jwt_bearer__jwt_claims

[@@@deriving.end]

type auth_config__oauth2_jwt_bearer = {
  client_key : auth_config__oauth2_jwt_bearer__client_key list;
  jwt_claims : auth_config__oauth2_jwt_bearer__jwt_claims list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__oauth2_jwt_bearer) -> ()

let yojson_of_auth_config__oauth2_jwt_bearer =
  (function
   | { client_key = v_client_key; jwt_claims = v_jwt_claims } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__oauth2_jwt_bearer__jwt_claims
             v_jwt_claims
         in
         ("jwt_claims", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__oauth2_jwt_bearer__client_key
             v_client_key
         in
         ("client_key", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__oauth2_jwt_bearer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__oauth2_jwt_bearer

[@@@deriving.end]

type auth_config__ssh_public_key__ssh_client_cert = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__ssh_public_key__ssh_client_cert) -> ()

let yojson_of_auth_config__ssh_public_key__ssh_client_cert =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__ssh_public_key__ssh_client_cert ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__ssh_public_key__ssh_client_cert

[@@@deriving.end]

type auth_config__ssh_public_key__ssh_client_cert_pass = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auth_config__ssh_public_key__ssh_client_cert_pass) -> ()

let yojson_of_auth_config__ssh_public_key__ssh_client_cert_pass =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__ssh_public_key__ssh_client_cert_pass ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__ssh_public_key__ssh_client_cert_pass

[@@@deriving.end]

type auth_config__ssh_public_key = {
  cert_type : string prop option; [@option]
  username : string prop;
  ssh_client_cert :
    auth_config__ssh_public_key__ssh_client_cert list;
  ssh_client_cert_pass :
    auth_config__ssh_public_key__ssh_client_cert_pass list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__ssh_public_key) -> ()

let yojson_of_auth_config__ssh_public_key =
  (function
   | {
       cert_type = v_cert_type;
       username = v_username;
       ssh_client_cert = v_ssh_client_cert;
       ssh_client_cert_pass = v_ssh_client_cert_pass;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__ssh_public_key__ssh_client_cert_pass
             v_ssh_client_cert_pass
         in
         ("ssh_client_cert_pass", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__ssh_public_key__ssh_client_cert
             v_ssh_client_cert
         in
         ("ssh_client_cert", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_cert_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cert_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_config__ssh_public_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__ssh_public_key

[@@@deriving.end]

type auth_config__user_password__password = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__user_password__password) -> ()

let yojson_of_auth_config__user_password__password =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__user_password__password ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__user_password__password

[@@@deriving.end]

type auth_config__user_password = {
  username : string prop;
  password : auth_config__user_password__password list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config__user_password) -> ()

let yojson_of_auth_config__user_password =
  (function
   | { username = v_username; password = v_password } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__user_password__password
             v_password
         in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       `Assoc bnds
    : auth_config__user_password -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config__user_password

[@@@deriving.end]

type auth_config = {
  auth_key : string prop option; [@option]
  auth_type : string prop;
  additional_variable : auth_config__additional_variable list;
  oauth2_auth_code_flow : auth_config__oauth2_auth_code_flow list;
  oauth2_client_credentials :
    auth_config__oauth2_client_credentials list;
  oauth2_jwt_bearer : auth_config__oauth2_jwt_bearer list;
  ssh_public_key : auth_config__ssh_public_key list;
  user_password : auth_config__user_password list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_config) -> ()

let yojson_of_auth_config =
  (function
   | {
       auth_key = v_auth_key;
       auth_type = v_auth_type;
       additional_variable = v_additional_variable;
       oauth2_auth_code_flow = v_oauth2_auth_code_flow;
       oauth2_client_credentials = v_oauth2_client_credentials;
       oauth2_jwt_bearer = v_oauth2_jwt_bearer;
       ssh_public_key = v_ssh_public_key;
       user_password = v_user_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_config__user_password
             v_user_password
         in
         ("user_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_config__ssh_public_key
             v_ssh_public_key
         in
         ("ssh_public_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_config__oauth2_jwt_bearer
             v_oauth2_jwt_bearer
         in
         ("oauth2_jwt_bearer", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__oauth2_client_credentials
             v_oauth2_client_credentials
         in
         ("oauth2_client_credentials", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auth_config__oauth2_auth_code_flow
             v_oauth2_auth_code_flow
         in
         ("oauth2_auth_code_flow", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_config__additional_variable
             v_additional_variable
         in
         ("additional_variable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_type in
         ("auth_type", arg) :: bnds
       in
       let bnds =
         match v_auth_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_config

[@@@deriving.end]

type config_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_variable__encryption_key_value) -> ()

let yojson_of_config_variable__encryption_key_value =
  (function
   | { kms_key_name = v_kms_key_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config_variable__encryption_key_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_variable__encryption_key_value

[@@@deriving.end]

type config_variable__secret_value = { secret_version : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : config_variable__secret_value) -> ()

let yojson_of_config_variable__secret_value =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : config_variable__secret_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_variable__secret_value

[@@@deriving.end]

type config_variable = {
  boolean_value : bool prop option; [@option]
  integer_value : float prop option; [@option]
  key : string prop;
  string_value : string prop option; [@option]
  encryption_key_value : config_variable__encryption_key_value list;
  secret_value : config_variable__secret_value list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_variable) -> ()

let yojson_of_config_variable =
  (function
   | {
       boolean_value = v_boolean_value;
       integer_value = v_integer_value;
       key = v_key;
       string_value = v_string_value;
       encryption_key_value = v_encryption_key_value;
       secret_value = v_secret_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config_variable__secret_value
             v_secret_value
         in
         ("secret_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_config_variable__encryption_key_value
             v_encryption_key_value
         in
         ("encryption_key_value", arg) :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config_variable -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_variable

[@@@deriving.end]

type destination_config__destination = {
  host : string prop option; [@option]
  port : float prop option; [@option]
  service_attachment : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config__destination) -> ()

let yojson_of_destination_config__destination =
  (function
   | {
       host = v_host;
       port = v_port;
       service_attachment = v_service_attachment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_attachment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_attachment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_config__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config__destination

[@@@deriving.end]

type destination_config = {
  key : string prop;
  destination : destination_config__destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config) -> ()

let yojson_of_destination_config =
  (function
   | { key = v_key; destination = v_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_config__destination
             v_destination
         in
         ("destination", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : destination_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config

[@@@deriving.end]

type eventing_config__additional_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eventing_config__additional_variable__encryption_key_value) ->
  ()

let yojson_of_eventing_config__additional_variable__encryption_key_value
    =
  (function
   | { kms_key_name = v_kms_key_name; type_ = v_type_ } ->
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
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config__additional_variable__encryption_key_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eventing_config__additional_variable__encryption_key_value

[@@@deriving.end]

type eventing_config__additional_variable__secret_value = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eventing_config__additional_variable__secret_value) -> ()

let yojson_of_eventing_config__additional_variable__secret_value =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : eventing_config__additional_variable__secret_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_config__additional_variable__secret_value

[@@@deriving.end]

type eventing_config__additional_variable = {
  boolean_value : bool prop option; [@option]
  integer_value : float prop option; [@option]
  key : string prop;
  string_value : string prop option; [@option]
  encryption_key_value :
    eventing_config__additional_variable__encryption_key_value list;
  secret_value :
    eventing_config__additional_variable__secret_value list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eventing_config__additional_variable) -> ()

let yojson_of_eventing_config__additional_variable =
  (function
   | {
       boolean_value = v_boolean_value;
       integer_value = v_integer_value;
       key = v_key;
       string_value = v_string_value;
       encryption_key_value = v_encryption_key_value;
       secret_value = v_secret_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__additional_variable__secret_value
             v_secret_value
         in
         ("secret_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__additional_variable__encryption_key_value
             v_encryption_key_value
         in
         ("encryption_key_value", arg) :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config__additional_variable ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_config__additional_variable

[@@@deriving.end]

type eventing_config__auth_config__additional_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       eventing_config__auth_config__additional_variable__encryption_key_value) ->
  ()

let yojson_of_eventing_config__auth_config__additional_variable__encryption_key_value
    =
  (function
   | { kms_key_name = v_kms_key_name; type_ = v_type_ } ->
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
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config__auth_config__additional_variable__encryption_key_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eventing_config__auth_config__additional_variable__encryption_key_value

[@@@deriving.end]

type eventing_config__auth_config__additional_variable__secret_value = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       eventing_config__auth_config__additional_variable__secret_value) ->
  ()

let yojson_of_eventing_config__auth_config__additional_variable__secret_value
    =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : eventing_config__auth_config__additional_variable__secret_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eventing_config__auth_config__additional_variable__secret_value

[@@@deriving.end]

type eventing_config__auth_config__additional_variable = {
  boolean_value : bool prop option; [@option]
  integer_value : float prop option; [@option]
  key : string prop;
  string_value : string prop option; [@option]
  encryption_key_value :
    eventing_config__auth_config__additional_variable__encryption_key_value
    list;
  secret_value :
    eventing_config__auth_config__additional_variable__secret_value
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eventing_config__auth_config__additional_variable) -> ()

let yojson_of_eventing_config__auth_config__additional_variable =
  (function
   | {
       boolean_value = v_boolean_value;
       integer_value = v_integer_value;
       key = v_key;
       string_value = v_string_value;
       encryption_key_value = v_encryption_key_value;
       secret_value = v_secret_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__auth_config__additional_variable__secret_value
             v_secret_value
         in
         ("secret_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__auth_config__additional_variable__encryption_key_value
             v_encryption_key_value
         in
         ("encryption_key_value", arg) :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config__auth_config__additional_variable ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_config__auth_config__additional_variable

[@@@deriving.end]

type eventing_config__auth_config__user_password__password = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eventing_config__auth_config__user_password__password) ->
  ()

let yojson_of_eventing_config__auth_config__user_password__password =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : eventing_config__auth_config__user_password__password ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eventing_config__auth_config__user_password__password

[@@@deriving.end]

type eventing_config__auth_config__user_password = {
  username : string prop option; [@option]
  password :
    eventing_config__auth_config__user_password__password list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eventing_config__auth_config__user_password) -> ()

let yojson_of_eventing_config__auth_config__user_password =
  (function
   | { username = v_username; password = v_password } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__auth_config__user_password__password
             v_password
         in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config__auth_config__user_password ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_config__auth_config__user_password

[@@@deriving.end]

type eventing_config__auth_config = {
  auth_key : string prop option; [@option]
  auth_type : string prop;
  additional_variable :
    eventing_config__auth_config__additional_variable list;
  user_password : eventing_config__auth_config__user_password list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eventing_config__auth_config) -> ()

let yojson_of_eventing_config__auth_config =
  (function
   | {
       auth_key = v_auth_key;
       auth_type = v_auth_type;
       additional_variable = v_additional_variable;
       user_password = v_user_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__auth_config__user_password
             v_user_password
         in
         ("user_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__auth_config__additional_variable
             v_additional_variable
         in
         ("additional_variable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_type in
         ("auth_type", arg) :: bnds
       in
       let bnds =
         match v_auth_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config__auth_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_config__auth_config

[@@@deriving.end]

type eventing_config__registration_destination_config__destination = {
  host : string prop option; [@option]
  port : float prop option; [@option]
  service_attachment : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       eventing_config__registration_destination_config__destination) ->
  ()

let yojson_of_eventing_config__registration_destination_config__destination
    =
  (function
   | {
       host = v_host;
       port = v_port;
       service_attachment = v_service_attachment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_attachment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_attachment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config__registration_destination_config__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eventing_config__registration_destination_config__destination

[@@@deriving.end]

type eventing_config__registration_destination_config = {
  key : string prop option; [@option]
  destination :
    eventing_config__registration_destination_config__destination
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eventing_config__registration_destination_config) -> ()

let yojson_of_eventing_config__registration_destination_config =
  (function
   | { key = v_key; destination = v_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__registration_destination_config__destination
             v_destination
         in
         ("destination", arg) :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config__registration_destination_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_config__registration_destination_config

[@@@deriving.end]

type eventing_config = {
  enrichment_enabled : bool prop option; [@option]
  additional_variable : eventing_config__additional_variable list;
  auth_config : eventing_config__auth_config list;
  registration_destination_config :
    eventing_config__registration_destination_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eventing_config) -> ()

let yojson_of_eventing_config =
  (function
   | {
       enrichment_enabled = v_enrichment_enabled;
       additional_variable = v_additional_variable;
       auth_config = v_auth_config;
       registration_destination_config =
         v_registration_destination_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__registration_destination_config
             v_registration_destination_config
         in
         ("registration_destination_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_eventing_config__auth_config
             v_auth_config
         in
         ("auth_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eventing_config__additional_variable
             v_additional_variable
         in
         ("additional_variable", arg) :: bnds
       in
       let bnds =
         match v_enrichment_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enrichment_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventing_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_config

[@@@deriving.end]

type lock_config = {
  locked : bool prop;
  reason : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lock_config) -> ()

let yojson_of_lock_config =
  (function
   | { locked = v_locked; reason = v_reason } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reason with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reason", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_locked in
         ("locked", arg) :: bnds
       in
       `Assoc bnds
    : lock_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lock_config

[@@@deriving.end]

type log_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

[@@@deriving.end]

type node_config = {
  max_node_count : float prop option; [@option]
  min_node_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config) -> ()

let yojson_of_node_config =
  (function
   | {
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_node_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config

[@@@deriving.end]

type ssl_config__additional_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : ssl_config__additional_variable__encryption_key_value) ->
  ()

let yojson_of_ssl_config__additional_variable__encryption_key_value =
  (function
   | { kms_key_name = v_kms_key_name; type_ = v_type_ } ->
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
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl_config__additional_variable__encryption_key_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_ssl_config__additional_variable__encryption_key_value

[@@@deriving.end]

type ssl_config__additional_variable__secret_value = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_config__additional_variable__secret_value) -> ()

let yojson_of_ssl_config__additional_variable__secret_value =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : ssl_config__additional_variable__secret_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_config__additional_variable__secret_value

[@@@deriving.end]

type ssl_config__additional_variable = {
  boolean_value : bool prop option; [@option]
  integer_value : float prop option; [@option]
  key : string prop;
  string_value : string prop option; [@option]
  encryption_key_value :
    ssl_config__additional_variable__encryption_key_value list;
  secret_value : ssl_config__additional_variable__secret_value list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_config__additional_variable) -> ()

let yojson_of_ssl_config__additional_variable =
  (function
   | {
       boolean_value = v_boolean_value;
       integer_value = v_integer_value;
       key = v_key;
       string_value = v_string_value;
       encryption_key_value = v_encryption_key_value;
       secret_value = v_secret_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ssl_config__additional_variable__secret_value
             v_secret_value
         in
         ("secret_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ssl_config__additional_variable__encryption_key_value
             v_encryption_key_value
         in
         ("encryption_key_value", arg) :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl_config__additional_variable ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_config__additional_variable

[@@@deriving.end]

type ssl_config__client_certificate = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_config__client_certificate) -> ()

let yojson_of_ssl_config__client_certificate =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : ssl_config__client_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_config__client_certificate

[@@@deriving.end]

type ssl_config__client_private_key = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_config__client_private_key) -> ()

let yojson_of_ssl_config__client_private_key =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : ssl_config__client_private_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_config__client_private_key

[@@@deriving.end]

type ssl_config__client_private_key_pass = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_config__client_private_key_pass) -> ()

let yojson_of_ssl_config__client_private_key_pass =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : ssl_config__client_private_key_pass ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_config__client_private_key_pass

[@@@deriving.end]

type ssl_config__private_server_certificate = {
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_config__private_server_certificate) -> ()

let yojson_of_ssl_config__private_server_certificate =
  (function
   | { secret_version = v_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       `Assoc bnds
    : ssl_config__private_server_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_config__private_server_certificate

[@@@deriving.end]

type ssl_config = {
  client_cert_type : string prop option; [@option]
  server_cert_type : string prop option; [@option]
  trust_model : string prop option; [@option]
  type_ : string prop; [@key "type"]
  use_ssl : bool prop option; [@option]
  additional_variable : ssl_config__additional_variable list;
  client_certificate : ssl_config__client_certificate list;
  client_private_key : ssl_config__client_private_key list;
  client_private_key_pass : ssl_config__client_private_key_pass list;
  private_server_certificate :
    ssl_config__private_server_certificate list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_config) -> ()

let yojson_of_ssl_config =
  (function
   | {
       client_cert_type = v_client_cert_type;
       server_cert_type = v_server_cert_type;
       trust_model = v_trust_model;
       type_ = v_type_;
       use_ssl = v_use_ssl;
       additional_variable = v_additional_variable;
       client_certificate = v_client_certificate;
       client_private_key = v_client_private_key;
       client_private_key_pass = v_client_private_key_pass;
       private_server_certificate = v_private_server_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ssl_config__private_server_certificate
             v_private_server_certificate
         in
         ("private_server_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ssl_config__client_private_key_pass
             v_client_private_key_pass
         in
         ("client_private_key_pass", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ssl_config__client_private_key
             v_client_private_key
         in
         ("client_private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ssl_config__client_certificate
             v_client_certificate
         in
         ("client_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ssl_config__additional_variable
             v_additional_variable
         in
         ("additional_variable", arg) :: bnds
       in
       let bnds =
         match v_use_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_ssl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_trust_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trust_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_cert_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_cert_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_cert_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_cert_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_config

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

type connector_version_infra_config = {
  ratelimit_threshold : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connector_version_infra_config) -> ()

let yojson_of_connector_version_infra_config =
  (function
   | { ratelimit_threshold = v_ratelimit_threshold } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ratelimit_threshold
         in
         ("ratelimit_threshold", arg) :: bnds
       in
       `Assoc bnds
    : connector_version_infra_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connector_version_infra_config

[@@@deriving.end]

type eventing_runtime_data__status = {
  description : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eventing_runtime_data__status) -> ()

let yojson_of_eventing_runtime_data__status =
  (function
   | { description = v_description; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : eventing_runtime_data__status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_runtime_data__status

[@@@deriving.end]

type eventing_runtime_data = {
  events_listener_endpoint : string prop;
  status : eventing_runtime_data__status list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eventing_runtime_data) -> ()

let yojson_of_eventing_runtime_data =
  (function
   | {
       events_listener_endpoint = v_events_listener_endpoint;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_eventing_runtime_data__status
             v_status
         in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_events_listener_endpoint
         in
         ("events_listener_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : eventing_runtime_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventing_runtime_data

[@@@deriving.end]

type status = {
  description : string prop;
  state : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       description = v_description;
       state = v_state;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type google_integration_connectors_connection = {
  connector_version : string prop;
  description : string prop option; [@option]
  eventing_enablement_type : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  service_account : string prop option; [@option]
  suspended : bool prop option; [@option]
  auth_config : auth_config list;
  config_variable : config_variable list;
  destination_config : destination_config list;
  eventing_config : eventing_config list;
  lock_config : lock_config list;
  log_config : log_config list;
  node_config : node_config list;
  ssl_config : ssl_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_integration_connectors_connection) -> ()

let yojson_of_google_integration_connectors_connection =
  (function
   | {
       connector_version = v_connector_version;
       description = v_description;
       eventing_enablement_type = v_eventing_enablement_type;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       service_account = v_service_account;
       suspended = v_suspended;
       auth_config = v_auth_config;
       config_variable = v_config_variable;
       destination_config = v_destination_config;
       eventing_config = v_eventing_config;
       lock_config = v_lock_config;
       log_config = v_log_config;
       node_config = v_node_config;
       ssl_config = v_ssl_config;
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
           yojson_of_list yojson_of_ssl_config v_ssl_config
         in
         ("ssl_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_config v_node_config
         in
         ("node_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_log_config v_log_config
         in
         ("log_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_lock_config v_lock_config
         in
         ("lock_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_eventing_config v_eventing_config
         in
         ("eventing_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_config
             v_destination_config
         in
         ("destination_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config_variable v_config_variable
         in
         ("config_variable", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_config v_auth_config
         in
         ("auth_config", arg) :: bnds
       in
       let bnds =
         match v_suspended with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suspended", arg in
             bnd :: bnds
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_eventing_enablement_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventing_enablement_type", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_connector_version
         in
         ("connector_version", arg) :: bnds
       in
       `Assoc bnds
    : google_integration_connectors_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_integration_connectors_connection

[@@@deriving.end]

let auth_config__additional_variable__encryption_key_value
    ?kms_key_name ~type_ () :
    auth_config__additional_variable__encryption_key_value =
  { kms_key_name; type_ }

let auth_config__additional_variable__secret_value ~secret_version ()
    : auth_config__additional_variable__secret_value =
  { secret_version }

let auth_config__additional_variable ?boolean_value ?integer_value
    ?string_value ?(encryption_key_value = []) ?(secret_value = [])
    ~key () : auth_config__additional_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let auth_config__oauth2_auth_code_flow__client_secret ~secret_version
    () : auth_config__oauth2_auth_code_flow__client_secret =
  { secret_version }

let auth_config__oauth2_auth_code_flow ?auth_uri ?client_id
    ?enable_pkce ?scopes ?(client_secret = []) () :
    auth_config__oauth2_auth_code_flow =
  { auth_uri; client_id; enable_pkce; scopes; client_secret }

let auth_config__oauth2_client_credentials__client_secret
    ~secret_version () :
    auth_config__oauth2_client_credentials__client_secret =
  { secret_version }

let auth_config__oauth2_client_credentials ?(client_secret = [])
    ~client_id () : auth_config__oauth2_client_credentials =
  { client_id; client_secret }

let auth_config__oauth2_jwt_bearer__client_key ~secret_version () :
    auth_config__oauth2_jwt_bearer__client_key =
  { secret_version }

let auth_config__oauth2_jwt_bearer__jwt_claims ?audience ?issuer
    ?subject () : auth_config__oauth2_jwt_bearer__jwt_claims =
  { audience; issuer; subject }

let auth_config__oauth2_jwt_bearer ?(client_key = [])
    ?(jwt_claims = []) () : auth_config__oauth2_jwt_bearer =
  { client_key; jwt_claims }

let auth_config__ssh_public_key__ssh_client_cert ~secret_version () :
    auth_config__ssh_public_key__ssh_client_cert =
  { secret_version }

let auth_config__ssh_public_key__ssh_client_cert_pass ~secret_version
    () : auth_config__ssh_public_key__ssh_client_cert_pass =
  { secret_version }

let auth_config__ssh_public_key ?cert_type ?(ssh_client_cert = [])
    ?(ssh_client_cert_pass = []) ~username () :
    auth_config__ssh_public_key =
  { cert_type; username; ssh_client_cert; ssh_client_cert_pass }

let auth_config__user_password__password ~secret_version () :
    auth_config__user_password__password =
  { secret_version }

let auth_config__user_password ?(password = []) ~username () :
    auth_config__user_password =
  { username; password }

let auth_config ?auth_key ?(additional_variable = [])
    ?(oauth2_auth_code_flow = []) ?(oauth2_client_credentials = [])
    ?(oauth2_jwt_bearer = []) ?(ssh_public_key = [])
    ?(user_password = []) ~auth_type () : auth_config =
  {
    auth_key;
    auth_type;
    additional_variable;
    oauth2_auth_code_flow;
    oauth2_client_credentials;
    oauth2_jwt_bearer;
    ssh_public_key;
    user_password;
  }

let config_variable__encryption_key_value ?kms_key_name ~type_ () :
    config_variable__encryption_key_value =
  { kms_key_name; type_ }

let config_variable__secret_value ~secret_version () :
    config_variable__secret_value =
  { secret_version }

let config_variable ?boolean_value ?integer_value ?string_value
    ?(encryption_key_value = []) ?(secret_value = []) ~key () :
    config_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let destination_config__destination ?host ?port ?service_attachment
    () : destination_config__destination =
  { host; port; service_attachment }

let destination_config ?(destination = []) ~key () :
    destination_config =
  { key; destination }

let eventing_config__additional_variable__encryption_key_value
    ?kms_key_name ?type_ () :
    eventing_config__additional_variable__encryption_key_value =
  { kms_key_name; type_ }

let eventing_config__additional_variable__secret_value
    ~secret_version () :
    eventing_config__additional_variable__secret_value =
  { secret_version }

let eventing_config__additional_variable ?boolean_value
    ?integer_value ?string_value ?(encryption_key_value = [])
    ?(secret_value = []) ~key () :
    eventing_config__additional_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let eventing_config__auth_config__additional_variable__encryption_key_value
    ?kms_key_name ?type_ () :
    eventing_config__auth_config__additional_variable__encryption_key_value
    =
  { kms_key_name; type_ }

let eventing_config__auth_config__additional_variable__secret_value
    ~secret_version () :
    eventing_config__auth_config__additional_variable__secret_value =
  { secret_version }

let eventing_config__auth_config__additional_variable ?boolean_value
    ?integer_value ?string_value ?(encryption_key_value = [])
    ?(secret_value = []) ~key () :
    eventing_config__auth_config__additional_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let eventing_config__auth_config__user_password__password
    ~secret_version () :
    eventing_config__auth_config__user_password__password =
  { secret_version }

let eventing_config__auth_config__user_password ?username
    ?(password = []) () : eventing_config__auth_config__user_password
    =
  { username; password }

let eventing_config__auth_config ?auth_key
    ?(additional_variable = []) ~auth_type ~user_password () :
    eventing_config__auth_config =
  { auth_key; auth_type; additional_variable; user_password }

let eventing_config__registration_destination_config__destination
    ?host ?port ?service_attachment () :
    eventing_config__registration_destination_config__destination =
  { host; port; service_attachment }

let eventing_config__registration_destination_config ?key
    ?(destination = []) () :
    eventing_config__registration_destination_config =
  { key; destination }

let eventing_config ?enrichment_enabled ?(additional_variable = [])
    ?(auth_config = []) ~registration_destination_config () :
    eventing_config =
  {
    enrichment_enabled;
    additional_variable;
    auth_config;
    registration_destination_config;
  }

let lock_config ?reason ~locked () : lock_config = { locked; reason }
let log_config ~enabled () : log_config = { enabled }

let node_config ?max_node_count ?min_node_count () : node_config =
  { max_node_count; min_node_count }

let ssl_config__additional_variable__encryption_key_value
    ?kms_key_name ?type_ () :
    ssl_config__additional_variable__encryption_key_value =
  { kms_key_name; type_ }

let ssl_config__additional_variable__secret_value ~secret_version ()
    : ssl_config__additional_variable__secret_value =
  { secret_version }

let ssl_config__additional_variable ?boolean_value ?integer_value
    ?string_value ?(encryption_key_value = []) ?(secret_value = [])
    ~key () : ssl_config__additional_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let ssl_config__client_certificate ~secret_version () :
    ssl_config__client_certificate =
  { secret_version }

let ssl_config__client_private_key ~secret_version () :
    ssl_config__client_private_key =
  { secret_version }

let ssl_config__client_private_key_pass ~secret_version () :
    ssl_config__client_private_key_pass =
  { secret_version }

let ssl_config__private_server_certificate ~secret_version () :
    ssl_config__private_server_certificate =
  { secret_version }

let ssl_config ?client_cert_type ?server_cert_type ?trust_model
    ?use_ssl ?(additional_variable = []) ?(client_certificate = [])
    ?(client_private_key = []) ?(client_private_key_pass = [])
    ?(private_server_certificate = []) ~type_ () : ssl_config =
  {
    client_cert_type;
    server_cert_type;
    trust_model;
    type_;
    use_ssl;
    additional_variable;
    client_certificate;
    client_private_key;
    client_private_key_pass;
    private_server_certificate;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_integration_connectors_connection ?description
    ?eventing_enablement_type ?id ?labels ?project ?service_account
    ?suspended ?(auth_config = []) ?(config_variable = [])
    ?(destination_config = []) ?(eventing_config = [])
    ?(lock_config = []) ?(log_config = []) ?(node_config = [])
    ?(ssl_config = []) ?timeouts ~connector_version ~location ~name
    () : google_integration_connectors_connection =
  {
    connector_version;
    description;
    eventing_enablement_type;
    id;
    labels;
    location;
    name;
    project;
    service_account;
    suspended;
    auth_config;
    config_variable;
    destination_config;
    eventing_config;
    lock_config;
    log_config;
    node_config;
    ssl_config;
    timeouts;
  }

type t = {
  tf_name : string;
  connection_revision : string prop;
  connector_version : string prop;
  connector_version_infra_config :
    connector_version_infra_config list prop;
  connector_version_launch_stage : string prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  eventing_enablement_type : string prop;
  eventing_runtime_data : eventing_runtime_data list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  service_directory : string prop;
  status : status list prop;
  subscription_type : string prop;
  suspended : bool prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?eventing_enablement_type ?id ?labels ?project
    ?service_account ?suspended ?(auth_config = [])
    ?(config_variable = []) ?(destination_config = [])
    ?(eventing_config = []) ?(lock_config = []) ?(log_config = [])
    ?(node_config = []) ?(ssl_config = []) ?timeouts
    ~connector_version ~location ~name __id =
  let __type = "google_integration_connectors_connection" in
  let __attrs =
    ({
       tf_name = __id;
       connection_revision =
         Prop.computed __type __id "connection_revision";
       connector_version =
         Prop.computed __type __id "connector_version";
       connector_version_infra_config =
         Prop.computed __type __id "connector_version_infra_config";
       connector_version_launch_stage =
         Prop.computed __type __id "connector_version_launch_stage";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       eventing_enablement_type =
         Prop.computed __type __id "eventing_enablement_type";
       eventing_runtime_data =
         Prop.computed __type __id "eventing_runtime_data";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       service_directory =
         Prop.computed __type __id "service_directory";
       status = Prop.computed __type __id "status";
       subscription_type =
         Prop.computed __type __id "subscription_type";
       suspended = Prop.computed __type __id "suspended";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_integration_connectors_connection
        (google_integration_connectors_connection ?description
           ?eventing_enablement_type ?id ?labels ?project
           ?service_account ?suspended ~auth_config ~config_variable
           ~destination_config ~eventing_config ~lock_config
           ~log_config ~node_config ~ssl_config ?timeouts
           ~connector_version ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?eventing_enablement_type ?id
    ?labels ?project ?service_account ?suspended ?(auth_config = [])
    ?(config_variable = []) ?(destination_config = [])
    ?(eventing_config = []) ?(lock_config = []) ?(log_config = [])
    ?(node_config = []) ?(ssl_config = []) ?timeouts
    ~connector_version ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?eventing_enablement_type ?id ?labels ?project
      ?service_account ?suspended ~auth_config ~config_variable
      ~destination_config ~eventing_config ~lock_config ~log_config
      ~node_config ~ssl_config ?timeouts ~connector_version ~location
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
