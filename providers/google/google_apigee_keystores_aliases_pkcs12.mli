(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_keystores_aliases_pkcs12

val google_apigee_keystores_aliases_pkcs12 :
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  alias:string prop ->
  environment:string prop ->
  file:string prop ->
  filehash:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  unit ->
  google_apigee_keystores_aliases_pkcs12

val yojson_of_google_apigee_keystores_aliases_pkcs12 :
  google_apigee_keystores_aliases_pkcs12 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias : string prop;
  certs_info : certs_info list prop;
  environment : string prop;
  file : string prop;
  filehash : string prop;
  id : string prop;
  keystore : string prop;
  org_id : string prop;
  password : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  alias:string prop ->
  environment:string prop ->
  file:string prop ->
  filehash:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  alias:string prop ->
  environment:string prop ->
  file:string prop ->
  filehash:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  string ->
  t Tf_core.resource
