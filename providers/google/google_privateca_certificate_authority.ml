(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
      [@default []] [@yojson_drop_default ( = )]
  subject_alt_name : config__subject_config__subject_alt_name list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_subject_alt_name then bnds
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
         if [] = v_subject then bnds
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

type config__x509_config__additional_extensions__object_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_object_id_path then bnds
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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_object_id then bnds
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
  is_ca : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_is_ca in
         ("is_ca", arg) :: bnds
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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_object_id_path then bnds
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
      [@default []] [@yojson_drop_default ( = )]
  extended_key_usage :
    config__x509_config__key_usage__extended_key_usage list;
      [@default []] [@yojson_drop_default ( = )]
  unknown_extended_key_usages :
    config__x509_config__key_usage__unknown_extended_key_usages list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_unknown_extended_key_usages then bnds
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
         if [] = v_extended_key_usage then bnds
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
         if [] = v_base_key_usage then bnds
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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_object_id_path then bnds
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
      [@default []] [@yojson_drop_default ( = )]
  ca_options : config__x509_config__ca_options list;
      [@default []] [@yojson_drop_default ( = )]
  key_usage : config__x509_config__key_usage list;
      [@default []] [@yojson_drop_default ( = )]
  name_constraints : config__x509_config__name_constraints list;
      [@default []] [@yojson_drop_default ( = )]
  policy_ids : config__x509_config__policy_ids list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_policy_ids then bnds
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
         if [] = v_name_constraints then bnds
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
         if [] = v_key_usage then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__x509_config__key_usage)
               v_key_usage
           in
           let bnd = "key_usage", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ca_options then bnds
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
         if [] = v_additional_extensions then bnds
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
  subject_config : config__subject_config list;
      [@default []] [@yojson_drop_default ( = )]
  x509_config : config__x509_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       subject_config = v_subject_config;
       x509_config = v_x509_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_x509_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__x509_config)
               v_x509_config
           in
           let bnd = "x509_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_subject_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__subject_config)
               v_subject_config
           in
           let bnd = "subject_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type key_spec = {
  algorithm : string prop option; [@option]
  cloud_kms_key_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_spec) -> ()

