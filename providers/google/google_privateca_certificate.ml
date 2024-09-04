(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__public_key = {
  format : string prop;
  key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__public_key) -> ()

let yojson_of_config__public_key =
  (function
   | { format = v_format; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       `Assoc bnds
    : config__public_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__public_key

[@@@deriving.end]

type config__subject_config__subject = {
  common_name : string prop;
  country_code : string prop option; [@option]
  locality : string prop option; [@option]
  organization : string prop;
  organizational_unit : string prop option; [@option]
  postal_code : string prop option; [@option]
  province : string prop option; [@option]
  street_address : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__subject_config__subject) -> ()

let yojson_of_config__subject_config__subject =
  (function
   | {
       common_name = v_common_name;
       country_code = v_country_code;
       locality = v_locality;
       organization = v_organization;
       organizational_unit = v_organizational_unit;
       postal_code = v_postal_code;
       province = v_province;
       street_address = v_street_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_street_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "street_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_province with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "province", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organizational_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organizational_unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
       in
       let bnds =
         match v_locality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_common_name in
         ("common_name", arg) :: bnds
       in
       `Assoc bnds
    : config__subject_config__subject ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__subject_config__subject

[@@@deriving.end]

type config__subject_config__subject_alt_name = {
  dns_names : string prop list option; [@option]
  email_addresses : string prop list option; [@option]
  ip_addresses : string prop list option; [@option]
  uris : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__subject_config__subject_alt_name) -> ()

let yojson_of_config__subject_config__subject_alt_name =
  (function
   | {
       dns_names = v_dns_names;
       email_addresses = v_email_addresses;
       ip_addresses = v_ip_addresses;
       uris = v_uris;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_addresses", arg in
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
         match v_dns_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__subject_config__subject_alt_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__subject_config__subject_alt_name

[@@@deriving.end]

type config__subject_config = {
  subject : config__subject_config__subject list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subject_alt_name : config__subject_config__subject_alt_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__subject_config) -> ()

let yojson_of_config__subject_config =
  (function
   | { subject = v_subject; subject_alt_name = v_subject_alt_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subject_alt_name then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__subject_config__subject_alt_name)
               v_subject_alt_name
           in
           let bnd = "subject_alt_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subject then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__subject_config__subject)
               v_subject
           in
           let bnd = "subject", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config__subject_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__subject_config

[@@@deriving.end]

type config__subject_key_id = {
  key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__subject_key_id) -> ()

let yojson_of_config__subject_key_id =
  (function
   | { key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__subject_key_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__subject_key_id

[@@@deriving.end]

type config__x509_config__additional_extensions__object_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config__x509_config__additional_extensions__object_id) ->
  ()

let yojson_of_config__x509_config__additional_extensions__object_id =
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
    : config__x509_config__additional_extensions__object_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_config__x509_config__additional_extensions__object_id

[@@@deriving.end]

type config__x509_config__additional_extensions = {
  critical : bool prop;
  value : string prop;
  object_id :
    config__x509_config__additional_extensions__object_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__x509_config__additional_extensions) -> ()

let yojson_of_config__x509_config__additional_extensions =
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
                yojson_of_config__x509_config__additional_extensions__object_id)
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
    : config__x509_config__additional_extensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__additional_extensions

[@@@deriving.end]

type config__x509_config__ca_options = {
  is_ca : bool prop option; [@option]
  max_issuer_path_length : float prop option; [@option]
  non_ca : bool prop option; [@option]
  zero_max_issuer_path_length : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__x509_config__ca_options) -> ()

let yojson_of_config__x509_config__ca_options =
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
    : config__x509_config__ca_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__ca_options

[@@@deriving.end]

type config__x509_config__key_usage__base_key_usage = {
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
 fun (_ : config__x509_config__key_usage__base_key_usage) -> ()

let yojson_of_config__x509_config__key_usage__base_key_usage =
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
    : config__x509_config__key_usage__base_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__key_usage__base_key_usage

[@@@deriving.end]

type config__x509_config__key_usage__extended_key_usage = {
  client_auth : bool prop option; [@option]
  code_signing : bool prop option; [@option]
  email_protection : bool prop option; [@option]
  ocsp_signing : bool prop option; [@option]
  server_auth : bool prop option; [@option]
  time_stamping : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config__x509_config__key_usage__extended_key_usage) -> ()

let yojson_of_config__x509_config__key_usage__extended_key_usage =
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
    : config__x509_config__key_usage__extended_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__key_usage__extended_key_usage

[@@@deriving.end]

type config__x509_config__key_usage__unknown_extended_key_usages = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       config__x509_config__key_usage__unknown_extended_key_usages) ->
  ()

let yojson_of_config__x509_config__key_usage__unknown_extended_key_usages
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
    : config__x509_config__key_usage__unknown_extended_key_usages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_config__x509_config__key_usage__unknown_extended_key_usages

[@@@deriving.end]

type config__x509_config__key_usage = {
  base_key_usage :
    config__x509_config__key_usage__base_key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extended_key_usage :
    config__x509_config__key_usage__extended_key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unknown_extended_key_usages :
    config__x509_config__key_usage__unknown_extended_key_usages list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__x509_config__key_usage) -> ()

let yojson_of_config__x509_config__key_usage =
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
                yojson_of_config__x509_config__key_usage__unknown_extended_key_usages)
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
                yojson_of_config__x509_config__key_usage__extended_key_usage)
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
                yojson_of_config__x509_config__key_usage__base_key_usage)
               v_base_key_usage
           in
           let bnd = "base_key_usage", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config__x509_config__key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__key_usage

[@@@deriving.end]

type config__x509_config__name_constraints = {
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

let _ = fun (_ : config__x509_config__name_constraints) -> ()

let yojson_of_config__x509_config__name_constraints =
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
    : config__x509_config__name_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__name_constraints

[@@@deriving.end]

type config__x509_config__policy_ids = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__x509_config__policy_ids) -> ()

let yojson_of_config__x509_config__policy_ids =
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
    : config__x509_config__policy_ids ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__policy_ids

[@@@deriving.end]

type config__x509_config = {
  aia_ocsp_servers : string prop list option; [@option]
  additional_extensions :
    config__x509_config__additional_extensions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ca_options : config__x509_config__ca_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_usage : config__x509_config__key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name_constraints : config__x509_config__name_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policy_ids : config__x509_config__policy_ids list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__x509_config) -> ()

let yojson_of_config__x509_config =
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
                yojson_of_config__x509_config__policy_ids)
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
                yojson_of_config__x509_config__name_constraints)
               v_name_constraints
           in
           let bnd = "name_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key_usage then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__x509_config__key_usage)
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
                yojson_of_config__x509_config__ca_options)
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
                yojson_of_config__x509_config__additional_extensions)
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
    : config__x509_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config

