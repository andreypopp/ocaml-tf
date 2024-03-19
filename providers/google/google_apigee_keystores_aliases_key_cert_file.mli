(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type certs_info__cert_info

val certs_info__cert_info :
  ?basic_constraints:string prop ->
  ?expiry_date:string prop ->
  ?is_valid:string prop ->
  ?issuer:string prop ->
  ?public_key:string prop ->
  ?serial_number:string prop ->
  ?sig_alg_name:string prop ->
  ?subject:string prop ->
  ?subject_alternative_names:string prop list ->
  ?valid_from:string prop ->
  ?version:float prop ->
  unit ->
  certs_info__cert_info

type certs_info

val certs_info :
  cert_info:certs_info__cert_info list -> unit -> certs_info

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apigee_keystores_aliases_key_cert_file

val google_apigee_keystores_aliases_key_cert_file :
  ?id:string prop ->
  ?key:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  alias:string prop ->
  cert:string prop ->
  environment:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  certs_info:certs_info list ->
  unit ->
  google_apigee_keystores_aliases_key_cert_file

val yojson_of_google_apigee_keystores_aliases_key_cert_file :
  google_apigee_keystores_aliases_key_cert_file -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alias : string prop;
  cert : string prop;
  environment : string prop;
  id : string prop;
  key : string prop;
  keystore : string prop;
  org_id : string prop;
  password : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  alias:string prop ->
  cert:string prop ->
  environment:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  certs_info:certs_info list ->
  string ->
  t
