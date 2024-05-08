(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificate_description__x509_description__policy_ids = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** object_id_path *)
}

type certificate_description__x509_description__name_constraints = {
  critical : bool prop;  (** critical *)
  excluded_dns_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** excluded_dns_names *)
  excluded_email_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** excluded_email_addresses *)
  excluded_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** excluded_ip_ranges *)
  excluded_uris : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** excluded_uris *)
  permitted_dns_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** permitted_dns_names *)
  permitted_email_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** permitted_email_addresses *)
  permitted_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** permitted_ip_ranges *)
  permitted_uris : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** permitted_uris *)
}

type certificate_description__x509_description__key_usage__unknown_extended_key_usages = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** object_id_path *)
}

type certificate_description__x509_description__key_usage__extended_key_usage = {
  client_auth : bool prop;  (** client_auth *)
  code_signing : bool prop;  (** code_signing *)
  email_protection : bool prop;  (** email_protection *)
  ocsp_signing : bool prop;  (** ocsp_signing *)
  server_auth : bool prop;  (** server_auth *)
  time_stamping : bool prop;  (** time_stamping *)
}

type certificate_description__x509_description__key_usage__base_key_usage = {
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

type certificate_description__x509_description__key_usage = {
  base_key_usage :
    certificate_description__x509_description__key_usage__base_key_usage
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** base_key_usage *)
  extended_key_usage :
    certificate_description__x509_description__key_usage__extended_key_usage
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** extended_key_usage *)
  unknown_extended_key_usages :
    certificate_description__x509_description__key_usage__unknown_extended_key_usages
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** unknown_extended_key_usages *)
}

type certificate_description__x509_description__ca_options = {
  is_ca : bool prop;  (** is_ca *)
  max_issuer_path_length : float prop;  (** max_issuer_path_length *)
}

type certificate_description__x509_description__additional_extensions__object_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** object_id_path *)
}

type certificate_description__x509_description__additional_extensions = {
  critical : bool prop;  (** critical *)
  object_id :
    certificate_description__x509_description__additional_extensions__object_id
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** object_id *)
  value : string prop;  (** value *)
}

type certificate_description__x509_description = {
  additional_extensions :
    certificate_description__x509_description__additional_extensions
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** additional_extensions *)
  aia_ocsp_servers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** aia_ocsp_servers *)
  ca_options :
    certificate_description__x509_description__ca_options list;
      [@default []] [@yojson_drop_default ( = )]
      (** ca_options *)
  key_usage :
    certificate_description__x509_description__key_usage list;
      [@default []] [@yojson_drop_default ( = )]
      (** key_usage *)
  name_constraints :
    certificate_description__x509_description__name_constraints list;
      [@default []] [@yojson_drop_default ( = )]
      (** name_constraints *)
  policy_ids :
    certificate_description__x509_description__policy_ids list;
      [@default []] [@yojson_drop_default ( = )]
      (** policy_ids *)
}

type certificate_description__subject_key_id = {
  key_id : string prop;  (** key_id *)
}

type certificate_description__subject_description__subject_alt_name__custom_sans__obect_id = {
  object_id_path : float prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** object_id_path *)
}

type certificate_description__subject_description__subject_alt_name__custom_sans = {
  critical : bool prop;  (** critical *)
  obect_id :
    certificate_description__subject_description__subject_alt_name__custom_sans__obect_id
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** obect_id *)
  value : string prop;  (** value *)
}

type certificate_description__subject_description__subject_alt_name = {
  custom_sans :
    certificate_description__subject_description__subject_alt_name__custom_sans
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** custom_sans *)
  dns_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** dns_names *)
  email_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** email_addresses *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_addresses *)
  uris : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** uris *)
}