[@@@deriving.end]

type config = {
  public_key : config__public_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subject_config : config__subject_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subject_key_id : config__subject_key_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x509_config : config__x509_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       public_key = v_public_key;
       subject_config = v_subject_config;
       subject_key_id = v_subject_key_id;
       x509_config = v_x509_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_x509_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__x509_config)
               v_x509_config
           in
           let bnd = "x509_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subject_key_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__subject_key_id)
               v_subject_key_id
           in
           let bnd = "subject_key_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subject_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__subject_config)
               v_subject_config
           in
           let bnd = "subject_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_public_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__public_key)
               v_public_key
           in
           let bnd = "public_key", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

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

type certificate_description__x509_description__policy_ids = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : certificate_description__x509_description__policy_ids) ->
  ()

let yojson_of_certificate_description__x509_description__policy_ids =
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
    : certificate_description__x509_description__policy_ids ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__policy_ids

[@@@deriving.end]

type certificate_description__x509_description__name_constraints = {
  critical : bool prop;
  excluded_dns_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  excluded_email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  excluded_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  excluded_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  permitted_dns_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  permitted_email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  permitted_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  permitted_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__x509_description__name_constraints) ->
  ()

let yojson_of_certificate_description__x509_description__name_constraints
    =
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
         if Stdlib.( = ) [] v_permitted_uris then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permitted_uris
           in
           let bnd = "permitted_uris", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_permitted_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permitted_ip_ranges
           in
           let bnd = "permitted_ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_permitted_email_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permitted_email_addresses
           in
           let bnd = "permitted_email_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_permitted_dns_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permitted_dns_names
           in
           let bnd = "permitted_dns_names", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_excluded_uris then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_excluded_uris
           in
           let bnd = "excluded_uris", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_excluded_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_excluded_ip_ranges
           in
           let bnd = "excluded_ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_excluded_email_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_excluded_email_addresses
           in
           let bnd = "excluded_email_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_excluded_dns_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_excluded_dns_names
           in
           let bnd = "excluded_dns_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_critical in
         ("critical", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__x509_description__name_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__name_constraints

[@@@deriving.end]

type certificate_description__x509_description__key_usage__unknown_extended_key_usages = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__x509_description__key_usage__unknown_extended_key_usages) ->
  ()

