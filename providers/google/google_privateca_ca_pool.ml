(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type issuance_policy__allowed_issuance_modes = {
  allow_config_based_issuance : bool prop;
  allow_csr_based_issuance : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy__allowed_issuance_modes) -> ()

let yojson_of_issuance_policy__allowed_issuance_modes =
  (function
   | {
       allow_config_based_issuance = v_allow_config_based_issuance;
       allow_csr_based_issuance = v_allow_csr_based_issuance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_csr_based_issuance
         in
         ("allow_csr_based_issuance", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_allow_config_based_issuance
         in
         ("allow_config_based_issuance", arg) :: bnds
       in
       `Assoc bnds
    : issuance_policy__allowed_issuance_modes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__allowed_issuance_modes

[@@@deriving.end]

type issuance_policy__allowed_key_types__elliptic_curve = {
  signature_algorithm : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : issuance_policy__allowed_key_types__elliptic_curve) -> ()

let yojson_of_issuance_policy__allowed_key_types__elliptic_curve =
  (function
   | { signature_algorithm = v_signature_algorithm } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_signature_algorithm
         in
         ("signature_algorithm", arg) :: bnds
       in
       `Assoc bnds
    : issuance_policy__allowed_key_types__elliptic_curve ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__allowed_key_types__elliptic_curve

[@@@deriving.end]

type issuance_policy__allowed_key_types__rsa = {
  max_modulus_size : string prop option; [@option]
  min_modulus_size : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy__allowed_key_types__rsa) -> ()

let yojson_of_issuance_policy__allowed_key_types__rsa =
  (function
   | {
       max_modulus_size = v_max_modulus_size;
       min_modulus_size = v_min_modulus_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_modulus_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_modulus_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_modulus_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_modulus_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : issuance_policy__allowed_key_types__rsa ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__allowed_key_types__rsa

[@@@deriving.end]

type issuance_policy__allowed_key_types = {
  elliptic_curve :
    issuance_policy__allowed_key_types__elliptic_curve list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rsa : issuance_policy__allowed_key_types__rsa list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy__allowed_key_types) -> ()

let yojson_of_issuance_policy__allowed_key_types =
  (function
   | { elliptic_curve = v_elliptic_curve; rsa = v_rsa } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rsa then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__allowed_key_types__rsa)
               v_rsa
           in
           let bnd = "rsa", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_elliptic_curve then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__allowed_key_types__elliptic_curve)
               v_elliptic_curve
           in
           let bnd = "elliptic_curve", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : issuance_policy__allowed_key_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__allowed_key_types

[@@@deriving.end]

type issuance_policy__baseline_values__additional_extensions__object_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       issuance_policy__baseline_values__additional_extensions__object_id) ->
  ()

let yojson_of_issuance_policy__baseline_values__additional_extensions__object_id
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
    : issuance_policy__baseline_values__additional_extensions__object_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_issuance_policy__baseline_values__additional_extensions__object_id

[@@@deriving.end]

type issuance_policy__baseline_values__additional_extensions = {
  critical : bool prop;
  value : string prop;
  object_id :
    issuance_policy__baseline_values__additional_extensions__object_id
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : issuance_policy__baseline_values__additional_extensions) ->
  ()

let yojson_of_issuance_policy__baseline_values__additional_extensions
    =
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
                yojson_of_issuance_policy__baseline_values__additional_extensions__object_id)
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
         let arg = yojson_of_prop yojson_of_bool v_critical in
         ("critical", arg) :: bnds
       in
       `Assoc bnds
    : issuance_policy__baseline_values__additional_extensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_issuance_policy__baseline_values__additional_extensions

[@@@deriving.end]

type issuance_policy__baseline_values__ca_options = {
  is_ca : bool prop option; [@option]
  max_issuer_path_length : float prop option; [@option]
  non_ca : bool prop option; [@option]
  zero_max_issuer_path_length : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy__baseline_values__ca_options) -> ()

let yojson_of_issuance_policy__baseline_values__ca_options =
  (function
   | {
       is_ca = v_is_ca;
       max_issuer_path_length = v_max_issuer_path_length;
       non_ca = v_non_ca;
       zero_max_issuer_path_length = v_zero_max_issuer_path_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zero_max_issuer_path_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zero_max_issuer_path_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_non_ca with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "non_ca", arg in
             bnd :: bnds
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
    : issuance_policy__baseline_values__ca_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__baseline_values__ca_options

[@@@deriving.end]

type issuance_policy__baseline_values__key_usage__base_key_usage = {
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

let _ =
 fun (_ :
       issuance_policy__baseline_values__key_usage__base_key_usage) ->
  ()

let yojson_of_issuance_policy__baseline_values__key_usage__base_key_usage
    =
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
    : issuance_policy__baseline_values__key_usage__base_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_issuance_policy__baseline_values__key_usage__base_key_usage

[@@@deriving.end]

type issuance_policy__baseline_values__key_usage__extended_key_usage = {
  client_auth : bool prop option; [@option]
  code_signing : bool prop option; [@option]
  email_protection : bool prop option; [@option]
  ocsp_signing : bool prop option; [@option]
  server_auth : bool prop option; [@option]
  time_stamping : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       issuance_policy__baseline_values__key_usage__extended_key_usage) ->
  ()

let yojson_of_issuance_policy__baseline_values__key_usage__extended_key_usage
    =
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
    : issuance_policy__baseline_values__key_usage__extended_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_issuance_policy__baseline_values__key_usage__extended_key_usage

[@@@deriving.end]

type issuance_policy__baseline_values__key_usage__unknown_extended_key_usages = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       issuance_policy__baseline_values__key_usage__unknown_extended_key_usages) ->
  ()

let yojson_of_issuance_policy__baseline_values__key_usage__unknown_extended_key_usages
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
    : issuance_policy__baseline_values__key_usage__unknown_extended_key_usages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_issuance_policy__baseline_values__key_usage__unknown_extended_key_usages

[@@@deriving.end]

type issuance_policy__baseline_values__key_usage = {
  base_key_usage :
    issuance_policy__baseline_values__key_usage__base_key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extended_key_usage :
    issuance_policy__baseline_values__key_usage__extended_key_usage
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unknown_extended_key_usages :
    issuance_policy__baseline_values__key_usage__unknown_extended_key_usages
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy__baseline_values__key_usage) -> ()

let yojson_of_issuance_policy__baseline_values__key_usage =
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
                yojson_of_issuance_policy__baseline_values__key_usage__unknown_extended_key_usages)
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
                yojson_of_issuance_policy__baseline_values__key_usage__extended_key_usage)
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
                yojson_of_issuance_policy__baseline_values__key_usage__base_key_usage)
               v_base_key_usage
           in
           let bnd = "base_key_usage", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : issuance_policy__baseline_values__key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__baseline_values__key_usage

[@@@deriving.end]

type issuance_policy__baseline_values__name_constraints = {
  critical : bool prop;
  excluded_dns_names : string prop list option; [@option]
  excluded_email_addresses : string prop list option; [@option]
  excluded_ip_ranges : string prop list option; [@option]
  excluded_uris : string prop list option; [@option]
  permitted_dns_names : string prop list option; [@option]
  permitted_email_addresses : string prop list option; [@option]
  permitted_ip_ranges : string prop list option; [@option]
  permitted_uris : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : issuance_policy__baseline_values__name_constraints) -> ()

let yojson_of_issuance_policy__baseline_values__name_constraints =
  (function
   | {
       critical = v_critical;
       excluded_dns_names = v_excluded_dns_names;
       excluded_email_addresses = v_excluded_email_addresses;
       excluded_ip_ranges = v_excluded_ip_ranges;
       excluded_uris = v_excluded_uris;
       permitted_dns_names = v_permitted_dns_names;
       permitted_email_addresses = v_permitted_email_addresses;
       permitted_ip_ranges = v_permitted_ip_ranges;
       permitted_uris = v_permitted_uris;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_permitted_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "permitted_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permitted_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "permitted_ip_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permitted_email_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "permitted_email_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permitted_dns_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "permitted_dns_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_ip_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_email_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_email_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_dns_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_dns_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_critical in
         ("critical", arg) :: bnds
       in
       `Assoc bnds
    : issuance_policy__baseline_values__name_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__baseline_values__name_constraints

[@@@deriving.end]

type issuance_policy__baseline_values__policy_ids = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy__baseline_values__policy_ids) -> ()

let yojson_of_issuance_policy__baseline_values__policy_ids =
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
    : issuance_policy__baseline_values__policy_ids ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__baseline_values__policy_ids

[@@@deriving.end]

type issuance_policy__baseline_values = {
  aia_ocsp_servers : string prop list option; [@option]
  additional_extensions :
    issuance_policy__baseline_values__additional_extensions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ca_options : issuance_policy__baseline_values__ca_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_usage : issuance_policy__baseline_values__key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name_constraints :
    issuance_policy__baseline_values__name_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policy_ids : issuance_policy__baseline_values__policy_ids list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy__baseline_values) -> ()

let yojson_of_issuance_policy__baseline_values =
  (function
   | {
       aia_ocsp_servers = v_aia_ocsp_servers;
       additional_extensions = v_additional_extensions;
       ca_options = v_ca_options;
       key_usage = v_key_usage;
       name_constraints = v_name_constraints;
       policy_ids = v_policy_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_ids then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__baseline_values__policy_ids)
               v_policy_ids
           in
           let bnd = "policy_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_name_constraints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__baseline_values__name_constraints)
               v_name_constraints
           in
           let bnd = "name_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key_usage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__baseline_values__key_usage)
               v_key_usage
           in
           let bnd = "key_usage", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ca_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__baseline_values__ca_options)
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
                yojson_of_issuance_policy__baseline_values__additional_extensions)
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
    : issuance_policy__baseline_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__baseline_values

[@@@deriving.end]

type issuance_policy__identity_constraints__cel_expression = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : issuance_policy__identity_constraints__cel_expression) ->
  ()

