(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_certificate_authority__config__subject_config__subject

type google_privateca_certificate_authority__config__subject_config__subject_alt_name

type google_privateca_certificate_authority__config__subject_config

type google_privateca_certificate_authority__config__x509_config__additional_extensions__object_id

type google_privateca_certificate_authority__config__x509_config__additional_extensions

type google_privateca_certificate_authority__config__x509_config__ca_options

type google_privateca_certificate_authority__config__x509_config__key_usage__base_key_usage

type google_privateca_certificate_authority__config__x509_config__key_usage__extended_key_usage

type google_privateca_certificate_authority__config__x509_config__key_usage__unknown_extended_key_usages

type google_privateca_certificate_authority__config__x509_config__key_usage

type google_privateca_certificate_authority__config__x509_config__name_constraints

type google_privateca_certificate_authority__config__x509_config__policy_ids

type google_privateca_certificate_authority__config__x509_config
type google_privateca_certificate_authority__config
type google_privateca_certificate_authority__key_spec

type google_privateca_certificate_authority__subordinate_config__pem_issuer_chain

type google_privateca_certificate_authority__subordinate_config
type google_privateca_certificate_authority__timeouts

type google_privateca_certificate_authority__access_urls = {
  ca_certificate_access_url : string;
      (** ca_certificate_access_url *)
  crl_access_urls : string list;  (** crl_access_urls *)
}
[@@deriving yojson_of]

type google_privateca_certificate_authority

val google_privateca_certificate_authority :
  ?deletion_protection:bool ->
  ?desired_state:string ->
  ?gcs_bucket:string ->
  ?ignore_active_certificates_on_deletion:bool ->
  ?labels:(string * string) list ->
  ?lifetime:string ->
  ?pem_ca_certificate:string ->
  ?skip_grace_period:bool ->
  ?type_:string ->
  ?timeouts:google_privateca_certificate_authority__timeouts ->
  certificate_authority_id:string ->
  location:string ->
  pool:string ->
  config:google_privateca_certificate_authority__config list ->
  key_spec:google_privateca_certificate_authority__key_spec list ->
  subordinate_config:
    google_privateca_certificate_authority__subordinate_config list ->
  string ->
  unit
