(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_urls = {
  ca_certificate_access_url : string prop;
      (** ca_certificate_access_url *)
  crl_access_urls : string prop list;  (** crl_access_urls *)
}

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
  subject:config__subject_config__subject list ->
  subject_alt_name:config__subject_config__subject_alt_name list ->
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
  ?max_issuer_path_length:float prop ->
  ?non_ca:bool prop ->
  ?zero_max_issuer_path_length:bool prop ->
  is_ca:bool prop ->
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
  base_key_usage:config__x509_config__key_usage__base_key_usage list ->
  extended_key_usage:
    config__x509_config__key_usage__extended_key_usage list ->
  unknown_extended_key_usages:
    config__x509_config__key_usage__unknown_extended_key_usages list ->
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
  additional_extensions:
    config__x509_config__additional_extensions list ->
  ca_options:config__x509_config__ca_options list ->
  key_usage:config__x509_config__key_usage list ->
  name_constraints:config__x509_config__name_constraints list ->
  policy_ids:config__x509_config__policy_ids list ->
  unit ->
  config__x509_config

type config

val config :
  subject_config:config__subject_config list ->
  x509_config:config__x509_config list ->
  unit ->
  config

type key_spec

val key_spec :
  ?algorithm:string prop ->
  ?cloud_kms_key_version:string prop ->
  unit ->
  key_spec

type subordinate_config__pem_issuer_chain

val subordinate_config__pem_issuer_chain :
  ?pem_certificates:string prop list ->
  unit ->
  subordinate_config__pem_issuer_chain

type subordinate_config

val subordinate_config :
  ?certificate_authority:string prop ->
  pem_issuer_chain:subordinate_config__pem_issuer_chain list ->
  unit ->
  subordinate_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_privateca_certificate_authority

val google_privateca_certificate_authority :
  ?deletion_protection:bool prop ->
  ?desired_state:string prop ->
  ?gcs_bucket:string prop ->
  ?id:string prop ->
  ?ignore_active_certificates_on_deletion:bool prop ->
  ?labels:(string * string prop) list ->
  ?lifetime:string prop ->
  ?pem_ca_certificate:string prop ->
  ?project:string prop ->
  ?skip_grace_period:bool prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  certificate_authority_id:string prop ->
  location:string prop ->
  pool:string prop ->
  config:config list ->
  key_spec:key_spec list ->
  subordinate_config:subordinate_config list ->
  unit ->
  google_privateca_certificate_authority

val yojson_of_google_privateca_certificate_authority :
  google_privateca_certificate_authority -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?deletion_protection:bool prop ->
  ?desired_state:string prop ->
  ?gcs_bucket:string prop ->
  ?id:string prop ->
  ?ignore_active_certificates_on_deletion:bool prop ->
  ?labels:(string * string prop) list ->
  ?lifetime:string prop ->
  ?pem_ca_certificate:string prop ->
  ?project:string prop ->
  ?skip_grace_period:bool prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  certificate_authority_id:string prop ->
  location:string prop ->
  pool:string prop ->
  config:config list ->
  key_spec:key_spec list ->
  subordinate_config:subordinate_config list ->
  string ->
  t

val make :
  ?deletion_protection:bool prop ->
  ?desired_state:string prop ->
  ?gcs_bucket:string prop ->
  ?id:string prop ->
  ?ignore_active_certificates_on_deletion:bool prop ->
  ?labels:(string * string prop) list ->
  ?lifetime:string prop ->
  ?pem_ca_certificate:string prop ->
  ?project:string prop ->
  ?skip_grace_period:bool prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  certificate_authority_id:string prop ->
  location:string prop ->
  pool:string prop ->
  config:config list ->
  key_spec:key_spec list ->
  subordinate_config:subordinate_config list ->
  string ->
  t Tf_core.resource
