(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_keystores_aliases_key_cert_file__certs_info__cert_info

type google_apigee_keystores_aliases_key_cert_file__certs_info
type google_apigee_keystores_aliases_key_cert_file__timeouts
type google_apigee_keystores_aliases_key_cert_file

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

val google_apigee_keystores_aliases_key_cert_file :
  ?id:string prop ->
  ?key:string prop ->
  ?password:string prop ->
  ?timeouts:google_apigee_keystores_aliases_key_cert_file__timeouts ->
  alias:string prop ->
  cert:string prop ->
  environment:string prop ->
  keystore:string prop ->
  org_id:string prop ->
  certs_info:
    google_apigee_keystores_aliases_key_cert_file__certs_info list ->
  string ->
  t
