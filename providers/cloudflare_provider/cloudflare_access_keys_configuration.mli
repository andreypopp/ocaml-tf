(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_keys_configuration

type t = private {
  account_id : string prop;
  id : string prop;
  key_rotation_interval_days : float prop;
}

val cloudflare_access_keys_configuration :
  ?id:string prop ->
  ?key_rotation_interval_days:float prop ->
  account_id:string prop ->
  string ->
  t
