(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type approval_group = {
  approvals_needed : float prop;
  email_addresses : string prop list option; [@option]
  email_list_uuid : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : approval_group) -> ()

let yojson_of_approval_group =
  (function
   | {
       approvals_needed = v_approvals_needed;
       email_addresses = v_email_addresses;
       email_list_uuid = v_email_list_uuid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_email_list_uuid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_list_uuid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_approvals_needed
         in
         ("approvals_needed", arg) :: bnds
       in
       `Assoc bnds
    : approval_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_group

[@@@deriving.end]

type exclude__auth_context = {
  ac_id : string prop;
  id : string prop;
  identity_provider_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude__auth_context) -> ()

let yojson_of_exclude__auth_context =
  (function
   | {
       ac_id = v_ac_id;
       id = v_id;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_provider_id
         in
         ("identity_provider_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ac_id in
         ("ac_id", arg) :: bnds
       in
       `Assoc bnds
    : exclude__auth_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude__auth_context

[@@@deriving.end]

type exclude__azure = {
  id : string prop list option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude__azure) -> ()

let yojson_of_exclude__azure =
  (function
   | { id = v_id; identity_provider_id = v_identity_provider_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude__azure -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude__azure

[@@@deriving.end]

type exclude__external_evaluation = {
  evaluate_url : string prop option; [@option]
  keys_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude__external_evaluation) -> ()

let yojson_of_exclude__external_evaluation =
  (function
   | { evaluate_url = v_evaluate_url; keys_url = v_keys_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_keys_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keys_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluate_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluate_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude__external_evaluation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude__external_evaluation

[@@@deriving.end]

type exclude__github = {
  identity_provider_id : string prop option; [@option]
  name : string prop option; [@option]
  teams : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude__github) -> ()

let yojson_of_exclude__github =
  (function
   | {
       identity_provider_id = v_identity_provider_id;
       name = v_name;
       teams = v_teams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_teams with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "teams", arg in
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
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude__github

[@@@deriving.end]

type exclude__gsuite = {
  email : string prop list option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude__gsuite) -> ()

let yojson_of_exclude__gsuite =
  (function
   | {
       email = v_email;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude__gsuite -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude__gsuite

[@@@deriving.end]

type exclude__okta = {
  identity_provider_id : string prop option; [@option]
  name : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude__okta) -> ()

let yojson_of_exclude__okta =
  (function
   | { identity_provider_id = v_identity_provider_id; name = v_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude__okta -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude__okta

[@@@deriving.end]

type exclude__saml = {
  attribute_name : string prop option; [@option]
  attribute_value : string prop option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude__saml) -> ()

let yojson_of_exclude__saml =
  (function
   | {
       attribute_name = v_attribute_name;
       attribute_value = v_attribute_value;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attribute_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attribute_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude__saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude__saml

[@@@deriving.end]

type exclude = {
  any_valid_service_token : bool prop option; [@option]
  auth_method : string prop option; [@option]
  certificate : bool prop option; [@option]
  common_name : string prop option; [@option]
  common_names : string prop list option; [@option]
  device_posture : string prop list option; [@option]
  email : string prop list option; [@option]
  email_domain : string prop list option; [@option]
  email_list : string prop list option; [@option]
  everyone : bool prop option; [@option]
  geo : string prop list option; [@option]
  group : string prop list option; [@option]
  ip : string prop list option; [@option]
  ip_list : string prop list option; [@option]
  login_method : string prop list option; [@option]
  service_token : string prop list option; [@option]
  auth_context : exclude__auth_context list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  azure : exclude__azure list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  external_evaluation : exclude__external_evaluation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github : exclude__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gsuite : exclude__gsuite list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  okta : exclude__okta list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  saml : exclude__saml list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude) -> ()

let yojson_of_exclude =
  (function
   | {
       any_valid_service_token = v_any_valid_service_token;
       auth_method = v_auth_method;
       certificate = v_certificate;
       common_name = v_common_name;
       common_names = v_common_names;
       device_posture = v_device_posture;
       email = v_email;
       email_domain = v_email_domain;
       email_list = v_email_list;
       everyone = v_everyone;
       geo = v_geo;
       group = v_group;
       ip = v_ip;
       ip_list = v_ip_list;
       login_method = v_login_method;
       service_token = v_service_token;
       auth_context = v_auth_context;
       azure = v_azure;
       external_evaluation = v_external_evaluation;
       github = v_github;
       gsuite = v_gsuite;
       okta = v_okta;
       saml = v_saml;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_saml then bnds
         else
           let arg =
             (yojson_of_list yojson_of_exclude__saml) v_saml
           in
           let bnd = "saml", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_okta then bnds
         else
           let arg =
             (yojson_of_list yojson_of_exclude__okta) v_okta
           in
           let bnd = "okta", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gsuite then bnds
         else
           let arg =
             (yojson_of_list yojson_of_exclude__gsuite) v_gsuite
           in
           let bnd = "gsuite", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_exclude__github) v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_evaluation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_exclude__external_evaluation)
               v_external_evaluation
           in
           let bnd = "external_evaluation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure then bnds
         else
           let arg =
             (yojson_of_list yojson_of_exclude__azure) v_azure
           in
           let bnd = "azure", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auth_context then bnds
         else
           let arg =
             (yojson_of_list yojson_of_exclude__auth_context)
               v_auth_context
           in
           let bnd = "auth_context", arg in
           bnd :: bnds
       in
       let bnds =
         match v_service_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_login_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "login_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_geo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "geo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_everyone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "everyone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_posture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "device_posture", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "common_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_any_valid_service_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "any_valid_service_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude

[@@@deriving.end]

type include__auth_context = {
  ac_id : string prop;
  id : string prop;
  identity_provider_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include__auth_context) -> ()

let yojson_of_include__auth_context =
  (function
   | {
       ac_id = v_ac_id;
       id = v_id;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_provider_id
         in
         ("identity_provider_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ac_id in
         ("ac_id", arg) :: bnds
       in
       `Assoc bnds
    : include__auth_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include__auth_context

[@@@deriving.end]

type include__azure = {
  id : string prop list option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include__azure) -> ()

let yojson_of_include__azure =
  (function
   | { id = v_id; identity_provider_id = v_identity_provider_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include__azure -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include__azure

[@@@deriving.end]

type include__external_evaluation = {
  evaluate_url : string prop option; [@option]
  keys_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include__external_evaluation) -> ()

let yojson_of_include__external_evaluation =
  (function
   | { evaluate_url = v_evaluate_url; keys_url = v_keys_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_keys_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keys_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluate_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluate_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include__external_evaluation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include__external_evaluation

[@@@deriving.end]

type include__github = {
  identity_provider_id : string prop option; [@option]
  name : string prop option; [@option]
  teams : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include__github) -> ()

let yojson_of_include__github =
  (function
   | {
       identity_provider_id = v_identity_provider_id;
       name = v_name;
       teams = v_teams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_teams with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "teams", arg in
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
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include__github

[@@@deriving.end]

type include__gsuite = {
  email : string prop list option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include__gsuite) -> ()

let yojson_of_include__gsuite =
  (function
   | {
       email = v_email;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include__gsuite -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include__gsuite

[@@@deriving.end]

type include__okta = {
  identity_provider_id : string prop option; [@option]
  name : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include__okta) -> ()

let yojson_of_include__okta =
  (function
   | { identity_provider_id = v_identity_provider_id; name = v_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include__okta -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include__okta

[@@@deriving.end]

type include__saml = {
  attribute_name : string prop option; [@option]
  attribute_value : string prop option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include__saml) -> ()

let yojson_of_include__saml =
  (function
   | {
       attribute_name = v_attribute_name;
       attribute_value = v_attribute_value;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attribute_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attribute_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include__saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include__saml

[@@@deriving.end]

type include_ = {
  any_valid_service_token : bool prop option; [@option]
  auth_method : string prop option; [@option]
  certificate : bool prop option; [@option]
  common_name : string prop option; [@option]
  common_names : string prop list option; [@option]
  device_posture : string prop list option; [@option]
  email : string prop list option; [@option]
  email_domain : string prop list option; [@option]
  email_list : string prop list option; [@option]
  everyone : bool prop option; [@option]
  geo : string prop list option; [@option]
  group : string prop list option; [@option]
  ip : string prop list option; [@option]
  ip_list : string prop list option; [@option]
  login_method : string prop list option; [@option]
  service_token : string prop list option; [@option]
  auth_context : include__auth_context list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  azure : include__azure list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  external_evaluation : include__external_evaluation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github : include__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gsuite : include__gsuite list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  okta : include__okta list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  saml : include__saml list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include_) -> ()

let yojson_of_include_ =
  (function
   | {
       any_valid_service_token = v_any_valid_service_token;
       auth_method = v_auth_method;
       certificate = v_certificate;
       common_name = v_common_name;
       common_names = v_common_names;
       device_posture = v_device_posture;
       email = v_email;
       email_domain = v_email_domain;
       email_list = v_email_list;
       everyone = v_everyone;
       geo = v_geo;
       group = v_group;
       ip = v_ip;
       ip_list = v_ip_list;
       login_method = v_login_method;
       service_token = v_service_token;
       auth_context = v_auth_context;
       azure = v_azure;
       external_evaluation = v_external_evaluation;
       github = v_github;
       gsuite = v_gsuite;
       okta = v_okta;
       saml = v_saml;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_saml then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include__saml) v_saml
           in
           let bnd = "saml", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_okta then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include__okta) v_okta
           in
           let bnd = "okta", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gsuite then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include__gsuite) v_gsuite
           in
           let bnd = "gsuite", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include__github) v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_evaluation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include__external_evaluation)
               v_external_evaluation
           in
           let bnd = "external_evaluation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include__azure) v_azure
           in
           let bnd = "azure", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auth_context then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include__auth_context)
               v_auth_context
           in
           let bnd = "auth_context", arg in
           bnd :: bnds
       in
       let bnds =
         match v_service_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_login_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "login_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_geo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "geo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_everyone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "everyone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_posture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "device_posture", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "common_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_any_valid_service_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "any_valid_service_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include_

[@@@deriving.end]

type require__auth_context = {
  ac_id : string prop;
  id : string prop;
  identity_provider_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : require__auth_context) -> ()

let yojson_of_require__auth_context =
  (function
   | {
       ac_id = v_ac_id;
       id = v_id;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_provider_id
         in
         ("identity_provider_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ac_id in
         ("ac_id", arg) :: bnds
       in
       `Assoc bnds
    : require__auth_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_require__auth_context

[@@@deriving.end]

type require__azure = {
  id : string prop list option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : require__azure) -> ()

let yojson_of_require__azure =
  (function
   | { id = v_id; identity_provider_id = v_identity_provider_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : require__azure -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_require__azure

[@@@deriving.end]

type require__external_evaluation = {
  evaluate_url : string prop option; [@option]
  keys_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : require__external_evaluation) -> ()

let yojson_of_require__external_evaluation =
  (function
   | { evaluate_url = v_evaluate_url; keys_url = v_keys_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_keys_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keys_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluate_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluate_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : require__external_evaluation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_require__external_evaluation

[@@@deriving.end]

type require__github = {
  identity_provider_id : string prop option; [@option]
  name : string prop option; [@option]
  teams : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : require__github) -> ()

let yojson_of_require__github =
  (function
   | {
       identity_provider_id = v_identity_provider_id;
       name = v_name;
       teams = v_teams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_teams with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "teams", arg in
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
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : require__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_require__github

[@@@deriving.end]

type require__gsuite = {
  email : string prop list option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : require__gsuite) -> ()

let yojson_of_require__gsuite =
  (function
   | {
       email = v_email;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : require__gsuite -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_require__gsuite

[@@@deriving.end]

type require__okta = {
  identity_provider_id : string prop option; [@option]
  name : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : require__okta) -> ()

let yojson_of_require__okta =
  (function
   | { identity_provider_id = v_identity_provider_id; name = v_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : require__okta -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_require__okta

[@@@deriving.end]

type require__saml = {
  attribute_name : string prop option; [@option]
  attribute_value : string prop option; [@option]
  identity_provider_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : require__saml) -> ()

let yojson_of_require__saml =
  (function
   | {
       attribute_name = v_attribute_name;
       attribute_value = v_attribute_value;
       identity_provider_id = v_identity_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_provider_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attribute_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attribute_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : require__saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_require__saml

[@@@deriving.end]

type require = {
  any_valid_service_token : bool prop option; [@option]
  auth_method : string prop option; [@option]
  certificate : bool prop option; [@option]
  common_name : string prop option; [@option]
  common_names : string prop list option; [@option]
  device_posture : string prop list option; [@option]
  email : string prop list option; [@option]
  email_domain : string prop list option; [@option]
  email_list : string prop list option; [@option]
  everyone : bool prop option; [@option]
  geo : string prop list option; [@option]
  group : string prop list option; [@option]
  ip : string prop list option; [@option]
  ip_list : string prop list option; [@option]
  login_method : string prop list option; [@option]
  service_token : string prop list option; [@option]
  auth_context : require__auth_context list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  azure : require__azure list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  external_evaluation : require__external_evaluation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github : require__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gsuite : require__gsuite list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  okta : require__okta list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  saml : require__saml list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : require) -> ()

let yojson_of_require =
  (function
   | {
       any_valid_service_token = v_any_valid_service_token;
       auth_method = v_auth_method;
       certificate = v_certificate;
       common_name = v_common_name;
       common_names = v_common_names;
       device_posture = v_device_posture;
       email = v_email;
       email_domain = v_email_domain;
       email_list = v_email_list;
       everyone = v_everyone;
       geo = v_geo;
       group = v_group;
       ip = v_ip;
       ip_list = v_ip_list;
       login_method = v_login_method;
       service_token = v_service_token;
       auth_context = v_auth_context;
       azure = v_azure;
       external_evaluation = v_external_evaluation;
       github = v_github;
       gsuite = v_gsuite;
       okta = v_okta;
       saml = v_saml;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_saml then bnds
         else
           let arg =
             (yojson_of_list yojson_of_require__saml) v_saml
           in
           let bnd = "saml", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_okta then bnds
         else
           let arg =
             (yojson_of_list yojson_of_require__okta) v_okta
           in
           let bnd = "okta", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gsuite then bnds
         else
           let arg =
             (yojson_of_list yojson_of_require__gsuite) v_gsuite
           in
           let bnd = "gsuite", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_require__github) v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_evaluation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_require__external_evaluation)
               v_external_evaluation
           in
           let bnd = "external_evaluation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure then bnds
         else
           let arg =
             (yojson_of_list yojson_of_require__azure) v_azure
           in
           let bnd = "azure", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auth_context then bnds
         else
           let arg =
             (yojson_of_list yojson_of_require__auth_context)
               v_auth_context
           in
           let bnd = "auth_context", arg in
           bnd :: bnds
       in
       let bnds =
         match v_service_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_login_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "login_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_geo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "geo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_everyone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "everyone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_posture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "device_posture", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "common_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_any_valid_service_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "any_valid_service_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : require -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_require

[@@@deriving.end]

type cloudflare_access_policy = {
  account_id : string prop option; [@option]
  application_id : string prop option; [@option]
  approval_required : bool prop option; [@option]
  decision : string prop;
  id : string prop option; [@option]
  isolation_required : bool prop option; [@option]
  name : string prop;
  precedence : float prop option; [@option]
  purpose_justification_prompt : string prop option; [@option]
  purpose_justification_required : bool prop option; [@option]
  session_duration : string prop option; [@option]
  zone_id : string prop option; [@option]
  approval_group : approval_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  exclude : exclude list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_ : include_ list;
      [@key "include"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  require : require list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_policy) -> ()

let yojson_of_cloudflare_access_policy =
  (function
   | {
       account_id = v_account_id;
       application_id = v_application_id;
       approval_required = v_approval_required;
       decision = v_decision;
       id = v_id;
       isolation_required = v_isolation_required;
       name = v_name;
       precedence = v_precedence;
       purpose_justification_prompt = v_purpose_justification_prompt;
       purpose_justification_required =
         v_purpose_justification_required;
       session_duration = v_session_duration;
       zone_id = v_zone_id;
       approval_group = v_approval_group;
       exclude = v_exclude;
       include_ = v_include_;
       require = v_require;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_require then bnds
         else
           let arg = (yojson_of_list yojson_of_require) v_require in
           let bnd = "require", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_include_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include_) v_include_
           in
           let bnd = "include", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclude then bnds
         else
           let arg = (yojson_of_list yojson_of_exclude) v_exclude in
           let bnd = "exclude", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_approval_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_approval_group)
               v_approval_group
           in
           let bnd = "approval_group", arg in
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
         match v_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purpose_justification_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purpose_justification_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purpose_justification_prompt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "purpose_justification_prompt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_precedence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "precedence", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_isolation_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "isolation_required", arg in
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
         let arg = yojson_of_prop yojson_of_string v_decision in
         ("decision", arg) :: bnds
       in
       let bnds =
         match v_approval_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "approval_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_id", arg in
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
    : cloudflare_access_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_policy

[@@@deriving.end]

let approval_group ?email_addresses ?email_list_uuid
    ~approvals_needed () : approval_group =
  { approvals_needed; email_addresses; email_list_uuid }

let exclude__auth_context ~ac_id ~id ~identity_provider_id () :
    exclude__auth_context =
  { ac_id; id; identity_provider_id }

let exclude__azure ?id ?identity_provider_id () : exclude__azure =
  { id; identity_provider_id }

let exclude__external_evaluation ?evaluate_url ?keys_url () :
    exclude__external_evaluation =
  { evaluate_url; keys_url }

let exclude__github ?identity_provider_id ?name ?teams () :
    exclude__github =
  { identity_provider_id; name; teams }

let exclude__gsuite ?email ?identity_provider_id () : exclude__gsuite
    =
  { email; identity_provider_id }

let exclude__okta ?identity_provider_id ?name () : exclude__okta =
  { identity_provider_id; name }

let exclude__saml ?attribute_name ?attribute_value
    ?identity_provider_id () : exclude__saml =
  { attribute_name; attribute_value; identity_provider_id }

let exclude ?any_valid_service_token ?auth_method ?certificate
    ?common_name ?common_names ?device_posture ?email ?email_domain
    ?email_list ?everyone ?geo ?group ?ip ?ip_list ?login_method
    ?service_token ?(auth_context = []) ?(azure = [])
    ?(external_evaluation = []) ?(github = []) ?(gsuite = [])
    ?(okta = []) ?(saml = []) () : exclude =
  {
    any_valid_service_token;
    auth_method;
    certificate;
    common_name;
    common_names;
    device_posture;
    email;
    email_domain;
    email_list;
    everyone;
    geo;
    group;
    ip;
    ip_list;
    login_method;
    service_token;
    auth_context;
    azure;
    external_evaluation;
    github;
    gsuite;
    okta;
    saml;
  }

let include__auth_context ~ac_id ~id ~identity_provider_id () :
    include__auth_context =
  { ac_id; id; identity_provider_id }

let include__azure ?id ?identity_provider_id () : include__azure =
  { id; identity_provider_id }

let include__external_evaluation ?evaluate_url ?keys_url () :
    include__external_evaluation =
  { evaluate_url; keys_url }

let include__github ?identity_provider_id ?name ?teams () :
    include__github =
  { identity_provider_id; name; teams }

let include__gsuite ?email ?identity_provider_id () : include__gsuite
    =
  { email; identity_provider_id }

let include__okta ?identity_provider_id ?name () : include__okta =
  { identity_provider_id; name }

let include__saml ?attribute_name ?attribute_value
    ?identity_provider_id () : include__saml =
  { attribute_name; attribute_value; identity_provider_id }

let include_ ?any_valid_service_token ?auth_method ?certificate
    ?common_name ?common_names ?device_posture ?email ?email_domain
    ?email_list ?everyone ?geo ?group ?ip ?ip_list ?login_method
    ?service_token ?(auth_context = []) ?(azure = [])
    ?(external_evaluation = []) ?(github = []) ?(gsuite = [])
    ?(okta = []) ?(saml = []) () : include_ =
  {
    any_valid_service_token;
    auth_method;
    certificate;
    common_name;
    common_names;
    device_posture;
    email;
    email_domain;
    email_list;
    everyone;
    geo;
    group;
    ip;
    ip_list;
    login_method;
    service_token;
    auth_context;
    azure;
    external_evaluation;
    github;
    gsuite;
    okta;
    saml;
  }

let require__auth_context ~ac_id ~id ~identity_provider_id () :
    require__auth_context =
  { ac_id; id; identity_provider_id }

let require__azure ?id ?identity_provider_id () : require__azure =
  { id; identity_provider_id }

let require__external_evaluation ?evaluate_url ?keys_url () :
    require__external_evaluation =
  { evaluate_url; keys_url }

let require__github ?identity_provider_id ?name ?teams () :
    require__github =
  { identity_provider_id; name; teams }

let require__gsuite ?email ?identity_provider_id () : require__gsuite
    =
  { email; identity_provider_id }

let require__okta ?identity_provider_id ?name () : require__okta =
  { identity_provider_id; name }

let require__saml ?attribute_name ?attribute_value
    ?identity_provider_id () : require__saml =
  { attribute_name; attribute_value; identity_provider_id }

let require ?any_valid_service_token ?auth_method ?certificate
    ?common_name ?common_names ?device_posture ?email ?email_domain
    ?email_list ?everyone ?geo ?group ?ip ?ip_list ?login_method
    ?service_token ?(auth_context = []) ?(azure = [])
    ?(external_evaluation = []) ?(github = []) ?(gsuite = [])
    ?(okta = []) ?(saml = []) () : require =
  {
    any_valid_service_token;
    auth_method;
    certificate;
    common_name;
    common_names;
    device_posture;
    email;
    email_domain;
    email_list;
    everyone;
    geo;
    group;
    ip;
    ip_list;
    login_method;
    service_token;
    auth_context;
    azure;
    external_evaluation;
    github;
    gsuite;
    okta;
    saml;
  }

let cloudflare_access_policy ?account_id ?application_id
    ?approval_required ?id ?isolation_required ?precedence
    ?purpose_justification_prompt ?purpose_justification_required
    ?session_duration ?zone_id ?(approval_group = []) ?(exclude = [])
    ?(require = []) ~decision ~name ~include_ () :
    cloudflare_access_policy =
  {
    account_id;
    application_id;
    approval_required;
    decision;
    id;
    isolation_required;
    name;
    precedence;
    purpose_justification_prompt;
    purpose_justification_required;
    session_duration;
    zone_id;
    approval_group;
    exclude;
    include_;
    require;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  application_id : string prop;
  approval_required : bool prop;
  decision : string prop;
  id : string prop;
  isolation_required : bool prop;
  name : string prop;
  precedence : float prop;
  purpose_justification_prompt : string prop;
  purpose_justification_required : bool prop;
  session_duration : string prop;
  zone_id : string prop;
}

let make ?account_id ?application_id ?approval_required ?id
    ?isolation_required ?precedence ?purpose_justification_prompt
    ?purpose_justification_required ?session_duration ?zone_id
    ?(approval_group = []) ?(exclude = []) ?(require = []) ~decision
    ~name ~include_ __id =
  let __type = "cloudflare_access_policy" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       application_id = Prop.computed __type __id "application_id";
       approval_required =
         Prop.computed __type __id "approval_required";
       decision = Prop.computed __type __id "decision";
       id = Prop.computed __type __id "id";
       isolation_required =
         Prop.computed __type __id "isolation_required";
       name = Prop.computed __type __id "name";
       precedence = Prop.computed __type __id "precedence";
       purpose_justification_prompt =
         Prop.computed __type __id "purpose_justification_prompt";
       purpose_justification_required =
         Prop.computed __type __id "purpose_justification_required";
       session_duration =
         Prop.computed __type __id "session_duration";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_policy
        (cloudflare_access_policy ?account_id ?application_id
           ?approval_required ?id ?isolation_required ?precedence
           ?purpose_justification_prompt
           ?purpose_justification_required ?session_duration ?zone_id
           ~approval_group ~exclude ~require ~decision ~name
           ~include_ ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?application_id
    ?approval_required ?id ?isolation_required ?precedence
    ?purpose_justification_prompt ?purpose_justification_required
    ?session_duration ?zone_id ?(approval_group = []) ?(exclude = [])
    ?(require = []) ~decision ~name ~include_ __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?application_id ?approval_required ?id
      ?isolation_required ?precedence ?purpose_justification_prompt
      ?purpose_justification_required ?session_duration ?zone_id
      ~approval_group ~exclude ~require ~decision ~name ~include_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
