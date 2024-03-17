(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_device_managed_networks__config
type cloudflare_device_managed_networks

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val cloudflare_device_managed_networks :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:cloudflare_device_managed_networks__config list ->
  string ->
  t
