(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_certificate__config__public_key
type google_privateca_certificate__config__subject_config__subject

type google_privateca_certificate__config__subject_config__subject_alt_name

type google_privateca_certificate__config__subject_config

type google_privateca_certificate__config__x509_config__additional_extensions__object_id

type google_privateca_certificate__config__x509_config__additional_extensions

type google_privateca_certificate__config__x509_config__ca_options

type google_privateca_certificate__config__x509_config__key_usage__base_key_usage

type google_privateca_certificate__config__x509_config__key_usage__extended_key_usage

type google_privateca_certificate__config__x509_config__key_usage__unknown_extended_key_usages

type google_privateca_certificate__config__x509_config__key_usage

type google_privateca_certificate__config__x509_config__name_constraints

type google_privateca_certificate__config__x509_config__policy_ids
type google_privateca_certificate__config__x509_config
type google_privateca_certificate__config
type google_privateca_certificate__timeouts

type google_privateca_certificate__certificate_description__x509_description__policy_ids = {
  object_id_path : float list;  (** object_id_path *)
}

type google_privateca_certificate__certificate_description__x509_description__name_constraints = {
  critical : bool;  (** critical *)
  excluded_dns_names : string list;  (** excluded_dns_names *)
  excluded_email_addresses : string list;
      (** excluded_email_addresses *)
  excluded_ip_ranges : string list;  (** excluded_ip_ranges *)
  excluded_uris : string list;  (** excluded_uris *)
  permitted_dns_names : string list;  (** permitted_dns_names *)
  permitted_email_addresses : string list;
      (** permitted_email_addresses *)
  permitted_ip_ranges : string list;  (** permitted_ip_ranges *)
  permitted_uris : string list;  (** permitted_uris *)
}

type google_privateca_certificate__certificate_description__x509_description__key_usage__unknown_extended_key_usages = {
  object_id_path : float list;  (** object_id_path *)
}

type google_privateca_certificate__certificate_description__x509_description__key_usage__extended_key_usage = {
  client_auth : bool;  (** client_auth *)
  code_signing : bool;  (** code_signing *)
  email_protection : bool;  (** email_protection *)
  ocsp_signing : bool;  (** ocsp_signing *)
  server_auth : bool;  (** server_auth *)
  time_stamping : bool;  (** time_stamping *)
}

type google_privateca_certificate__certificate_description__x509_description__key_usage__base_key_usage = {
  cert_sign : bool;  (** cert_sign *)
  content_commitment : bool;  (** content_commitment *)
  crl_sign : bool;  (** crl_sign *)
  data_encipherment : bool;  (** data_encipherment *)
  decipher_only : bool;  (** decipher_only *)
  digital_signature : bool;  (** digital_signature *)
  encipher_only : bool;  (** encipher_only *)
  key_agreement : bool;  (** key_agreement *)
  key_encipherment : bool;  (** key_encipherment *)
}

type google_privateca_certificate__certificate_description__x509_description__key_usage = {
  base_key_usage :
    google_privateca_certificate__certificate_description__x509_description__key_usage__base_key_usage
    list;
      (** base_key_usage *)
  extended_key_usage :
    google_privateca_certificate__certificate_description__x509_description__key_usage__extended_key_usage
    list;
      (** extended_key_usage *)
  unknown_extended_key_usages :
    google_privateca_certificate__certificate_description__x509_description__key_usage__unknown_extended_key_usages
    list;
      (** unknown_extended_key_usages *)
}

type google_privateca_certificate__certificate_description__x509_description__ca_options = {
  is_ca : bool;  (** is_ca *)
  max_issuer_path_length : float;  (** max_issuer_path_length *)
}

type google_privateca_certificate__certificate_description__x509_description__additional_extensions__object_id = {
  object_id_path : float list;  (** object_id_path *)
}

type google_privateca_certificate__certificate_description__x509_description__additional_extensions = {
  critical : bool;  (** critical *)
  object_id :
    google_privateca_certificate__certificate_description__x509_description__additional_extensions__object_id
    list;
      (** object_id *)
  value : string;  (** value *)
}

type google_privateca_certificate__certificate_description__x509_description = {
  additional_extensions :
    google_privateca_certificate__certificate_description__x509_description__additional_extensions
    list;
      (** additional_extensions *)
  aia_ocsp_servers : string list;  (** aia_ocsp_servers *)
  ca_options :
    google_privateca_certificate__certificate_description__x509_description__ca_options
    list;
      (** ca_options *)
  key_usage :
    google_privateca_certificate__certificate_description__x509_description__key_usage
    list;
      (** key_usage *)
  name_constraints :
    google_privateca_certificate__certificate_description__x509_description__name_constraints
    list;
      (** name_constraints *)
  policy_ids :
    google_privateca_certificate__certificate_description__x509_description__policy_ids
    list;
      (** policy_ids *)
}

type google_privateca_certificate__certificate_description__subject_key_id = {
  key_id : string;  (** key_id *)
}

type google_privateca_certificate__certificate_description__subject_description__subject_alt_name__custom_sans__obect_id = {
  object_id_path : float list;  (** object_id_path *)
}

type google_privateca_certificate__certificate_description__subject_description__subject_alt_name__custom_sans = {
  critical : bool;  (** critical *)
  obect_id :
    google_privateca_certificate__certificate_description__subject_description__subject_alt_name__custom_sans__obect_id
    list;
      (** obect_id *)
  value : string;  (** value *)
}

type google_privateca_certificate__certificate_description__subject_description__subject_alt_name = {
  custom_sans :
    google_privateca_certificate__certificate_description__subject_description__subject_alt_name__custom_sans
    list;
      (** custom_sans *)
  dns_names : string list;  (** dns_names *)
  email_addresses : string list;  (** email_addresses *)
  ip_addresses : string list;  (** ip_addresses *)
  uris : string list;  (** uris *)
}

type google_privateca_certificate__certificate_description__subject_description__subject = {
  common_name : string;  (** common_name *)
  country_code : string;  (** country_code *)
  locality : string;  (** locality *)
  organization : string;  (** organization *)
  organizational_unit : string;  (** organizational_unit *)
  postal_code : string;  (** postal_code *)
  province : string;  (** province *)
  street_address : string;  (** street_address *)
}

type google_privateca_certificate__certificate_description__subject_description = {
  hex_serial_number : string;  (** hex_serial_number *)
  lifetime : string;  (** lifetime *)
  not_after_time : string;  (** not_after_time *)
  not_before_time : string;  (** not_before_time *)
  subject :
    google_privateca_certificate__certificate_description__subject_description__subject
    list;
      (** subject *)
  subject_alt_name :
    google_privateca_certificate__certificate_description__subject_description__subject_alt_name
    list;
      (** subject_alt_name *)
}

type google_privateca_certificate__certificate_description__public_key = {
  format : string;  (** format *)
  key : string;  (** key *)
}

type google_privateca_certificate__certificate_description__cert_fingerprint = {
  sha256_hash : string;  (** sha256_hash *)
}

type google_privateca_certificate__certificate_description__authority_key_id = {
  key_id : string;  (** key_id *)
}

type google_privateca_certificate__certificate_description = {
  aia_issuing_certificate_urls : string list;
      (** aia_issuing_certificate_urls *)
  authority_key_id :
    google_privateca_certificate__certificate_description__authority_key_id
    list;
      (** authority_key_id *)
  cert_fingerprint :
    google_privateca_certificate__certificate_description__cert_fingerprint
    list;
      (** cert_fingerprint *)
  crl_distribution_points : string list;
      (** crl_distribution_points *)
  public_key :
    google_privateca_certificate__certificate_description__public_key
    list;
      (** public_key *)
  subject_description :
    google_privateca_certificate__certificate_description__subject_description
    list;
      (** subject_description *)
  subject_key_id :
    google_privateca_certificate__certificate_description__subject_key_id
    list;
      (** subject_key_id *)
  x509_description :
    google_privateca_certificate__certificate_description__x509_description
    list;
      (** x509_description *)
}

type google_privateca_certificate__revocation_details = {
  revocation_state : string;  (** revocation_state *)
  revocation_time : string;  (** revocation_time *)
}

type google_privateca_certificate

val google_privateca_certificate :
  ?certificate_authority:string ->
  ?certificate_template:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?lifetime:string ->
  ?pem_csr:string ->
  ?project:string ->
  ?timeouts:google_privateca_certificate__timeouts ->
  location:string ->
  name:string ->
  pool:string ->
  config:google_privateca_certificate__config list ->
  string ->
  unit
