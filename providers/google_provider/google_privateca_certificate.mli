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
  object_id_path : float prop list;  (** object_id_path *)
}

type google_privateca_certificate__certificate_description__x509_description__name_constraints = {
  critical : bool prop;  (** critical *)
  excluded_dns_names : string prop list;  (** excluded_dns_names *)
  excluded_email_addresses : string prop list;
      (** excluded_email_addresses *)
  excluded_ip_ranges : string prop list;  (** excluded_ip_ranges *)
  excluded_uris : string prop list;  (** excluded_uris *)
  permitted_dns_names : string prop list;  (** permitted_dns_names *)
  permitted_email_addresses : string prop list;
      (** permitted_email_addresses *)
  permitted_ip_ranges : string prop list;  (** permitted_ip_ranges *)
  permitted_uris : string prop list;  (** permitted_uris *)
}

type google_privateca_certificate__certificate_description__x509_description__key_usage__unknown_extended_key_usages = {
  object_id_path : float prop list;  (** object_id_path *)
}

type google_privateca_certificate__certificate_description__x509_description__key_usage__extended_key_usage = {
  client_auth : bool prop;  (** client_auth *)
  code_signing : bool prop;  (** code_signing *)
  email_protection : bool prop;  (** email_protection *)
  ocsp_signing : bool prop;  (** ocsp_signing *)
  server_auth : bool prop;  (** server_auth *)
  time_stamping : bool prop;  (** time_stamping *)
}

type google_privateca_certificate__certificate_description__x509_description__key_usage__base_key_usage = {
  cert_sign : bool prop;  (** cert_sign *)
  content_commitment : bool prop;  (** content_commitment *)
  crl_sign : bool prop;  (** crl_sign *)
  data_encipherment : bool prop;  (** data_encipherment *)
  decipher_only : bool prop;  (** decipher_only *)
  digital_signature : bool prop;  (** digital_signature *)
  encipher_only : bool prop;  (** encipher_only *)
  key_agreement : bool prop;  (** key_agreement *)
  key_encipherment : bool prop;  (** key_encipherment *)
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
  is_ca : bool prop;  (** is_ca *)
  max_issuer_path_length : float prop;  (** max_issuer_path_length *)
}

type google_privateca_certificate__certificate_description__x509_description__additional_extensions__object_id = {
  object_id_path : float prop list;  (** object_id_path *)
}

type google_privateca_certificate__certificate_description__x509_description__additional_extensions = {
  critical : bool prop;  (** critical *)
  object_id :
    google_privateca_certificate__certificate_description__x509_description__additional_extensions__object_id
    list;
      (** object_id *)
  value : string prop;  (** value *)
}

type google_privateca_certificate__certificate_description__x509_description = {
  additional_extensions :
    google_privateca_certificate__certificate_description__x509_description__additional_extensions
    list;
      (** additional_extensions *)
  aia_ocsp_servers : string prop list;  (** aia_ocsp_servers *)
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
  key_id : string prop;  (** key_id *)
}

type google_privateca_certificate__certificate_description__subject_description__subject_alt_name__custom_sans__obect_id = {
  object_id_path : float prop list;  (** object_id_path *)
}

type google_privateca_certificate__certificate_description__subject_description__subject_alt_name__custom_sans = {
  critical : bool prop;  (** critical *)
  obect_id :
    google_privateca_certificate__certificate_description__subject_description__subject_alt_name__custom_sans__obect_id
    list;
      (** obect_id *)
  value : string prop;  (** value *)
}

type google_privateca_certificate__certificate_description__subject_description__subject_alt_name = {
  custom_sans :
    google_privateca_certificate__certificate_description__subject_description__subject_alt_name__custom_sans
    list;
      (** custom_sans *)
  dns_names : string prop list;  (** dns_names *)
  email_addresses : string prop list;  (** email_addresses *)
  ip_addresses : string prop list;  (** ip_addresses *)
  uris : string prop list;  (** uris *)
}

type google_privateca_certificate__certificate_description__subject_description__subject = {
  common_name : string prop;  (** common_name *)
  country_code : string prop;  (** country_code *)
  locality : string prop;  (** locality *)
  organization : string prop;  (** organization *)
  organizational_unit : string prop;  (** organizational_unit *)
  postal_code : string prop;  (** postal_code *)
  province : string prop;  (** province *)
  street_address : string prop;  (** street_address *)
}

type google_privateca_certificate__certificate_description__subject_description = {
  hex_serial_number : string prop;  (** hex_serial_number *)
  lifetime : string prop;  (** lifetime *)
  not_after_time : string prop;  (** not_after_time *)
  not_before_time : string prop;  (** not_before_time *)
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
  format : string prop;  (** format *)
  key : string prop;  (** key *)
}

type google_privateca_certificate__certificate_description__cert_fingerprint = {
  sha256_hash : string prop;  (** sha256_hash *)
}

type google_privateca_certificate__certificate_description__authority_key_id = {
  key_id : string prop;  (** key_id *)
}

type google_privateca_certificate__certificate_description = {
  aia_issuing_certificate_urls : string prop list;
      (** aia_issuing_certificate_urls *)
  authority_key_id :
    google_privateca_certificate__certificate_description__authority_key_id
    list;
      (** authority_key_id *)
  cert_fingerprint :
    google_privateca_certificate__certificate_description__cert_fingerprint
    list;
      (** cert_fingerprint *)
  crl_distribution_points : string prop list;
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
  revocation_state : string prop;  (** revocation_state *)
  revocation_time : string prop;  (** revocation_time *)
}

type google_privateca_certificate

val google_privateca_certificate :
  ?certificate_authority:string prop ->
  ?certificate_template:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?lifetime:string prop ->
  ?pem_csr:string prop ->
  ?project:string prop ->
  ?timeouts:google_privateca_certificate__timeouts ->
  location:string prop ->
  name:string prop ->
  pool:string prop ->
  config:google_privateca_certificate__config list ->
  string ->
  unit
