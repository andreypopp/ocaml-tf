(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_hostname_tls_setting

type t = private {
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  setting : string prop;
  updated_at : string prop;
  value : string prop;
  zone_id : string prop;
}

val cloudflare_hostname_tls_setting :
  ?id:string prop ->
  hostname:string prop ->
  setting:string prop ->
  value:string prop ->
  zone_id:string prop ->
  string ->
  t
