(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_access_keys_configuration

val cloudflare_access_keys_configuration :
  ?id:string prop ->
  ?key_rotation_interval_days:float prop ->
  account_id:string prop ->
  unit ->
  cloudflare_access_keys_configuration

val yojson_of_cloudflare_access_keys_configuration :
  cloudflare_access_keys_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  key_rotation_interval_days : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key_rotation_interval_days:float prop ->
  account_id:string prop ->
  string ->
  t