type certificate_description__subject_description__subject = {
  common_name : string prop;  (** common_name *)
  country_code : string prop;  (** country_code *)
  locality : string prop;  (** locality *)
  organization : string prop;  (** organization *)
  organizational_unit : string prop;  (** organizational_unit *)
  postal_code : string prop;  (** postal_code *)
  province : string prop;  (** province *)
  street_address : string prop;  (** street_address *)
}

type certificate_description__subject_description = {
  hex_serial_number : string prop;  (** hex_serial_number *)
  lifetime : string prop;  (** lifetime *)
  not_after_time : string prop;  (** not_after_time *)
  not_before_time : string prop;  (** not_before_time *)
  subject :
    certificate_description__subject_description__subject list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject *)
  subject_alt_name :
    certificate_description__subject_description__subject_alt_name
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject_alt_name *)
}

type certificate_description__public_key = {
  format : string prop;  (** format *)
  key : string prop;  (** key *)
}

type certificate_description__cert_fingerprint = {
  sha256_hash : string prop;  (** sha256_hash *)
}

type certificate_description__authority_key_id = {
  key_id : string prop;  (** key_id *)
}

type certificate_description = {
  aia_issuing_certificate_urls : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** aia_issuing_certificate_urls *)
  authority_key_id : certificate_description__authority_key_id list;
      [@default []] [@yojson_drop_default ( = )]
      (** authority_key_id *)
  cert_fingerprint : certificate_description__cert_fingerprint list;
      [@default []] [@yojson_drop_default ( = )]
      (** cert_fingerprint *)
  crl_distribution_points : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** crl_distribution_points *)
  public_key : certificate_description__public_key list;
      [@default []] [@yojson_drop_default ( = )]
      (** public_key *)
  subject_description :
    certificate_description__subject_description list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject_description *)
  subject_key_id : certificate_description__subject_key_id list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject_key_id *)
  x509_description : certificate_description__x509_description list;
      [@default []] [@yojson_drop_default ( = )]
      (** x509_description *)
}

type revocation_details = {
  revocation_state : string prop;  (** revocation_state *)
  revocation_time : string prop;  (** revocation_time *)
}

type config__public_key

val config__public_key :
  ?key:string prop ->
  format:string prop ->
  unit ->
  config__public_key

type config__subject_config__subject

val config__subject_config__subject :
  ?country_code:string prop ->
  ?locality:string prop ->
  ?organizational_unit:string prop ->
  ?postal_code:string prop ->
  ?province:string prop ->
  ?street_address:string prop ->
  common_name:string prop ->
  organization:string prop ->
  unit ->
  config__subject_config__subject

type config__subject_config__subject_alt_name

val config__subject_config__subject_alt_name :
  ?dns_names:string prop list ->
  ?email_addresses:string prop list ->
  ?ip_addresses:string prop list ->
  ?uris:string prop list ->
  unit ->
  config__subject_config__subject_alt_name

type config__subject_config

val config__subject_config :
  ?subject_alt_name:config__subject_config__subject_alt_name list ->
  subject:config__subject_config__subject list ->
  unit ->
  config__subject_config

type config__x509_config__additional_extensions__object_id

val config__x509_config__additional_extensions__object_id :
  object_id_path:float prop list ->
  unit ->
  config__x509_config__additional_extensions__object_id

type config__x509_config__additional_extensions

val config__x509_config__additional_extensions :
  critical:bool prop ->
  value:string prop ->
  object_id:
    config__x509_config__additional_extensions__object_id list ->
  unit ->
  config__x509_config__additional_extensions

type config__x509_config__ca_options

val config__x509_config__ca_options :
  ?is_ca:bool prop ->
  ?max_issuer_path_length:float prop ->
  ?non_ca:bool prop ->
  ?zero_max_issuer_path_length:bool prop ->
  unit ->
  config__x509_config__ca_options

type config__x509_config__key_usage__base_key_usage