let yojson_of_certificate_description__x509_description__key_usage__unknown_extended_key_usages
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
    : certificate_description__x509_description__key_usage__unknown_extended_key_usages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__key_usage__unknown_extended_key_usages

[@@@deriving.end]

type certificate_description__x509_description__key_usage__extended_key_usage = {
  client_auth : bool prop;
  code_signing : bool prop;
  email_protection : bool prop;
  ocsp_signing : bool prop;
  server_auth : bool prop;
  time_stamping : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__x509_description__key_usage__extended_key_usage) ->
  ()

let yojson_of_certificate_description__x509_description__key_usage__extended_key_usage
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
         let arg = yojson_of_prop yojson_of_bool v_time_stamping in
         ("time_stamping", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_server_auth in
         ("server_auth", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ocsp_signing in
         ("ocsp_signing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_email_protection
         in
         ("email_protection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_code_signing in
         ("code_signing", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_client_auth in
         ("client_auth", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__x509_description__key_usage__extended_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__key_usage__extended_key_usage

[@@@deriving.end]

type certificate_description__x509_description__key_usage__base_key_usage = {
  cert_sign : bool prop;
  content_commitment : bool prop;
  crl_sign : bool prop;
  data_encipherment : bool prop;
  decipher_only : bool prop;
  digital_signature : bool prop;
  encipher_only : bool prop;
  key_agreement : bool prop;
  key_encipherment : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__x509_description__key_usage__base_key_usage) ->
  ()

let yojson_of_certificate_description__x509_description__key_usage__base_key_usage
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
         let arg =
           yojson_of_prop yojson_of_bool v_key_encipherment
         in
         ("key_encipherment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_key_agreement in
         ("key_agreement", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_encipher_only in
         ("encipher_only", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_digital_signature
         in
         ("digital_signature", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_decipher_only in
         ("decipher_only", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_data_encipherment
         in
         ("data_encipherment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_crl_sign in
         ("crl_sign", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_content_commitment
         in
         ("content_commitment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_cert_sign in
         ("cert_sign", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__x509_description__key_usage__base_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__key_usage__base_key_usage

[@@@deriving.end]

type certificate_description__x509_description__key_usage = {
  base_key_usage :
    certificate_description__x509_description__key_usage__base_key_usage
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extended_key_usage :
    certificate_description__x509_description__key_usage__extended_key_usage
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unknown_extended_key_usages :
    certificate_description__x509_description__key_usage__unknown_extended_key_usages
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : certificate_description__x509_description__key_usage) -> ()

let yojson_of_certificate_description__x509_description__key_usage =
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
                yojson_of_certificate_description__x509_description__key_usage__unknown_extended_key_usages)
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
                yojson_of_certificate_description__x509_description__key_usage__extended_key_usage)
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
                yojson_of_certificate_description__x509_description__key_usage__base_key_usage)
               v_base_key_usage
           in
           let bnd = "base_key_usage", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : certificate_description__x509_description__key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__key_usage

[@@@deriving.end]

type certificate_description__x509_description__ca_options = {
  is_ca : bool prop;
  max_issuer_path_length : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : certificate_description__x509_description__ca_options) ->
  ()

let yojson_of_certificate_description__x509_description__ca_options =
  (function
   | {
       is_ca = v_is_ca;
       max_issuer_path_length = v_max_issuer_path_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_issuer_path_length
         in
         ("max_issuer_path_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_ca in
         ("is_ca", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__x509_description__ca_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__ca_options

[@@@deriving.end]

type certificate_description__x509_description__additional_extensions__object_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__x509_description__additional_extensions__object_id) ->
  ()

let yojson_of_certificate_description__x509_description__additional_extensions__object_id
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
    : certificate_description__x509_description__additional_extensions__object_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__additional_extensions__object_id

[@@@deriving.end]

type certificate_description__x509_description__additional_extensions = {
  critical : bool prop;
  object_id :
    certificate_description__x509_description__additional_extensions__object_id
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__x509_description__additional_extensions) ->
  ()

let yojson_of_certificate_description__x509_description__additional_extensions
    =
  (function
   | {
       critical = v_critical;
       object_id = v_object_id;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_object_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__x509_description__additional_extensions__object_id)
               v_object_id
           in
           let bnd = "object_id", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_critical in
         ("critical", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__x509_description__additional_extensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__x509_description__additional_extensions

[@@@deriving.end]

type certificate_description__x509_description = {
  additional_extensions :
    certificate_description__x509_description__additional_extensions
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  aia_ocsp_servers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ca_options :
    certificate_description__x509_description__ca_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_usage :
    certificate_description__x509_description__key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name_constraints :
    certificate_description__x509_description__name_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policy_ids :
    certificate_description__x509_description__policy_ids list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_description__x509_description) -> ()

let yojson_of_certificate_description__x509_description =
  (function
   | {
       additional_extensions = v_additional_extensions;
       aia_ocsp_servers = v_aia_ocsp_servers;
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
                yojson_of_certificate_description__x509_description__policy_ids)
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
                yojson_of_certificate_description__x509_description__name_constraints)
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
                yojson_of_certificate_description__x509_description__key_usage)
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
                yojson_of_certificate_description__x509_description__ca_options)
               v_ca_options
           in
           let bnd = "ca_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aia_ocsp_servers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_aia_ocsp_servers
           in
           let bnd = "aia_ocsp_servers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_extensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__x509_description__additional_extensions)
               v_additional_extensions
           in
           let bnd = "additional_extensions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : certificate_description__x509_description ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_description__x509_description

[@@@deriving.end]

type certificate_description__subject_key_id = {
  key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_description__subject_key_id) -> ()

let yojson_of_certificate_description__subject_key_id =
  (function
   | { key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__subject_key_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_description__subject_key_id

[@@@deriving.end]

type certificate_description__subject_description__subject_alt_name__custom_sans__obect_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__subject_description__subject_alt_name__custom_sans__obect_id) ->
  ()

let yojson_of_certificate_description__subject_description__subject_alt_name__custom_sans__obect_id
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
    : certificate_description__subject_description__subject_alt_name__custom_sans__obect_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__subject_description__subject_alt_name__custom_sans__obect_id

[@@@deriving.end]

type certificate_description__subject_description__subject_alt_name__custom_sans = {
  critical : bool prop;
  obect_id :
    certificate_description__subject_description__subject_alt_name__custom_sans__obect_id
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__subject_description__subject_alt_name__custom_sans) ->
  ()

let yojson_of_certificate_description__subject_description__subject_alt_name__custom_sans
    =
  (function
   | {
       critical = v_critical;
       obect_id = v_obect_id;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_obect_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__subject_description__subject_alt_name__custom_sans__obect_id)
               v_obect_id
           in
           let bnd = "obect_id", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_critical in
         ("critical", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__subject_description__subject_alt_name__custom_sans ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__subject_description__subject_alt_name__custom_sans

[@@@deriving.end]

type certificate_description__subject_description__subject_alt_name = {
  custom_sans :
    certificate_description__subject_description__subject_alt_name__custom_sans
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dns_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_description__subject_description__subject_alt_name) ->
  ()

let yojson_of_certificate_description__subject_description__subject_alt_name
    =
  (function
   | {
       custom_sans = v_custom_sans;
       dns_names = v_dns_names;
       email_addresses = v_email_addresses;
       ip_addresses = v_ip_addresses;
       uris = v_uris;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_uris then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_uris
           in
           let bnd = "uris", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_email_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_email_addresses
           in
           let bnd = "email_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dns_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_dns_names
           in
           let bnd = "dns_names", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_sans then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__subject_description__subject_alt_name__custom_sans)
               v_custom_sans
           in
           let bnd = "custom_sans", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : certificate_description__subject_description__subject_alt_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__subject_description__subject_alt_name

[@@@deriving.end]

type certificate_description__subject_description__subject = {
  common_name : string prop;
  country_code : string prop;
  locality : string prop;
  organization : string prop;
  organizational_unit : string prop;
  postal_code : string prop;
  province : string prop;
  street_address : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : certificate_description__subject_description__subject) ->
  ()

let yojson_of_certificate_description__subject_description__subject =
  (function
   | {
       common_name = v_common_name;
       country_code = v_country_code;
       locality = v_locality;
       organization = v_organization;
       organizational_unit = v_organizational_unit;
       postal_code = v_postal_code;
       province = v_province;
       street_address = v_street_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_street_address
         in
         ("street_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_province in
         ("province", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_postal_code in
         ("postal_code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_organizational_unit
         in
         ("organizational_unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_locality in
         ("locality", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country_code in
         ("country_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_common_name in
         ("common_name", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__subject_description__subject ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_description__subject_description__subject

[@@@deriving.end]

type certificate_description__subject_description = {
  hex_serial_number : string prop;
  lifetime : string prop;
  not_after_time : string prop;
  not_before_time : string prop;
  subject :
    certificate_description__subject_description__subject list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subject_alt_name :
    certificate_description__subject_description__subject_alt_name
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_description__subject_description) -> ()

let yojson_of_certificate_description__subject_description =
  (function
   | {
       hex_serial_number = v_hex_serial_number;
       lifetime = v_lifetime;
       not_after_time = v_not_after_time;
       not_before_time = v_not_before_time;
       subject = v_subject;
       subject_alt_name = v_subject_alt_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subject_alt_name then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__subject_description__subject_alt_name)
               v_subject_alt_name
           in
           let bnd = "subject_alt_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subject then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__subject_description__subject)
               v_subject
           in
           let bnd = "subject", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_not_before_time
         in
         ("not_before_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_not_after_time
         in
         ("not_after_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lifetime in
         ("lifetime", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hex_serial_number
         in
         ("hex_serial_number", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__subject_description ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_description__subject_description

[@@@deriving.end]

type certificate_description__public_key = {
  format : string prop;
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_description__public_key) -> ()

let yojson_of_certificate_description__public_key =
  (function
   | { format = v_format; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__public_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_description__public_key

[@@@deriving.end]

type certificate_description__cert_fingerprint = {
  sha256_hash : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_description__cert_fingerprint) -> ()

let yojson_of_certificate_description__cert_fingerprint =
  (function
   | { sha256_hash = v_sha256_hash } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sha256_hash in
         ("sha256_hash", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__cert_fingerprint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_description__cert_fingerprint

[@@@deriving.end]

type certificate_description__authority_key_id = {
  key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_description__authority_key_id) -> ()

let yojson_of_certificate_description__authority_key_id =
  (function
   | { key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       `Assoc bnds
    : certificate_description__authority_key_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_description__authority_key_id

[@@@deriving.end]

type certificate_description = {
  aia_issuing_certificate_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  authority_key_id : certificate_description__authority_key_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cert_fingerprint : certificate_description__cert_fingerprint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  crl_distribution_points : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_key : certificate_description__public_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subject_description :
    certificate_description__subject_description list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subject_key_id : certificate_description__subject_key_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x509_description : certificate_description__x509_description list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_description) -> ()

let yojson_of_certificate_description =
  (function
   | {
       aia_issuing_certificate_urls = v_aia_issuing_certificate_urls;
       authority_key_id = v_authority_key_id;
       cert_fingerprint = v_cert_fingerprint;
       crl_distribution_points = v_crl_distribution_points;
       public_key = v_public_key;
       subject_description = v_subject_description;
       subject_key_id = v_subject_key_id;
       x509_description = v_x509_description;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_x509_description then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__x509_description)
               v_x509_description
           in
           let bnd = "x509_description", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subject_key_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__subject_key_id)
               v_subject_key_id
           in
           let bnd = "subject_key_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subject_description then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__subject_description)
               v_subject_description
           in
           let bnd = "subject_description", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_public_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__public_key)
               v_public_key
           in
           let bnd = "public_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_crl_distribution_points then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_crl_distribution_points
           in
           let bnd = "crl_distribution_points", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cert_fingerprint then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__cert_fingerprint)
               v_cert_fingerprint
           in
           let bnd = "cert_fingerprint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authority_key_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_description__authority_key_id)
               v_authority_key_id
           in
           let bnd = "authority_key_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aia_issuing_certificate_urls then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_aia_issuing_certificate_urls
           in
           let bnd = "aia_issuing_certificate_urls", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : certificate_description -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_description

[@@@deriving.end]

type revocation_details = {
  revocation_state : string prop;
  revocation_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : revocation_details) -> ()

let yojson_of_revocation_details =
  (function
   | {
       revocation_state = v_revocation_state;
       revocation_time = v_revocation_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_revocation_time
         in
         ("revocation_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_revocation_state
         in
         ("revocation_state", arg) :: bnds
       in
       `Assoc bnds
    : revocation_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_revocation_details

[@@@deriving.end]

type google_privateca_certificate = {
  certificate_authority : string prop option; [@option]
  certificate_template : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  lifetime : string prop option; [@option]
  location : string prop;
  name : string prop;
  pem_csr : string prop option; [@option]
  pool : string prop;
  project : string prop option; [@option]
  config : config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_privateca_certificate) -> ()

let yojson_of_google_privateca_certificate =
  (function
   | {
       certificate_authority = v_certificate_authority;
       certificate_template = v_certificate_template;
       id = v_id;
       labels = v_labels;
       lifetime = v_lifetime;
       location = v_location;
       name = v_name;
       pem_csr = v_pem_csr;
       pool = v_pool;
       project = v_project;
       config = v_config;
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
         if Stdlib.( = ) [] v_config then bnds
         else
           let arg = (yojson_of_list yojson_of_config) v_config in
           let bnd = "config", arg in
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
         let arg = yojson_of_prop yojson_of_string v_pool in
         ("pool", arg) :: bnds
       in
       let bnds =
         match v_pem_csr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pem_csr", arg in
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
         match v_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lifetime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_certificate_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_authority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_authority", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_privateca_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_privateca_certificate

[@@@deriving.end]

let config__public_key ?key ~format () : config__public_key =
  { format; key }

let config__subject_config__subject ?country_code ?locality
    ?organizational_unit ?postal_code ?province ?street_address
    ~common_name ~organization () : config__subject_config__subject =
  {
    common_name;
    country_code;
    locality;
    organization;
    organizational_unit;
    postal_code;
    province;
    street_address;
  }

let config__subject_config__subject_alt_name ?dns_names
    ?email_addresses ?ip_addresses ?uris () :
    config__subject_config__subject_alt_name =
  { dns_names; email_addresses; ip_addresses; uris }

let config__subject_config ?(subject_alt_name = []) ~subject () :
    config__subject_config =
  { subject; subject_alt_name }

let config__subject_key_id ?key_id () : config__subject_key_id =
  { key_id }

let config__x509_config__additional_extensions__object_id
    ~object_id_path () :
    config__x509_config__additional_extensions__object_id =
  { object_id_path }

let config__x509_config__additional_extensions ~critical ~value
    ~object_id () : config__x509_config__additional_extensions =
  { critical; value; object_id }

let config__x509_config__ca_options ?is_ca ?max_issuer_path_length
    ?non_ca ?zero_max_issuer_path_length () :
    config__x509_config__ca_options =
  {
    is_ca;
    max_issuer_path_length;
    non_ca;
    zero_max_issuer_path_length;
  }

let config__x509_config__key_usage__base_key_usage ?cert_sign
    ?content_commitment ?crl_sign ?data_encipherment ?decipher_only
    ?digital_signature ?encipher_only ?key_agreement
    ?key_encipherment () :
    config__x509_config__key_usage__base_key_usage =
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

let config__x509_config__key_usage__extended_key_usage ?client_auth
    ?code_signing ?email_protection ?ocsp_signing ?server_auth
    ?time_stamping () :
    config__x509_config__key_usage__extended_key_usage =
  {
    client_auth;
    code_signing;
    email_protection;
    ocsp_signing;
    server_auth;
    time_stamping;
  }

let config__x509_config__key_usage__unknown_extended_key_usages
    ~object_id_path () :
    config__x509_config__key_usage__unknown_extended_key_usages =
  { object_id_path }

let config__x509_config__key_usage
    ?(unknown_extended_key_usages = []) ~base_key_usage
    ~extended_key_usage () : config__x509_config__key_usage =
  { base_key_usage; extended_key_usage; unknown_extended_key_usages }

let config__x509_config__name_constraints ?excluded_dns_names
    ?excluded_email_addresses ?excluded_ip_ranges ?excluded_uris
    ?permitted_dns_names ?permitted_email_addresses
    ?permitted_ip_ranges ?permitted_uris ~critical () :
    config__x509_config__name_constraints =
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

let config__x509_config__policy_ids ~object_id_path () :
    config__x509_config__policy_ids =
  { object_id_path }

let config__x509_config ?aia_ocsp_servers
    ?(additional_extensions = []) ?(ca_options = [])
    ?(name_constraints = []) ?(policy_ids = []) ~key_usage () :
    config__x509_config =
  {
    aia_ocsp_servers;
    additional_extensions;
    ca_options;
    key_usage;
    name_constraints;
    policy_ids;
  }

let config ?(subject_key_id = []) ~public_key ~subject_config
    ~x509_config () : config =
  { public_key; subject_config; subject_key_id; x509_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_privateca_certificate ?certificate_authority
    ?certificate_template ?id ?labels ?lifetime ?pem_csr ?project
    ?(config = []) ?timeouts ~location ~name ~pool () :
    google_privateca_certificate =
  {
    certificate_authority;
    certificate_template;
    id;
    labels;
    lifetime;
    location;
    name;
    pem_csr;
    pool;
    project;
    config;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate_authority : string prop;
  certificate_description : certificate_description list prop;
  certificate_template : string prop;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  issuer_certificate_authority : string prop;
  labels : string Tf_core.assoc prop;
  lifetime : string prop;
  location : string prop;
  name : string prop;
  pem_certificate : string prop;
  pem_certificate_chain : string list prop;
  pem_csr : string prop;
  pool : string prop;
  project : string prop;
  revocation_details : revocation_details list prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?certificate_authority ?certificate_template ?id ?labels
    ?lifetime ?pem_csr ?project ?(config = []) ?timeouts ~location
    ~name ~pool __id =
  let __type = "google_privateca_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_authority =
         Prop.computed __type __id "certificate_authority";
       certificate_description =
         Prop.computed __type __id "certificate_description";
       certificate_template =
         Prop.computed __type __id "certificate_template";
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       issuer_certificate_authority =
         Prop.computed __type __id "issuer_certificate_authority";
       labels = Prop.computed __type __id "labels";
       lifetime = Prop.computed __type __id "lifetime";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pem_certificate = Prop.computed __type __id "pem_certificate";
       pem_certificate_chain =
         Prop.computed __type __id "pem_certificate_chain";
       pem_csr = Prop.computed __type __id "pem_csr";
       pool = Prop.computed __type __id "pool";
       project = Prop.computed __type __id "project";
       revocation_details =
         Prop.computed __type __id "revocation_details";
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
      yojson_of_google_privateca_certificate
        (google_privateca_certificate ?certificate_authority
           ?certificate_template ?id ?labels ?lifetime ?pem_csr
           ?project ~config ?timeouts ~location ~name ~pool ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_authority ?certificate_template
    ?id ?labels ?lifetime ?pem_csr ?project ?(config = []) ?timeouts
    ~location ~name ~pool __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_authority ?certificate_template ?id ?labels
      ?lifetime ?pem_csr ?project ~config ?timeouts ~location ~name
      ~pool __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
