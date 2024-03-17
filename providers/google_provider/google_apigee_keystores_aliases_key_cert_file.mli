(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_keystores_aliases_key_cert_file__certs_info__cert_info

type google_apigee_keystores_aliases_key_cert_file__certs_info
type google_apigee_keystores_aliases_key_cert_file__timeouts
type google_apigee_keystores_aliases_key_cert_file

val google_apigee_keystores_aliases_key_cert_file :
  ?id:string ->
  ?key:string ->
  ?password:string ->
  ?timeouts:google_apigee_keystores_aliases_key_cert_file__timeouts ->
  alias:string ->
  cert:string ->
  environment:string ->
  keystore:string ->
  org_id:string ->
  certs_info:
    google_apigee_keystores_aliases_key_cert_file__certs_info list ->
  string ->
  unit