val config__x509_config__key_usage__base_key_usage :
  ?cert_sign:bool prop ->
  ?content_commitment:bool prop ->
  ?crl_sign:bool prop ->
  ?data_encipherment:bool prop ->
  ?decipher_only:bool prop ->
  ?digital_signature:bool prop ->
  ?encipher_only:bool prop ->
  ?key_agreement:bool prop ->
  ?key_encipherment:bool prop ->
  unit ->
  config__x509_config__key_usage__base_key_usage

type config__x509_config__key_usage__extended_key_usage

val config__x509_config__key_usage__extended_key_usage :
  ?client_auth:bool prop ->
  ?code_signing:bool prop ->
  ?email_protection:bool prop ->
  ?ocsp_signing:bool prop ->
  ?server_auth:bool prop ->
  ?time_stamping:bool prop ->
  unit ->
  config__x509_config__key_usage__extended_key_usage

type config__x509_config__key_usage__unknown_extended_key_usages

val config__x509_config__key_usage__unknown_extended_key_usages :
  object_id_path:float prop list ->
  unit ->
  config__x509_config__key_usage__unknown_extended_key_usages

type config__x509_config__key_usage

val config__x509_config__key_usage :
  ?unknown_extended_key_usages:
    config__x509_config__key_usage__unknown_extended_key_usages list ->
  base_key_usage:config__x509_config__key_usage__base_key_usage list ->
  extended_key_usage:
    config__x509_config__key_usage__extended_key_usage list ->
  unit ->
  config__x509_config__key_usage

type config__x509_config__name_constraints

val config__x509_config__name_constraints :
  ?excluded_dns_names:string prop list ->
  ?excluded_email_addresses:string prop list ->
  ?excluded_ip_ranges:string prop list ->
  ?excluded_uris:string prop list ->
  ?permitted_dns_names:string prop list ->
  ?permitted_email_addresses:string prop list ->
  ?permitted_ip_ranges:string prop list ->
  ?permitted_uris:string prop list ->
  critical:bool prop ->
  unit ->
  config__x509_config__name_constraints

type config__x509_config__policy_ids

val config__x509_config__policy_ids :
  object_id_path:float prop list ->
  unit ->
  config__x509_config__policy_ids

type config__x509_config

val config__x509_config :
  ?aia_ocsp_servers:string prop list ->
  ?additional_extensions:
    config__x509_config__additional_extensions list ->
  ?ca_options:config__x509_config__ca_options list ->
  ?name_constraints:config__x509_config__name_constraints list ->
  ?policy_ids:config__x509_config__policy_ids list ->
  key_usage:config__x509_config__key_usage list ->
  unit ->
  config__x509_config

type config

val config :
  public_key:config__public_key list ->
  subject_config:config__subject_config list ->
  x509_config:config__x509_config list ->
  unit ->
  config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_privateca_certificate

val google_privateca_certificate :
  ?certificate_authority:string prop ->
  ?certificate_template:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?lifetime:string prop ->
  ?pem_csr:string prop ->
  ?project:string prop ->
  ?config:config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  pool:string prop ->
  unit ->
  google_privateca_certificate

val yojson_of_google_privateca_certificate :
  google_privateca_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_authority : string prop;
  certificate_description : certificate_description list prop;
  certificate_template : string prop;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  issuer_certificate_authority : string prop;
  labels : (string * string) list prop;
  lifetime : string prop;
  location : string prop;
  name : string prop;
  pem_certificate : string prop;
  pem_certificate_chain : string list prop;
  pem_csr : string prop;
  pool : string prop;
  project : string prop;
  revocation_details : revocation_details list prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_authority:string prop ->
  ?certificate_template:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?lifetime:string prop ->
  ?pem_csr:string prop ->
  ?project:string prop ->
  ?config:config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  pool:string prop ->
  string ->
  t

val make :
  ?certificate_authority:string prop ->
  ?certificate_template:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?lifetime:string prop ->
  ?pem_csr:string prop ->
  ?project:string prop ->
  ?config:config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  pool:string prop ->
  string ->
  t Tf_core.resource
