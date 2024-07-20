(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity_constraints__cel_expression = {
  description : string prop option; [@option]
  expression : string prop option; [@option]
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity_constraints__cel_expression) -> ()

let yojson_of_identity_constraints__cel_expression =
  (function
   | {
       description = v_description;
       expression = v_expression;
       location = v_location;
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
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
       `Assoc bnds
    : identity_constraints__cel_expression ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity_constraints__cel_expression

[@@@deriving.end]

type identity_constraints = {
  allow_subject_alt_names_passthrough : bool prop;
  allow_subject_passthrough : bool prop;
  cel_expression : identity_constraints__cel_expression list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity_constraints) -> ()

let yojson_of_identity_constraints =
  (function
   | {
       allow_subject_alt_names_passthrough =
         v_allow_subject_alt_names_passthrough;
       allow_subject_passthrough = v_allow_subject_passthrough;
       cel_expression = v_cel_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cel_expression then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_identity_constraints__cel_expression)
               v_cel_expression
           in
           let bnd = "cel_expression", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_subject_passthrough
         in
         ("allow_subject_passthrough", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_allow_subject_alt_names_passthrough
         in
         ("allow_subject_alt_names_passthrough", arg) :: bnds
       in
       `Assoc bnds
    : identity_constraints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity_constraints

[@@@deriving.end]

type passthrough_extensions__additional_extensions = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : passthrough_extensions__additional_extensions) -> ()

let yojson_of_passthrough_extensions__additional_extensions =
  (function
   | { object_id_path = v_object_id_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_object_id_path then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_object_id_path
           in
           let bnd = "object_id_path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : passthrough_extensions__additional_extensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_passthrough_extensions__additional_extensions

[@@@deriving.end]

type passthrough_extensions = {
  known_extensions : string prop list option; [@option]
  additional_extensions :
    passthrough_extensions__additional_extensions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : passthrough_extensions) -> ()

let yojson_of_passthrough_extensions =
  (function
   | {
       known_extensions = v_known_extensions;
       additional_extensions = v_additional_extensions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_extensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_passthrough_extensions__additional_extensions)
               v_additional_extensions
           in
           let bnd = "additional_extensions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_known_extensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "known_extensions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : passthrough_extensions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_passthrough_extensions

[@@@deriving.end]

type predefined_values__additional_extensions__object_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : predefined_values__additional_extensions__object_id) -> ()

let yojson_of_predefined_values__additional_extensions__object_id =
  (function
   | { object_id_path = v_object_id_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_object_id_path then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_object_id_path
           in
           let bnd = "object_id_path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : predefined_values__additional_extensions__object_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predefined_values__additional_extensions__object_id

[@@@deriving.end]

type predefined_values__additional_extensions = {
  critical : bool prop option; [@option]
  value : string prop;
  object_id :
    predefined_values__additional_extensions__object_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predefined_values__additional_extensions) -> ()

let yojson_of_predefined_values__additional_extensions =
  (function
   | {
       critical = v_critical;
       value = v_value;
       object_id = v_object_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_object_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predefined_values__additional_extensions__object_id)
               v_object_id
           in
           let bnd = "object_id", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_critical with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "critical", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predefined_values__additional_extensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predefined_values__additional_extensions

[@@@deriving.end]

type predefined_values__ca_options = {
  is_ca : bool prop option; [@option]
  max_issuer_path_length : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predefined_values__ca_options) -> ()

let yojson_of_predefined_values__ca_options =
  (function
   | {
       is_ca = v_is_ca;
       max_issuer_path_length = v_max_issuer_path_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_issuer_path_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_issuer_path_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_ca with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_ca", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predefined_values__ca_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predefined_values__ca_options

[@@@deriving.end]

type predefined_values__key_usage__base_key_usage = {
  cert_sign : bool prop option; [@option]
  content_commitment : bool prop option; [@option]
  crl_sign : bool prop option; [@option]
  data_encipherment : bool prop option; [@option]
  decipher_only : bool prop option; [@option]
  digital_signature : bool prop option; [@option]
  encipher_only : bool prop option; [@option]
  key_agreement : bool prop option; [@option]
  key_encipherment : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predefined_values__key_usage__base_key_usage) -> ()

let yojson_of_predefined_values__key_usage__base_key_usage =
  (function
   | {
       cert_sign = v_cert_sign;
       content_commitment = v_content_commitment;
       crl_sign = v_crl_sign;
       data_encipherment = v_data_encipherment;
       decipher_only = v_decipher_only;
       digital_signature = v_digital_signature;
       encipher_only = v_encipher_only;
       key_agreement = v_key_agreement;
       key_encipherment = v_key_encipherment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_encipherment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "key_encipherment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_agreement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "key_agreement", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encipher_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encipher_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digital_signature with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "digital_signature", arg in
             bnd :: bnds
       in
       let bnds =
         match v_decipher_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "decipher_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_encipherment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_encipherment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crl_sign with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "crl_sign", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_commitment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "content_commitment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cert_sign with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cert_sign", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predefined_values__key_usage__base_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predefined_values__key_usage__base_key_usage

[@@@deriving.end]

type predefined_values__key_usage__extended_key_usage = {
  client_auth : bool prop option; [@option]
  code_signing : bool prop option; [@option]
  email_protection : bool prop option; [@option]
  ocsp_signing : bool prop option; [@option]
  server_auth : bool prop option; [@option]
  time_stamping : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : predefined_values__key_usage__extended_key_usage) -> ()

let yojson_of_predefined_values__key_usage__extended_key_usage =
  (function
   | {
       client_auth = v_client_auth;
       code_signing = v_code_signing;
       email_protection = v_email_protection;
       ocsp_signing = v_ocsp_signing;
       server_auth = v_server_auth;
       time_stamping = v_time_stamping;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_stamping with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "time_stamping", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "server_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ocsp_signing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ocsp_signing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "email_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_code_signing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "code_signing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_auth", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predefined_values__key_usage__extended_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predefined_values__key_usage__extended_key_usage

[@@@deriving.end]

type predefined_values__key_usage__unknown_extended_key_usages = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : predefined_values__key_usage__unknown_extended_key_usages) ->
  ()

let yojson_of_predefined_values__key_usage__unknown_extended_key_usages
    =
  (function
   | { object_id_path = v_object_id_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_object_id_path then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_object_id_path
           in
           let bnd = "object_id_path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : predefined_values__key_usage__unknown_extended_key_usages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predefined_values__key_usage__unknown_extended_key_usages

[@@@deriving.end]

type predefined_values__key_usage = {
  base_key_usage : predefined_values__key_usage__base_key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extended_key_usage :
    predefined_values__key_usage__extended_key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unknown_extended_key_usages :
    predefined_values__key_usage__unknown_extended_key_usages list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predefined_values__key_usage) -> ()

let yojson_of_predefined_values__key_usage =
  (function
   | {
       base_key_usage = v_base_key_usage;
       extended_key_usage = v_extended_key_usage;
       unknown_extended_key_usages = v_unknown_extended_key_usages;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_unknown_extended_key_usages then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predefined_values__key_usage__unknown_extended_key_usages)
               v_unknown_extended_key_usages
           in
           let bnd = "unknown_extended_key_usages", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extended_key_usage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predefined_values__key_usage__extended_key_usage)
               v_extended_key_usage
           in
           let bnd = "extended_key_usage", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_base_key_usage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predefined_values__key_usage__base_key_usage)
               v_base_key_usage
           in
           let bnd = "base_key_usage", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : predefined_values__key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predefined_values__key_usage

[@@@deriving.end]

type predefined_values__policy_ids = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predefined_values__policy_ids) -> ()

let yojson_of_predefined_values__policy_ids =
  (function
   | { object_id_path = v_object_id_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_object_id_path then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_object_id_path
           in
           let bnd = "object_id_path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : predefined_values__policy_ids ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predefined_values__policy_ids

[@@@deriving.end]

type predefined_values = {
  aia_ocsp_servers : string prop list option; [@option]
  additional_extensions :
    predefined_values__additional_extensions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ca_options : predefined_values__ca_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_usage : predefined_values__key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policy_ids : predefined_values__policy_ids list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predefined_values) -> ()

let yojson_of_predefined_values =
  (function
   | {
       aia_ocsp_servers = v_aia_ocsp_servers;
       additional_extensions = v_additional_extensions;
       ca_options = v_ca_options;
       key_usage = v_key_usage;
       policy_ids = v_policy_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_ids then bnds
         else
           let arg =
             (yojson_of_list yojson_of_predefined_values__policy_ids)
               v_policy_ids
           in
           let bnd = "policy_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key_usage then bnds
         else
           let arg =
             (yojson_of_list yojson_of_predefined_values__key_usage)
               v_key_usage
           in
           let bnd = "key_usage", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ca_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_predefined_values__ca_options)
               v_ca_options
           in
           let bnd = "ca_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_extensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predefined_values__additional_extensions)
               v_additional_extensions
           in
           let bnd = "additional_extensions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_aia_ocsp_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "aia_ocsp_servers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predefined_values -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predefined_values

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

type google_privateca_certificate_template = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  maximum_lifetime : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  identity_constraints : identity_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  passthrough_extensions : passthrough_extensions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  predefined_values : predefined_values list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_privateca_certificate_template) -> ()

let yojson_of_google_privateca_certificate_template =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       maximum_lifetime = v_maximum_lifetime;
       name = v_name;
       project = v_project;
       identity_constraints = v_identity_constraints;
       passthrough_extensions = v_passthrough_extensions;
       predefined_values = v_predefined_values;
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
         if Stdlib.( = ) [] v_predefined_values then bnds
         else
           let arg =
             (yojson_of_list yojson_of_predefined_values)
               v_predefined_values
           in
           let bnd = "predefined_values", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_passthrough_extensions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_passthrough_extensions)
               v_passthrough_extensions
           in
           let bnd = "passthrough_extensions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_constraints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity_constraints)
               v_identity_constraints
           in
           let bnd = "identity_constraints", arg in
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
         match v_maximum_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_lifetime", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_privateca_certificate_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_privateca_certificate_template

[@@@deriving.end]

let identity_constraints__cel_expression ?description ?expression
    ?location ?title () : identity_constraints__cel_expression =
  { description; expression; location; title }

let identity_constraints ?(cel_expression = [])
    ~allow_subject_alt_names_passthrough ~allow_subject_passthrough
    () : identity_constraints =
  {
    allow_subject_alt_names_passthrough;
    allow_subject_passthrough;
    cel_expression;
  }

let passthrough_extensions__additional_extensions ~object_id_path ()
    : passthrough_extensions__additional_extensions =
  { object_id_path }

let passthrough_extensions ?known_extensions
    ?(additional_extensions = []) () : passthrough_extensions =
  { known_extensions; additional_extensions }

let predefined_values__additional_extensions__object_id
    ~object_id_path () :
    predefined_values__additional_extensions__object_id =
  { object_id_path }

let predefined_values__additional_extensions ?critical ~value
    ~object_id () : predefined_values__additional_extensions =
  { critical; value; object_id }

let predefined_values__ca_options ?is_ca ?max_issuer_path_length () :
    predefined_values__ca_options =
  { is_ca; max_issuer_path_length }

let predefined_values__key_usage__base_key_usage ?cert_sign
    ?content_commitment ?crl_sign ?data_encipherment ?decipher_only
    ?digital_signature ?encipher_only ?key_agreement
    ?key_encipherment () :
    predefined_values__key_usage__base_key_usage =
  {
    cert_sign;
    content_commitment;
    crl_sign;
    data_encipherment;
    decipher_only;
    digital_signature;
    encipher_only;
    key_agreement;
    key_encipherment;
  }

let predefined_values__key_usage__extended_key_usage ?client_auth
    ?code_signing ?email_protection ?ocsp_signing ?server_auth
    ?time_stamping () :
    predefined_values__key_usage__extended_key_usage =
  {
    client_auth;
    code_signing;
    email_protection;
    ocsp_signing;
    server_auth;
    time_stamping;
  }

let predefined_values__key_usage__unknown_extended_key_usages
    ~object_id_path () :
    predefined_values__key_usage__unknown_extended_key_usages =
  { object_id_path }

let predefined_values__key_usage ?(base_key_usage = [])
    ?(extended_key_usage = []) ?(unknown_extended_key_usages = []) ()
    : predefined_values__key_usage =
  { base_key_usage; extended_key_usage; unknown_extended_key_usages }

let predefined_values__policy_ids ~object_id_path () :
    predefined_values__policy_ids =
  { object_id_path }

let predefined_values ?aia_ocsp_servers ?(additional_extensions = [])
    ?(ca_options = []) ?(key_usage = []) ?(policy_ids = []) () :
    predefined_values =
  {
    aia_ocsp_servers;
    additional_extensions;
    ca_options;
    key_usage;
    policy_ids;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_privateca_certificate_template ?description ?id ?labels
    ?maximum_lifetime ?project ?(identity_constraints = [])
    ?(passthrough_extensions = []) ?(predefined_values = [])
    ?timeouts ~location ~name () :
    google_privateca_certificate_template =
  {
    description;
    id;
    labels;
    location;
    maximum_lifetime;
    name;
    project;
    identity_constraints;
    passthrough_extensions;
    predefined_values;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maximum_lifetime : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?maximum_lifetime ?project
    ?(identity_constraints = []) ?(passthrough_extensions = [])
    ?(predefined_values = []) ?timeouts ~location ~name __id =
  let __type = "google_privateca_certificate_template" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       maximum_lifetime =
         Prop.computed __type __id "maximum_lifetime";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
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
      yojson_of_google_privateca_certificate_template
        (google_privateca_certificate_template ?description ?id
           ?labels ?maximum_lifetime ?project ~identity_constraints
           ~passthrough_extensions ~predefined_values ?timeouts
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?maximum_lifetime
    ?project ?(identity_constraints = [])
    ?(passthrough_extensions = []) ?(predefined_values = [])
    ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?maximum_lifetime ?project
      ~identity_constraints ~passthrough_extensions
      ~predefined_values ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
