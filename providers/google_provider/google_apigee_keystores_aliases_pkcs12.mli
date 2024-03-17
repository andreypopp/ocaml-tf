(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_keystores_aliases_pkcs12__timeouts

type google_apigee_keystores_aliases_pkcs12__certs_info__cert_info = {
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

type google_apigee_keystores_aliases_pkcs12__certs_info = {
  cert_info :
    google_apigee_keystores_aliases_pkcs12__certs_info__cert_info
    list;
      (** cert_info *)
}

type google_apigee_keystores_aliases_pkcs12

val google_apigee_keystores_aliases_pkcs12 :
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:google_apigee_keystores_aliases_pkcs12__timeouts ->
  alias:string prop ->
  environment:string prop ->
  file:string prop ->
  filehash:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  string ->
  unit
