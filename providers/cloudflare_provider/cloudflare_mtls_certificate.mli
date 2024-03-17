(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_mtls_certificate

type t = private {
  account_id : string prop;
  ca : bool prop;
  certificates : string prop;
  expires_on : string prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  private_key : string prop;
  serial_number : string prop;
  signature : string prop;
  uploaded_on : string prop;
}

val cloudflare_mtls_certificate :
  ?id:string prop ->
  ?name:string prop ->
  ?private_key:string prop ->
  account_id:string prop ->
  ca:bool prop ->
  certificates:string prop ->
  string ->
  t
