(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_urls = {
  ca_certificate_access_url : string prop;
  crl_access_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_crl_access_urls then bnds
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

type config__x509_config__name_constraints = {
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
    : config__x509_config__name_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__name_constraints

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

type config__x509_config__key_usage__extended_key_usage = {
  client_auth : bool prop;
  code_signing : bool prop;
  email_protection : bool prop;
  ocsp_signing : bool prop;
  server_auth : bool prop;
  time_stamping : bool prop;
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
    : config__x509_config__key_usage__extended_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__key_usage__extended_key_usage

[@@@deriving.end]

type config__x509_config__key_usage__base_key_usage = {
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
    : config__x509_config__key_usage__base_key_usage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__key_usage__base_key_usage

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

type config__x509_config__ca_options = {
  is_ca : bool prop;
  max_issuer_path_length : float prop;
  non_ca : bool prop;
  zero_max_issuer_path_length : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool
             v_zero_max_issuer_path_length
         in
         ("zero_max_issuer_path_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_non_ca in
         ("non_ca", arg) :: bnds
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
    : config__x509_config__ca_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__ca_options

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
  object_id :
    config__x509_config__additional_extensions__object_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__x509_config__additional_extensions) -> ()

let yojson_of_config__x509_config__additional_extensions =
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
                yojson_of_config__x509_config__additional_extensions__object_id)
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
    : config__x509_config__additional_extensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config__additional_extensions

[@@@deriving.end]

type config__x509_config = {
  additional_extensions :
    config__x509_config__additional_extensions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  aia_ocsp_servers : string prop list;
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
                yojson_of_config__x509_config__additional_extensions)
               v_additional_extensions
           in
           let bnd = "additional_extensions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config__x509_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__x509_config

[@@@deriving.end]

type config__subject_config__subject_alt_name = {
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
       `Assoc bnds
    : config__subject_config__subject_alt_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__subject_config__subject_alt_name

[@@@deriving.end]

type config__subject_config__subject = {
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
    : config__subject_config__subject ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__subject_config__subject

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

type config = {
  subject_config : config__subject_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x509_config : config__x509_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_subject_config then bnds
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
  algorithm : string prop;
  cloud_kms_key_version : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_cloud_kms_key_version
         in
         ("cloud_kms_key_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : key_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_spec

[@@@deriving.end]

type subordinate_config__pem_issuer_chain = {
  pem_certificates : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_pem_certificates then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_pem_certificates
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
  certificate_authority : string prop;
  pem_issuer_chain : subordinate_config__pem_issuer_chain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_pem_issuer_chain then bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_certificate_authority
         in
         ("certificate_authority", arg) :: bnds
       in
       `Assoc bnds
    : subordinate_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subordinate_config

[@@@deriving.end]

type google_privateca_certificate_authority = {
  certificate_authority_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  pool : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_privateca_certificate_authority) -> ()

let yojson_of_google_privateca_certificate_authority =
  (function
   | {
       certificate_authority_id = v_certificate_authority_id;
       id = v_id;
       location = v_location;
       pool = v_pool;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pool", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_authority_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_authority_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_privateca_certificate_authority ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_privateca_certificate_authority

[@@@deriving.end]

let google_privateca_certificate_authority ?certificate_authority_id
    ?id ?location ?pool ?project () :
    google_privateca_certificate_authority =
  { certificate_authority_id; id; location; pool; project }

type t = {
  tf_name : string;
  access_urls : access_urls list prop;
  certificate_authority_id : string prop;
  config : config list prop;
  create_time : string prop;
  deletion_protection : bool prop;
  desired_state : string prop;
  effective_labels : (string * string) list prop;
  gcs_bucket : string prop;
  id : string prop;
  ignore_active_certificates_on_deletion : bool prop;
  key_spec : key_spec list prop;
  labels : (string * string) list prop;
  lifetime : string prop;
  location : string prop;
  name : string prop;
  pem_ca_certificate : string prop;
  pem_ca_certificates : string list prop;
  pem_csr : string prop;
  pool : string prop;
  project : string prop;
  skip_grace_period : bool prop;
  state : string prop;
  subordinate_config : subordinate_config list prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?certificate_authority_id ?id ?location ?pool ?project __id
    =
  let __type = "google_privateca_certificate_authority" in
  let __attrs =
    ({
       tf_name = __id;
       access_urls = Prop.computed __type __id "access_urls";
       certificate_authority_id =
         Prop.computed __type __id "certificate_authority_id";
       config = Prop.computed __type __id "config";
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
       key_spec = Prop.computed __type __id "key_spec";
       labels = Prop.computed __type __id "labels";
       lifetime = Prop.computed __type __id "lifetime";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pem_ca_certificate =
         Prop.computed __type __id "pem_ca_certificate";
       pem_ca_certificates =
         Prop.computed __type __id "pem_ca_certificates";
       pem_csr = Prop.computed __type __id "pem_csr";
       pool = Prop.computed __type __id "pool";
       project = Prop.computed __type __id "project";
       skip_grace_period =
         Prop.computed __type __id "skip_grace_period";
       state = Prop.computed __type __id "state";
       subordinate_config =
         Prop.computed __type __id "subordinate_config";
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
        (google_privateca_certificate_authority
           ?certificate_authority_id ?id ?location ?pool ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_authority_id ?id ?location ?pool
    ?project __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_authority_id ?id ?location ?pool ?project __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
