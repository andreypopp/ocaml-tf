(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_ssl_cert__timeouts
type google_sql_ssl_cert

type t = private {
  cert : string prop;
  cert_serial_number : string prop;
  common_name : string prop;
  create_time : string prop;
  expiration_time : string prop;
  id : string prop;
  instance : string prop;
  private_key : string prop;
  project : string prop;
  server_ca_cert : string prop;
  sha1_fingerprint : string prop;
}

val google_sql_ssl_cert :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_sql_ssl_cert__timeouts ->
  common_name:string prop ->
  instance:string prop ->
  string ->
  t
