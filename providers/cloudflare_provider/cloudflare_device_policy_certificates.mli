(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_device_policy_certificates

type t = private {
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

val cloudflare_device_policy_certificates :
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t