let yojson_of_issuance_policy__identity_constraints__cel_expression =
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
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : issuance_policy__identity_constraints__cel_expression ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_issuance_policy__identity_constraints__cel_expression

[@@@deriving.end]

type issuance_policy__identity_constraints = {
  allow_subject_alt_names_passthrough : bool prop;
  allow_subject_passthrough : bool prop;
  cel_expression :
    issuance_policy__identity_constraints__cel_expression list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy__identity_constraints) -> ()

let yojson_of_issuance_policy__identity_constraints =
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
                yojson_of_issuance_policy__identity_constraints__cel_expression)
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
    : issuance_policy__identity_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy__identity_constraints

[@@@deriving.end]

type issuance_policy = {
  maximum_lifetime : string prop option; [@option]
  allowed_issuance_modes :
    issuance_policy__allowed_issuance_modes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_key_types : issuance_policy__allowed_key_types list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  baseline_values : issuance_policy__baseline_values list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity_constraints : issuance_policy__identity_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : issuance_policy) -> ()

let yojson_of_issuance_policy =
  (function
   | {
       maximum_lifetime = v_maximum_lifetime;
       allowed_issuance_modes = v_allowed_issuance_modes;
       allowed_key_types = v_allowed_key_types;
       baseline_values = v_baseline_values;
       identity_constraints = v_identity_constraints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_constraints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__identity_constraints)
               v_identity_constraints
           in
           let bnd = "identity_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_baseline_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__baseline_values)
               v_baseline_values
           in
           let bnd = "baseline_values", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_key_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__allowed_key_types)
               v_allowed_key_types
           in
           let bnd = "allowed_key_types", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_issuance_modes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_issuance_policy__allowed_issuance_modes)
               v_allowed_issuance_modes
           in
           let bnd = "allowed_issuance_modes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_maximum_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_lifetime", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : issuance_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_issuance_policy

