(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_keystores_aliases_self_signed_cert__subject

type google_apigee_keystores_aliases_self_signed_cert__subject_alternative_dns_names

type google_apigee_keystores_aliases_self_signed_cert__timeouts

type google_apigee_keystores_aliases_self_signed_cert__certs_info__cert_info = {
  basic_constraints : string prop;  (** basic_constraints *)
  expiry_date : string prop;  (** expiry_date *)
  is_valid : string prop;  (** is_valid *)
  issuer : string prop;  (** issuer *)
  public_key : string prop;  (** public_key *)
  serial_number : string prop;  (** serial_number *)
  sig_alg_name : string prop;  (** sig_alg_name *)
  subject : string prop;  (** subject *)
  subject_alternative_names : string prop list;
      (** subject_alternative_names *)
  valid_from : string prop;  (** valid_from *)
  version : float prop;  (** version *)
}

type google_apigee_keystores_aliases_self_signed_cert__certs_info = {
  cert_info :
    google_apigee_keystores_aliases_self_signed_cert__certs_info__cert_info
    list;
      (** cert_info *)
}

type google_apigee_keystores_aliases_self_signed_cert

type t = private {
  alias : string prop;
  cert_validity_in_days : float prop;
  certs_info :
    google_apigee_keystores_aliases_self_signed_cert__certs_info list
    prop;
  environment : string prop;
  id : string prop;
  key_size : string prop;
  keystore : string prop;
  org_id : string prop;
  sig_alg : string prop;
  type_ : string prop;
}

val google_apigee_keystores_aliases_self_signed_cert :
  ?cert_validity_in_days:float prop ->
  ?id:string prop ->
  ?key_size:string prop ->
  ?timeouts:
    google_apigee_keystores_aliases_self_signed_cert__timeouts ->
  alias:string prop ->
  environment:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  sig_alg:string prop ->
  subject:
    google_apigee_keystores_aliases_self_signed_cert__subject list ->
  subject_alternative_dns_names:
    google_apigee_keystores_aliases_self_signed_cert__subject_alternative_dns_names
    list ->
  string ->
  t
