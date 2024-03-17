(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_keystores_aliases_self_signed_cert__subject

type google_apigee_keystores_aliases_self_signed_cert__subject_alternative_dns_names

type google_apigee_keystores_aliases_self_signed_cert__timeouts

type google_apigee_keystores_aliases_self_signed_cert__certs_info__cert_info = {
  basic_constraints : string;  (** basic_constraints *)
  expiry_date : string;  (** expiry_date *)
  is_valid : string;  (** is_valid *)
  issuer : string;  (** issuer *)
  public_key : string;  (** public_key *)
  serial_number : string;  (** serial_number *)
  sig_alg_name : string;  (** sig_alg_name *)
  subject : string;  (** subject *)
  subject_alternative_names : string list;
      (** subject_alternative_names *)
  valid_from : string;  (** valid_from *)
  version : float;  (** version *)
}

type google_apigee_keystores_aliases_self_signed_cert__certs_info = {
  cert_info :
    google_apigee_keystores_aliases_self_signed_cert__certs_info__cert_info
    list;
      (** cert_info *)
}

type google_apigee_keystores_aliases_self_signed_cert

val google_apigee_keystores_aliases_self_signed_cert :
  ?cert_validity_in_days:float ->
  ?id:string ->
  ?key_size:string ->
  ?timeouts:
    google_apigee_keystores_aliases_self_signed_cert__timeouts ->
  alias:string ->
  environment:string ->
  keystore:string ->
  org_id:string ->
  sig_alg:string ->
  subject:
    google_apigee_keystores_aliases_self_signed_cert__subject list ->
  subject_alternative_dns_names:
    google_apigee_keystores_aliases_self_signed_cert__subject_alternative_dns_names
    list ->
  string ->
  unit
