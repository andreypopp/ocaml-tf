(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_keystores_aliases_pkcs12__timeouts

type google_apigee_keystores_aliases_pkcs12__certs_info__cert_info = {
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
[@@deriving yojson_of]

type google_apigee_keystores_aliases_pkcs12__certs_info = {
  cert_info :
    google_apigee_keystores_aliases_pkcs12__certs_info__cert_info
    list;
      (** cert_info *)
}
[@@deriving yojson_of]

type google_apigee_keystores_aliases_pkcs12

val google_apigee_keystores_aliases_pkcs12 :
  ?timeouts:google_apigee_keystores_aliases_pkcs12__timeouts ->
  alias:string ->
  environment:string ->
  file:string ->
  filehash:string ->
  keystore:string ->
  org_id:string ->
  string ->
  unit
