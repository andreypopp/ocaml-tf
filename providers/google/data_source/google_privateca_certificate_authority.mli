(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_urls = {
  ca_certificate_access_url : string prop;
      (** ca_certificate_access_url *)
  crl_access_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** crl_access_urls *)
}

type config__x509_config__policy_ids = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** object_id_path *)
}

type config__x509_config__name_constraints = {
  critical : bool prop;  (** critical *)
  excluded_dns_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** excluded_dns_names *)
  excluded_email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** excluded_email_addresses *)
  excluded_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** excluded_ip_ranges *)
  excluded_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** excluded_uris *)
  permitted_dns_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** permitted_dns_names *)
  permitted_email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** permitted_email_addresses *)
  permitted_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** permitted_ip_ranges *)
  permitted_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** permitted_uris *)
}

type config__x509_config__key_usage__unknown_extended_key_usages = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** object_id_path *)
}

type config__x509_config__key_usage__extended_key_usage = {
  client_auth : bool prop;  (** client_auth *)
  code_signing : bool prop;  (** code_signing *)
  email_protection : bool prop;  (** email_protection *)
  ocsp_signing : bool prop;  (** ocsp_signing *)
  server_auth : bool prop;  (** server_auth *)
  time_stamping : bool prop;  (** time_stamping *)
}

type config__x509_config__key_usage__base_key_usage = {
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

type config__x509_config__key_usage = {
  base_key_usage :
    config__x509_config__key_usage__base_key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** base_key_usage *)
  extended_key_usage :
    config__x509_config__key_usage__extended_key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** extended_key_usage *)
  unknown_extended_key_usages :
    config__x509_config__key_usage__unknown_extended_key_usages list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** unknown_extended_key_usages *)
}

type config__x509_config__ca_options = {
  is_ca : bool prop;  (** is_ca *)
  max_issuer_path_length : float prop;  (** max_issuer_path_length *)
  non_ca : bool prop;  (** non_ca *)
  zero_max_issuer_path_length : bool prop;
      (** zero_max_issuer_path_length *)
}

type config__x509_config__additional_extensions__object_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** object_id_path *)
}

type config__x509_config__additional_extensions = {
  critical : bool prop;  (** critical *)
  object_id :
    config__x509_config__additional_extensions__object_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** object_id *)
  value : string prop;  (** value *)
}

type config__x509_config = {
  additional_extensions :
    config__x509_config__additional_extensions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_extensions *)
  aia_ocsp_servers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** aia_ocsp_servers *)
  ca_options : config__x509_config__ca_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ca_options *)
  key_usage : config__x509_config__key_usage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** key_usage *)
  name_constraints : config__x509_config__name_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** name_constraints *)
  policy_ids : config__x509_config__policy_ids list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** policy_ids *)
}

type config__subject_key_id = { key_id : string prop  (** key_id *) }

type config__subject_config__subject_alt_name = {
  dns_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dns_names *)
  email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** email_addresses *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
  uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** uris *)
}

type config__subject_config__subject = {
  common_name : string prop;  (** common_name *)
  country_code : string prop;  (** country_code *)
  locality : string prop;  (** locality *)
  organization : string prop;  (** organization *)
  organizational_unit : string prop;  (** organizational_unit *)
  postal_code : string prop;  (** postal_code *)
  province : string prop;  (** province *)
  street_address : string prop;  (** street_address *)
}

type config__subject_config = {
  subject : config__subject_config__subject list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subject *)
  subject_alt_name : config__subject_config__subject_alt_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subject_alt_name *)
}

type config = {
  subject_config : config__subject_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subject_config *)
  subject_key_id : config__subject_key_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subject_key_id *)
  x509_config : config__x509_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x509_config *)
}

type key_spec = {
  algorithm : string prop;  (** algorithm *)
  cloud_kms_key_version : string prop;  (** cloud_kms_key_version *)
}

type subordinate_config__pem_issuer_chain = {
  pem_certificates : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pem_certificates *)
}

type subordinate_config = {
  certificate_authority : string prop;  (** certificate_authority *)
  pem_issuer_chain : subordinate_config__pem_issuer_chain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pem_issuer_chain *)
}

type google_privateca_certificate_authority

val google_privateca_certificate_authority :
  ?certificate_authority_id:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?pool:string prop ->
  ?project:string prop ->
  unit ->
  google_privateca_certificate_authority

val yojson_of_google_privateca_certificate_authority :
  google_privateca_certificate_authority -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?certificate_authority_id:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?pool:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?certificate_authority_id:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?pool:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