[@@@deriving.end]

type publishing_options = {
  encoding_format : string prop option; [@option]
  publish_ca_cert : bool prop;
  publish_crl : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : publishing_options) -> ()

let yojson_of_publishing_options =
  (function
   | {
       encoding_format = v_encoding_format;
       publish_ca_cert = v_publish_ca_cert;
       publish_crl = v_publish_crl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_publish_crl in
         ("publish_crl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_publish_ca_cert in
         ("publish_ca_cert", arg) :: bnds
       in
       let bnds =
         match v_encoding_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : publishing_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_publishing_options

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

type google_privateca_ca_pool = {
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  tier : string prop;
  issuance_policy : issuance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  publishing_options : publishing_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_privateca_ca_pool) -> ()

let yojson_of_google_privateca_ca_pool =
  (function
   | {
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       tier = v_tier;
       issuance_policy = v_issuance_policy;
       publishing_options = v_publishing_options;
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
         if Stdlib.( = ) [] v_publishing_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_publishing_options)
               v_publishing_options
           in
           let bnd = "publishing_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_issuance_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_issuance_policy)
               v_issuance_policy
           in
           let bnd = "issuance_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
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
       `Assoc bnds
    : google_privateca_ca_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_privateca_ca_pool

[@@@deriving.end]

let issuance_policy__allowed_issuance_modes
    ~allow_config_based_issuance ~allow_csr_based_issuance () :
    issuance_policy__allowed_issuance_modes =
  { allow_config_based_issuance; allow_csr_based_issuance }

let issuance_policy__allowed_key_types__elliptic_curve
    ~signature_algorithm () :
    issuance_policy__allowed_key_types__elliptic_curve =
  { signature_algorithm }

let issuance_policy__allowed_key_types__rsa ?max_modulus_size
    ?min_modulus_size () : issuance_policy__allowed_key_types__rsa =
  { max_modulus_size; min_modulus_size }

let issuance_policy__allowed_key_types ?(elliptic_curve = [])
    ?(rsa = []) () : issuance_policy__allowed_key_types =
  { elliptic_curve; rsa }

let issuance_policy__baseline_values__additional_extensions__object_id
    ~object_id_path () :
    issuance_policy__baseline_values__additional_extensions__object_id
    =
  { object_id_path }

let issuance_policy__baseline_values__additional_extensions ~critical
    ~value ~object_id () :
    issuance_policy__baseline_values__additional_extensions =
  { critical; value; object_id }

let issuance_policy__baseline_values__ca_options ?is_ca
    ?max_issuer_path_length ?non_ca ?zero_max_issuer_path_length () :
    issuance_policy__baseline_values__ca_options =
  {
    is_ca;
    max_issuer_path_length;
    non_ca;
    zero_max_issuer_path_length;
  }

let issuance_policy__baseline_values__key_usage__base_key_usage
    ?cert_sign ?content_commitment ?crl_sign ?data_encipherment
    ?decipher_only ?digital_signature ?encipher_only ?key_agreement
    ?key_encipherment () :
    issuance_policy__baseline_values__key_usage__base_key_usage =
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

let issuance_policy__baseline_values__key_usage__extended_key_usage
    ?client_auth ?code_signing ?email_protection ?ocsp_signing
    ?server_auth ?time_stamping () :
    issuance_policy__baseline_values__key_usage__extended_key_usage =
  {
    client_auth;
    code_signing;
    email_protection;
    ocsp_signing;
    server_auth;
    time_stamping;
  }

let issuance_policy__baseline_values__key_usage__unknown_extended_key_usages
    ~object_id_path () :
    issuance_policy__baseline_values__key_usage__unknown_extended_key_usages
    =
  { object_id_path }

let issuance_policy__baseline_values__key_usage
    ?(unknown_extended_key_usages = []) ~base_key_usage
    ~extended_key_usage () :
    issuance_policy__baseline_values__key_usage =
  { base_key_usage; extended_key_usage; unknown_extended_key_usages }

let issuance_policy__baseline_values__name_constraints
    ?excluded_dns_names ?excluded_email_addresses ?excluded_ip_ranges
    ?excluded_uris ?permitted_dns_names ?permitted_email_addresses
    ?permitted_ip_ranges ?permitted_uris ~critical () :
    issuance_policy__baseline_values__name_constraints =
  {
    critical;
    excluded_dns_names;
    excluded_email_addresses;
    excluded_ip_ranges;
    excluded_uris;
    permitted_dns_names;
    permitted_email_addresses;
    permitted_ip_ranges;
    permitted_uris;
  }

let issuance_policy__baseline_values__policy_ids ~object_id_path () :
    issuance_policy__baseline_values__policy_ids =
  { object_id_path }

let issuance_policy__baseline_values ?aia_ocsp_servers
    ?(additional_extensions = []) ?(name_constraints = [])
    ?(policy_ids = []) ~ca_options ~key_usage () :
    issuance_policy__baseline_values =
  {
    aia_ocsp_servers;
    additional_extensions;
    ca_options;
    key_usage;
    name_constraints;
    policy_ids;
  }

let issuance_policy__identity_constraints__cel_expression
    ?description ?location ?title ~expression () :
    issuance_policy__identity_constraints__cel_expression =
  { description; expression; location; title }

let issuance_policy__identity_constraints ?(cel_expression = [])
    ~allow_subject_alt_names_passthrough ~allow_subject_passthrough
    () : issuance_policy__identity_constraints =
  {
    allow_subject_alt_names_passthrough;
    allow_subject_passthrough;
    cel_expression;
  }

let issuance_policy ?maximum_lifetime ?(allowed_issuance_modes = [])
    ?(allowed_key_types = []) ?(baseline_values = [])
    ?(identity_constraints = []) () : issuance_policy =
  {
    maximum_lifetime;
    allowed_issuance_modes;
    allowed_key_types;
    baseline_values;
    identity_constraints;
  }

let publishing_options ?encoding_format ~publish_ca_cert ~publish_crl
    () : publishing_options =
  { encoding_format; publish_ca_cert; publish_crl }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_privateca_ca_pool ?id ?labels ?project
    ?(issuance_policy = []) ?(publishing_options = []) ?timeouts
    ~location ~name ~tier () : google_privateca_ca_pool =
  {
    id;
    labels;
    location;
    name;
    project;
    tier;
    issuance_policy;
    publishing_options;
    timeouts;
  }

type t = {
  tf_name : string;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
}

let make ?id ?labels ?project ?(issuance_policy = [])
    ?(publishing_options = []) ?timeouts ~location ~name ~tier __id =
  let __type = "google_privateca_ca_pool" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       tier = Prop.computed __type __id "tier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_privateca_ca_pool
        (google_privateca_ca_pool ?id ?labels ?project
           ~issuance_policy ~publishing_options ?timeouts ~location
           ~name ~tier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?(issuance_policy = [])
    ?(publishing_options = []) ?timeouts ~location ~name ~tier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ~issuance_policy ~publishing_options
      ?timeouts ~location ~name ~tier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
