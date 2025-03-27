(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_login = {
  method_ : string prop option; [@option] [@key "method"]
  namespace : string prop option; [@option]
  parameters : string prop Tf_core.assoc option; [@option]
  path : string prop;
  use_root_namespace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login) -> ()

let yojson_of_auth_login =
  (function
   | {
       method_ = v_method_;
       namespace = v_namespace;
       parameters = v_parameters;
       path = v_path;
       use_root_namespace = v_use_root_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
     in
     let bnds =
       match v_parameters with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "parameters", arg in
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
       match v_method_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "method", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : auth_login -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login

[@@@deriving.end]

type auth_login_aws = {
  aws_access_key_id : string prop option; [@option]
  aws_iam_endpoint : string prop option; [@option]
  aws_profile : string prop option; [@option]
  aws_region : string prop option; [@option]
  aws_role_arn : string prop option; [@option]
  aws_role_session_name : string prop option; [@option]
  aws_secret_access_key : string prop option; [@option]
  aws_session_token : string prop option; [@option]
  aws_shared_credentials_file : string prop option; [@option]
  aws_sts_endpoint : string prop option; [@option]
  aws_web_identity_token_file : string prop option; [@option]
  header_value : string prop option; [@option]
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
  use_root_namespace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_aws) -> ()

let yojson_of_auth_login_aws =
  (function
   | {
       aws_access_key_id = v_aws_access_key_id;
       aws_iam_endpoint = v_aws_iam_endpoint;
       aws_profile = v_aws_profile;
       aws_region = v_aws_region;
       aws_role_arn = v_aws_role_arn;
       aws_role_session_name = v_aws_role_session_name;
       aws_secret_access_key = v_aws_secret_access_key;
       aws_session_token = v_aws_session_token;
       aws_shared_credentials_file = v_aws_shared_credentials_file;
       aws_sts_endpoint = v_aws_sts_endpoint;
       aws_web_identity_token_file = v_aws_web_identity_token_file;
       header_value = v_header_value;
       mount = v_mount;
       namespace = v_namespace;
       role = v_role;
       use_root_namespace = v_use_root_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_header_value with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "header_value", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_web_identity_token_file with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_web_identity_token_file", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_sts_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_sts_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_shared_credentials_file with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_shared_credentials_file", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_session_token with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_session_token", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_secret_access_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_secret_access_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_role_session_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_role_session_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_role_arn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_role_arn", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_region", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_profile with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_profile", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_iam_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_iam_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_aws_access_key_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "aws_access_key_id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : auth_login_aws -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_aws

[@@@deriving.end]

type auth_login_azure = {
  client_id : string prop option; [@option]
  jwt : string prop option; [@option]
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  resource_group_name : string prop;
  role : string prop;
  scope : string prop option; [@option]
  subscription_id : string prop;
  tenant_id : string prop option; [@option]
  use_root_namespace : bool prop option; [@option]
  vm_name : string prop option; [@option]
  vmss_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_azure) -> ()

let yojson_of_auth_login_azure =
  (function
   | {
       client_id = v_client_id;
       jwt = v_jwt;
       mount = v_mount;
       namespace = v_namespace;
       resource_group_name = v_resource_group_name;
       role = v_role;
       scope = v_scope;
       subscription_id = v_subscription_id;
       tenant_id = v_tenant_id;
       use_root_namespace = v_use_root_namespace;
       vm_name = v_vm_name;
       vmss_name = v_vmss_name;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_vmss_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "vmss_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_vm_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "vm_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tenant_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tenant_id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_subscription_id in
       ("subscription_id", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_resource_group_name in
       ("resource_group_name", arg) :: bnds
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_jwt with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "jwt", arg in
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
    : auth_login_azure -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_azure

[@@@deriving.end]

type auth_login_cert = {
  cert_file : string prop;
  key_file : string prop;
  mount : string prop option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
  use_root_namespace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_cert) -> ()

let yojson_of_auth_login_cert =
  (function
   | {
       cert_file = v_cert_file;
       key_file = v_key_file;
       mount = v_mount;
       name = v_name;
       namespace = v_namespace;
       use_root_namespace = v_use_root_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
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
       match v_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key_file in
       ("key_file", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_cert_file in
       ("cert_file", arg) :: bnds
     in
     `Assoc bnds
    : auth_login_cert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_cert

[@@@deriving.end]

type auth_login_gcp = {
  credentials : string prop option; [@option]
  jwt : string prop option; [@option]
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
  service_account : string prop option; [@option]
  use_root_namespace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_gcp) -> ()

let yojson_of_auth_login_gcp =
  (function
   | {
       credentials = v_credentials;
       jwt = v_jwt;
       mount = v_mount;
       namespace = v_namespace;
       role = v_role;
       service_account = v_service_account;
       use_root_namespace = v_use_root_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
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
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_jwt with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "jwt", arg in
         bnd :: bnds
     in
     let bnds =
       match v_credentials with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "credentials", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : auth_login_gcp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_gcp

[@@@deriving.end]

type auth_login_jwt = {
  jwt : string prop;
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
  use_root_namespace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_jwt) -> ()

let yojson_of_auth_login_jwt =
  (function
   | { jwt = v_jwt; mount = v_mount; namespace = v_namespace; role = v_role; use_root_namespace = v_use_root_namespace }
     ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_jwt in
       ("jwt", arg) :: bnds
     in
     `Assoc bnds
    : auth_login_jwt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_jwt

[@@@deriving.end]

type auth_login_kerberos = {
  disable_fast_negotiation : bool prop option; [@option]
  keytab_path : string prop option; [@option]
  krb5conf_path : string prop option; [@option]
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  realm : string prop option; [@option]
  remove_instance_name : bool prop option; [@option]
  service : string prop option; [@option]
  token : string prop option; [@option]
  use_root_namespace : bool prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_kerberos) -> ()

let yojson_of_auth_login_kerberos =
  (function
   | {
       disable_fast_negotiation = v_disable_fast_negotiation;
       keytab_path = v_keytab_path;
       krb5conf_path = v_krb5conf_path;
       mount = v_mount;
       namespace = v_namespace;
       realm = v_realm;
       remove_instance_name = v_remove_instance_name;
       service = v_service;
       token = v_token;
       use_root_namespace = v_use_root_namespace;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
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
       match v_service with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "service", arg in
         bnd :: bnds
     in
     let bnds =
       match v_remove_instance_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "remove_instance_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_realm with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "realm", arg in
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_krb5conf_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "krb5conf_path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_keytab_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "keytab_path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_fast_negotiation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_fast_negotiation", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : auth_login_kerberos -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_kerberos

[@@@deriving.end]

type auth_login_oci = {
  auth_type : string prop;
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
  use_root_namespace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_oci) -> ()

let yojson_of_auth_login_oci =
  (function
   | {
       auth_type = v_auth_type;
       mount = v_mount;
       namespace = v_namespace;
       role = v_role;
       use_root_namespace = v_use_root_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_auth_type in
       ("auth_type", arg) :: bnds
     in
     `Assoc bnds
    : auth_login_oci -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_oci

[@@@deriving.end]

type auth_login_oidc = {
  callback_address : string prop option; [@option]
  callback_listener_address : string prop option; [@option]
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
  use_root_namespace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_oidc) -> ()

let yojson_of_auth_login_oidc =
  (function
   | {
       callback_address = v_callback_address;
       callback_listener_address = v_callback_listener_address;
       mount = v_mount;
       namespace = v_namespace;
       role = v_role;
       use_root_namespace = v_use_root_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_callback_listener_address with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "callback_listener_address", arg in
         bnd :: bnds
     in
     let bnds =
       match v_callback_address with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "callback_address", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : auth_login_oidc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_oidc

[@@@deriving.end]

type auth_login_radius = {
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  password : string prop;
  use_root_namespace : bool prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_radius) -> ()

let yojson_of_auth_login_radius =
  (function
   | {
       mount = v_mount;
       namespace = v_namespace;
       password = v_password;
       use_root_namespace = v_use_root_namespace;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_username in
       ("username", arg) :: bnds
     in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : auth_login_radius -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_radius

[@@@deriving.end]

type auth_login_token_file = {
  filename : string prop;
  namespace : string prop option; [@option]
  use_root_namespace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_token_file) -> ()

let yojson_of_auth_login_token_file =
  (function
   | { filename = v_filename; namespace = v_namespace; use_root_namespace = v_use_root_namespace } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
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
       let arg = yojson_of_prop yojson_of_string v_filename in
       ("filename", arg) :: bnds
     in
     `Assoc bnds
    : auth_login_token_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_token_file

[@@@deriving.end]

type auth_login_userpass = {
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  password : string prop option; [@option]
  password_file : string prop option; [@option]
  use_root_namespace : bool prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_login_userpass) -> ()

let yojson_of_auth_login_userpass =
  (function
   | {
       mount = v_mount;
       namespace = v_namespace;
       password = v_password;
       password_file = v_password_file;
       use_root_namespace = v_use_root_namespace;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_username in
       ("username", arg) :: bnds
     in
     let bnds =
       match v_use_root_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_root_namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password_file with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password_file", arg in
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
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : auth_login_userpass -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_login_userpass

[@@@deriving.end]

type client_auth = {
  cert_file : string prop option; [@option]
  key_file : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_auth) -> ()

let yojson_of_client_auth =
  (function
   | { cert_file = v_cert_file; key_file = v_key_file } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_key_file with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_file", arg in
         bnd :: bnds
     in
     let bnds =
       match v_cert_file with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "cert_file", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : client_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_auth

[@@@deriving.end]

type headers = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : headers) -> ()

let yojson_of_headers =
  (function
   | { name = v_name; value = v_value } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_value in
       ("value", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     `Assoc bnds
    : headers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_headers

[@@@deriving.end]

type vault = {
  add_address_to_env : string prop option; [@option]
  address : string prop;
  ca_cert_dir : string prop option; [@option]
  ca_cert_file : string prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  max_retries : float prop option; [@option]
  max_retries_ccc : float prop option; [@option]
  namespace : string prop option; [@option]
  set_namespace_from_token : bool prop option; [@option]
  skip_child_token : bool prop option; [@option]
  skip_get_vault_version : bool prop option; [@option]
  skip_tls_verify : bool prop option; [@option]
  tls_server_name : string prop option; [@option]
  token : string prop option; [@option]
  token_name : string prop option; [@option]
  vault_version_override : string prop option; [@option]
  auth_login : auth_login list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_aws : auth_login_aws list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_azure : auth_login_azure list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_cert : auth_login_cert list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_gcp : auth_login_gcp list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_jwt : auth_login_jwt list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_kerberos : auth_login_kerberos list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_oci : auth_login_oci list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_oidc : auth_login_oidc list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_radius : auth_login_radius list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_token_file : auth_login_token_file list; [@default []] [@yojson_drop_default Stdlib.( = )]
  auth_login_userpass : auth_login_userpass list; [@default []] [@yojson_drop_default Stdlib.( = )]
  client_auth : client_auth list; [@default []] [@yojson_drop_default Stdlib.( = )]
  headers : headers list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault) -> ()

let yojson_of_vault =
  (function
   | {
       add_address_to_env = v_add_address_to_env;
       address = v_address;
       ca_cert_dir = v_ca_cert_dir;
       ca_cert_file = v_ca_cert_file;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       max_retries = v_max_retries;
       max_retries_ccc = v_max_retries_ccc;
       namespace = v_namespace;
       set_namespace_from_token = v_set_namespace_from_token;
       skip_child_token = v_skip_child_token;
       skip_get_vault_version = v_skip_get_vault_version;
       skip_tls_verify = v_skip_tls_verify;
       tls_server_name = v_tls_server_name;
       token = v_token;
       token_name = v_token_name;
       vault_version_override = v_vault_version_override;
       auth_login = v_auth_login;
       auth_login_aws = v_auth_login_aws;
       auth_login_azure = v_auth_login_azure;
       auth_login_cert = v_auth_login_cert;
       auth_login_gcp = v_auth_login_gcp;
       auth_login_jwt = v_auth_login_jwt;
       auth_login_kerberos = v_auth_login_kerberos;
       auth_login_oci = v_auth_login_oci;
       auth_login_oidc = v_auth_login_oidc;
       auth_login_radius = v_auth_login_radius;
       auth_login_token_file = v_auth_login_token_file;
       auth_login_userpass = v_auth_login_userpass;
       client_auth = v_client_auth;
       headers = v_headers;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_headers then bnds
       else (
         let arg = (yojson_of_list yojson_of_headers) v_headers in
         let bnd = "headers", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_client_auth then bnds
       else (
         let arg = (yojson_of_list yojson_of_client_auth) v_client_auth in
         let bnd = "client_auth", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_userpass then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_userpass) v_auth_login_userpass in
         let bnd = "auth_login_userpass", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_token_file then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_token_file) v_auth_login_token_file in
         let bnd = "auth_login_token_file", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_radius then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_radius) v_auth_login_radius in
         let bnd = "auth_login_radius", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_oidc then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_oidc) v_auth_login_oidc in
         let bnd = "auth_login_oidc", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_oci then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_oci) v_auth_login_oci in
         let bnd = "auth_login_oci", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_kerberos then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_kerberos) v_auth_login_kerberos in
         let bnd = "auth_login_kerberos", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_jwt then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_jwt) v_auth_login_jwt in
         let bnd = "auth_login_jwt", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_gcp then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_gcp) v_auth_login_gcp in
         let bnd = "auth_login_gcp", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_cert then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_cert) v_auth_login_cert in
         let bnd = "auth_login_cert", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_azure then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_azure) v_auth_login_azure in
         let bnd = "auth_login_azure", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login_aws then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login_aws) v_auth_login_aws in
         let bnd = "auth_login_aws", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_auth_login then bnds
       else (
         let arg = (yojson_of_list yojson_of_auth_login) v_auth_login in
         let bnd = "auth_login", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_vault_version_override with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "vault_version_override", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token_name", arg in
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
       match v_tls_server_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_server_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_skip_tls_verify with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "skip_tls_verify", arg in
         bnd :: bnds
     in
     let bnds =
       match v_skip_get_vault_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "skip_get_vault_version", arg in
         bnd :: bnds
     in
     let bnds =
       match v_skip_child_token with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "skip_child_token", arg in
         bnd :: bnds
     in
     let bnds =
       match v_set_namespace_from_token with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "set_namespace_from_token", arg in
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
       match v_max_retries_ccc with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_retries_ccc", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_retries with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_retries", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_lease_ttl_seconds", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ca_cert_file with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ca_cert_file", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ca_cert_dir with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ca_cert_dir", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_address in
       ("address", arg) :: bnds
     in
     let bnds =
       match v_add_address_to_env with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "add_address_to_env", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault

[@@@deriving.end]

let auth_login ?method_ ?namespace ?parameters ?use_root_namespace ~path () =
  ({ method_; namespace; parameters; path; use_root_namespace } : auth_login)

let auth_login_aws ?aws_access_key_id ?aws_iam_endpoint ?aws_profile ?aws_region ?aws_role_arn ?aws_role_session_name
  ?aws_secret_access_key ?aws_session_token ?aws_shared_credentials_file ?aws_sts_endpoint ?aws_web_identity_token_file
  ?header_value ?mount ?namespace ?use_root_namespace ~role () =
  ({
     aws_access_key_id;
     aws_iam_endpoint;
     aws_profile;
     aws_region;
     aws_role_arn;
     aws_role_session_name;
     aws_secret_access_key;
     aws_session_token;
     aws_shared_credentials_file;
     aws_sts_endpoint;
     aws_web_identity_token_file;
     header_value;
     mount;
     namespace;
     role;
     use_root_namespace;
   }
    : auth_login_aws)

let auth_login_azure ?client_id ?jwt ?mount ?namespace ?scope ?tenant_id ?use_root_namespace ?vm_name ?vmss_name
  ~resource_group_name ~role ~subscription_id () =
  ({
     client_id;
     jwt;
     mount;
     namespace;
     resource_group_name;
     role;
     scope;
     subscription_id;
     tenant_id;
     use_root_namespace;
     vm_name;
     vmss_name;
   }
    : auth_login_azure)

let auth_login_cert ?mount ?name ?namespace ?use_root_namespace ~cert_file ~key_file () =
  ({ cert_file; key_file; mount; name; namespace; use_root_namespace } : auth_login_cert)

let auth_login_gcp ?credentials ?jwt ?mount ?namespace ?service_account ?use_root_namespace ~role () =
  ({ credentials; jwt; mount; namespace; role; service_account; use_root_namespace } : auth_login_gcp)

let auth_login_jwt ?mount ?namespace ?use_root_namespace ~jwt ~role () =
  ({ jwt; mount; namespace; role; use_root_namespace } : auth_login_jwt)

let auth_login_kerberos ?disable_fast_negotiation ?keytab_path ?krb5conf_path ?mount ?namespace ?realm
  ?remove_instance_name ?service ?token ?use_root_namespace ?username () =
  ({
     disable_fast_negotiation;
     keytab_path;
     krb5conf_path;
     mount;
     namespace;
     realm;
     remove_instance_name;
     service;
     token;
     use_root_namespace;
     username;
   }
    : auth_login_kerberos)

let auth_login_oci ?mount ?namespace ?use_root_namespace ~auth_type ~role () =
  ({ auth_type; mount; namespace; role; use_root_namespace } : auth_login_oci)

let auth_login_oidc ?callback_address ?callback_listener_address ?mount ?namespace ?use_root_namespace ~role () =
  ({ callback_address; callback_listener_address; mount; namespace; role; use_root_namespace } : auth_login_oidc)

let auth_login_radius ?mount ?namespace ?use_root_namespace ~password ~username () =
  ({ mount; namespace; password; use_root_namespace; username } : auth_login_radius)

let auth_login_token_file ?namespace ?use_root_namespace ~filename () =
  ({ filename; namespace; use_root_namespace } : auth_login_token_file)

let auth_login_userpass ?mount ?namespace ?password ?password_file ?use_root_namespace ~username () =
  ({ mount; namespace; password; password_file; use_root_namespace; username } : auth_login_userpass)

let client_auth ?cert_file ?key_file () = ({ cert_file; key_file } : client_auth)
let headers ~name ~value () = ({ name; value } : headers)

let vault ?add_address_to_env ?ca_cert_dir ?ca_cert_file ?max_lease_ttl_seconds ?max_retries ?max_retries_ccc ?namespace
  ?set_namespace_from_token ?skip_child_token ?skip_get_vault_version ?skip_tls_verify ?tls_server_name ?token
  ?token_name ?vault_version_override ?(auth_login = []) ?(auth_login_aws = []) ?(auth_login_azure = [])
  ?(auth_login_cert = []) ?(auth_login_gcp = []) ?(auth_login_jwt = []) ?(auth_login_kerberos = [])
  ?(auth_login_oci = []) ?(auth_login_oidc = []) ?(auth_login_radius = []) ?(auth_login_token_file = [])
  ?(auth_login_userpass = []) ?(client_auth = []) ?(headers = []) ~address () =
  ({
     add_address_to_env;
     address;
     ca_cert_dir;
     ca_cert_file;
     max_lease_ttl_seconds;
     max_retries;
     max_retries_ccc;
     namespace;
     set_namespace_from_token;
     skip_child_token;
     skip_get_vault_version;
     skip_tls_verify;
     tls_server_name;
     token;
     token_name;
     vault_version_override;
     auth_login;
     auth_login_aws;
     auth_login_azure;
     auth_login_cert;
     auth_login_gcp;
     auth_login_jwt;
     auth_login_kerberos;
     auth_login_oci;
     auth_login_oidc;
     auth_login_radius;
     auth_login_token_file;
     auth_login_userpass;
     client_auth;
     headers;
   }
    : vault)

let make ?add_address_to_env ?ca_cert_dir ?ca_cert_file ?max_lease_ttl_seconds ?max_retries ?max_retries_ccc ?namespace
  ?set_namespace_from_token ?skip_child_token ?skip_get_vault_version ?skip_tls_verify ?tls_server_name ?token
  ?token_name ?vault_version_override ?(auth_login = []) ?(auth_login_aws = []) ?(auth_login_azure = [])
  ?(auth_login_cert = []) ?(auth_login_gcp = []) ?(auth_login_jwt = []) ?(auth_login_kerberos = [])
  ?(auth_login_oci = []) ?(auth_login_oidc = []) ?(auth_login_radius = []) ?(auth_login_token_file = [])
  ?(auth_login_userpass = []) ?(client_auth = []) ?(headers = []) ~address () =
  {
    Tf_core.id = "vault";
    json =
      yojson_of_vault
        (vault ?add_address_to_env ?ca_cert_dir ?ca_cert_file ?max_lease_ttl_seconds ?max_retries ?max_retries_ccc
           ?namespace ?set_namespace_from_token ?skip_child_token ?skip_get_vault_version ?skip_tls_verify
           ?tls_server_name ?token ?token_name ?vault_version_override ~auth_login ~auth_login_aws ~auth_login_azure
           ~auth_login_cert ~auth_login_gcp ~auth_login_jwt ~auth_login_kerberos ~auth_login_oci ~auth_login_oidc
           ~auth_login_radius ~auth_login_token_file ~auth_login_userpass ~client_auth ~headers ~address ());
  }

let register ?tf_module ?add_address_to_env ?ca_cert_dir ?ca_cert_file ?max_lease_ttl_seconds ?max_retries
  ?max_retries_ccc ?namespace ?set_namespace_from_token ?skip_child_token ?skip_get_vault_version ?skip_tls_verify
  ?tls_server_name ?token ?token_name ?vault_version_override ?(auth_login = []) ?(auth_login_aws = [])
  ?(auth_login_azure = []) ?(auth_login_cert = []) ?(auth_login_gcp = []) ?(auth_login_jwt = [])
  ?(auth_login_kerberos = []) ?(auth_login_oci = []) ?(auth_login_oidc = []) ?(auth_login_radius = [])
  ?(auth_login_token_file = []) ?(auth_login_userpass = []) ?(client_auth = []) ?(headers = []) ~address ~version () =
  let (p : Tf_core.provider) =
    make ?add_address_to_env ?ca_cert_dir ?ca_cert_file ?max_lease_ttl_seconds ?max_retries ?max_retries_ccc ?namespace
      ?set_namespace_from_token ?skip_child_token ?skip_get_vault_version ?skip_tls_verify ?tls_server_name ?token
      ?token_name ?vault_version_override ~auth_login ~auth_login_aws ~auth_login_azure ~auth_login_cert ~auth_login_gcp
      ~auth_login_jwt ~auth_login_kerberos ~auth_login_oci ~auth_login_oidc ~auth_login_radius ~auth_login_token_file
      ~auth_login_userpass ~client_auth ~headers ~address ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc [ "source", `String "registry.terraform.io/hashicorp/vault"; "version", `String version ]);
  ()