let yojson_of_key_spec =
  (function
   | {
       algorithm = v_algorithm;
       cloud_kms_key_version = v_cloud_kms_key_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cloud_kms_key_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_kms_key_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "algorithm", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : key_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_spec

[@@@deriving.end]

type subordinate_config__pem_issuer_chain = {
  pem_certificates : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subordinate_config__pem_issuer_chain) -> ()

let yojson_of_subordinate_config__pem_issuer_chain =
  (function
   | { pem_certificates = v_pem_certificates } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pem_certificates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "pem_certificates", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subordinate_config__pem_issuer_chain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subordinate_config__pem_issuer_chain

[@@@deriving.end]

type subordinate_config = {
  certificate_authority : string prop option; [@option]
  pem_issuer_chain : subordinate_config__pem_issuer_chain list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subordinate_config) -> ()

let yojson_of_subordinate_config =
  (function
   | {
       certificate_authority = v_certificate_authority;
       pem_issuer_chain = v_pem_issuer_chain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_pem_issuer_chain then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_subordinate_config__pem_issuer_chain)
               v_pem_issuer_chain
           in
           let bnd = "pem_issuer_chain", arg in
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
    : subordinate_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subordinate_config

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

type access_urls = {
  ca_certificate_access_url : string prop;
  crl_access_urls : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_urls) -> ()

let yojson_of_access_urls =
  (function
   | {
       ca_certificate_access_url = v_ca_certificate_access_url;
       crl_access_urls = v_crl_access_urls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_crl_access_urls then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_crl_access_urls
           in
           let bnd = "crl_access_urls", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ca_certificate_access_url
         in
         ("ca_certificate_access_url", arg) :: bnds
       in
       `Assoc bnds
    : access_urls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_urls

[@@@deriving.end]

type google_privateca_certificate_authority = {
  certificate_authority_id : string prop;
  deletion_protection : bool prop option; [@option]
  desired_state : string prop option; [@option]
  gcs_bucket : string prop option; [@option]
  id : string prop option; [@option]
  ignore_active_certificates_on_deletion : bool prop option;
      [@option]
  labels : (string * string prop) list option; [@option]
  lifetime : string prop option; [@option]
  location : string prop;
  pem_ca_certificate : string prop option; [@option]
  pool : string prop;
  project : string prop option; [@option]
  skip_grace_period : bool prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  config : config list; [@default []] [@yojson_drop_default ( = )]
  key_spec : key_spec list;
      [@default []] [@yojson_drop_default ( = )]
  subordinate_config : subordinate_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_privateca_certificate_authority) -> ()

let yojson_of_google_privateca_certificate_authority =
  (function
   | {
       certificate_authority_id = v_certificate_authority_id;
       deletion_protection = v_deletion_protection;
       desired_state = v_desired_state;
       gcs_bucket = v_gcs_bucket;
       id = v_id;
       ignore_active_certificates_on_deletion =
         v_ignore_active_certificates_on_deletion;
       labels = v_labels;
       lifetime = v_lifetime;
       location = v_location;
       pem_ca_certificate = v_pem_ca_certificate;
       pool = v_pool;
       project = v_project;
       skip_grace_period = v_skip_grace_period;
       type_ = v_type_;
       config = v_config;
       key_spec = v_key_spec;
       subordinate_config = v_subordinate_config;
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
         if [] = v_subordinate_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_subordinate_config)
               v_subordinate_config
           in
           let bnd = "subordinate_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_key_spec then bnds
         else
           let arg =
             (yojson_of_list yojson_of_key_spec) v_key_spec
           in
           let bnd = "key_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config then bnds
         else
           let arg = (yojson_of_list yojson_of_config) v_config in
           let bnd = "config", arg in
           bnd :: bnds
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
         match v_skip_grace_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_grace_period", arg in
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
         match v_pem_ca_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pem_ca_certificate", arg in
             bnd :: bnds
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
         match v_ignore_active_certificates_on_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "ignore_active_certificates_on_deletion", arg
             in
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
         match v_gcs_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gcs_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desired_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_authority_id
         in
         ("certificate_authority_id", arg) :: bnds
       in
       `Assoc bnds
    : google_privateca_certificate_authority ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_privateca_certificate_authority

[@@@deriving.end]

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

let config__x509_config__additional_extensions__object_id
    ~object_id_path () :
    config__x509_config__additional_extensions__object_id =
  { object_id_path }

let config__x509_config__additional_extensions ~critical ~value
    ~object_id () : config__x509_config__additional_extensions =
  { critical; value; object_id }

let config__x509_config__ca_options ?max_issuer_path_length ?non_ca
    ?zero_max_issuer_path_length ~is_ca () :
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
    ?(additional_extensions = []) ?(name_constraints = [])
    ?(policy_ids = []) ~ca_options ~key_usage () :
    config__x509_config =
  {
    aia_ocsp_servers;
    additional_extensions;
    ca_options;
    key_usage;
    name_constraints;
    policy_ids;
  }

let config ~subject_config ~x509_config () : config =
  { subject_config; x509_config }

let key_spec ?algorithm ?cloud_kms_key_version () : key_spec =
  { algorithm; cloud_kms_key_version }

let subordinate_config__pem_issuer_chain ?pem_certificates () :
    subordinate_config__pem_issuer_chain =
  { pem_certificates }

let subordinate_config ?certificate_authority
    ?(pem_issuer_chain = []) () : subordinate_config =
  { certificate_authority; pem_issuer_chain }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_privateca_certificate_authority ?deletion_protection
    ?desired_state ?gcs_bucket ?id
    ?ignore_active_certificates_on_deletion ?labels ?lifetime
    ?pem_ca_certificate ?project ?skip_grace_period ?type_
    ?(subordinate_config = []) ?timeouts ~certificate_authority_id
    ~location ~pool ~config ~key_spec () :
    google_privateca_certificate_authority =
  {
    certificate_authority_id;
    deletion_protection;
    desired_state;
    gcs_bucket;
    id;
    ignore_active_certificates_on_deletion;
    labels;
    lifetime;
    location;
    pem_ca_certificate;
    pool;
    project;
    skip_grace_period;
    type_;
    config;
    key_spec;
    subordinate_config;
    timeouts;
  }

type t = {
  tf_name : string;
  access_urls : access_urls list prop;
  certificate_authority_id : string prop;
  create_time : string prop;
  deletion_protection : bool prop;
  desired_state : string prop;
  effective_labels : (string * string) list prop;
  gcs_bucket : string prop;
  id : string prop;
  ignore_active_certificates_on_deletion : bool prop;
  labels : (string * string) list prop;
  lifetime : string prop;
  location : string prop;
  name : string prop;
  pem_ca_certificate : string prop;
  pem_ca_certificates : string list prop;
  pool : string prop;
  project : string prop;
  skip_grace_period : bool prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?deletion_protection ?desired_state ?gcs_bucket ?id
    ?ignore_active_certificates_on_deletion ?labels ?lifetime
    ?pem_ca_certificate ?project ?skip_grace_period ?type_
    ?(subordinate_config = []) ?timeouts ~certificate_authority_id
    ~location ~pool ~config ~key_spec __id =
  let __type = "google_privateca_certificate_authority" in
  let __attrs =
    ({
       tf_name = __id;
       access_urls = Prop.computed __type __id "access_urls";
       certificate_authority_id =
         Prop.computed __type __id "certificate_authority_id";
       create_time = Prop.computed __type __id "create_time";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       desired_state = Prop.computed __type __id "desired_state";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       gcs_bucket = Prop.computed __type __id "gcs_bucket";
       id = Prop.computed __type __id "id";
       ignore_active_certificates_on_deletion =
         Prop.computed __type __id
           "ignore_active_certificates_on_deletion";
       labels = Prop.computed __type __id "labels";
       lifetime = Prop.computed __type __id "lifetime";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pem_ca_certificate =
         Prop.computed __type __id "pem_ca_certificate";
       pem_ca_certificates =
         Prop.computed __type __id "pem_ca_certificates";
       pool = Prop.computed __type __id "pool";
       project = Prop.computed __type __id "project";
       skip_grace_period =
         Prop.computed __type __id "skip_grace_period";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_privateca_certificate_authority
        (google_privateca_certificate_authority ?deletion_protection
           ?desired_state ?gcs_bucket ?id
           ?ignore_active_certificates_on_deletion ?labels ?lifetime
           ?pem_ca_certificate ?project ?skip_grace_period ?type_
           ~subordinate_config ?timeouts ~certificate_authority_id
           ~location ~pool ~config ~key_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_protection ?desired_state
    ?gcs_bucket ?id ?ignore_active_certificates_on_deletion ?labels
    ?lifetime ?pem_ca_certificate ?project ?skip_grace_period ?type_
    ?(subordinate_config = []) ?timeouts ~certificate_authority_id
    ~location ~pool ~config ~key_spec __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_protection ?desired_state ?gcs_bucket ?id
      ?ignore_active_certificates_on_deletion ?labels ?lifetime
      ?pem_ca_certificate ?project ?skip_grace_period ?type_
      ~subordinate_config ?timeouts ~certificate_authority_id
      ~location ~pool ~config ~key_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
