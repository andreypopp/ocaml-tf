(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_ca_certificate

type t = private {
  account_id : string prop;
  application_id : string prop;
  aud : string prop;
  id : string prop;
  public_key : string prop;
  zone_id : string prop;
}

val cloudflare_access_ca_certificate :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  application_id:string prop ->
  string ->
  t
