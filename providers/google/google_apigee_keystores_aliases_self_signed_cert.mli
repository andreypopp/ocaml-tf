(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type certs_info__cert_info = {
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

type certs_info = {
  cert_info : certs_info__cert_info list;  (** cert_info *)
}

type subject

val subject :
  ?common_name:string prop ->
  ?country_code:string prop ->
  ?email:string prop ->
  ?locality:string prop ->
  ?org:string prop ->
  ?org_unit:string prop ->
  ?state:string prop ->
  unit ->
  subject

type subject_alternative_dns_names

val subject_alternative_dns_names :
  ?subject_alternative_name:string prop ->
  unit ->
  subject_alternative_dns_names

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_keystores_aliases_self_signed_cert

val google_apigee_keystores_aliases_self_signed_cert :
  ?cert_validity_in_days:float prop ->
  ?id:string prop ->
  ?key_size:string prop ->
  ?timeouts:timeouts ->
  alias:string prop ->
  environment:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  sig_alg:string prop ->
  subject:subject list ->
  subject_alternative_dns_names:subject_alternative_dns_names list ->
  unit ->
  google_apigee_keystores_aliases_self_signed_cert

val yojson_of_google_apigee_keystores_aliases_self_signed_cert :
  google_apigee_keystores_aliases_self_signed_cert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alias : string prop;
  cert_validity_in_days : float prop;
  certs_info : certs_info list prop;
  environment : string prop;
  id : string prop;
  key_size : string prop;
  keystore : string prop;
  org_id : string prop;
  sig_alg : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cert_validity_in_days:float prop ->
  ?id:string prop ->
  ?key_size:string prop ->
  ?timeouts:timeouts ->
  alias:string prop ->
  environment:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  sig_alg:string prop ->
  subject:subject list ->
  subject_alternative_dns_names:subject_alternative_dns_names list ->
  string ->
  t
