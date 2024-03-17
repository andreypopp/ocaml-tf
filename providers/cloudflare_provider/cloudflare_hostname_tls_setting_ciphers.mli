(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_hostname_tls_setting_ciphers

type t = private {
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  ports : float list prop;
  updated_at : string prop;
  value : string list prop;
  zone_id : string prop;
}

val cloudflare_hostname_tls_setting_ciphers :
  ?id:string prop ->
  ?ports:float prop list ->
  hostname:string prop ->
  value:string prop list ->
  zone_id:string prop ->
  string ->
  t
