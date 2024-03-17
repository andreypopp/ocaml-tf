(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_device_dex_test__data
type cloudflare_device_dex_test

type t = private {
  account_id : string prop;
  created : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  interval : string prop;
  name : string prop;
  updated : string prop;
}

val cloudflare_device_dex_test :
  ?id:string prop ->
  account_id:string prop ->
  description:string prop ->
  enabled:bool prop ->
  interval:string prop ->
  name:string prop ->
  data:cloudflare_device_dex_test__data list ->
  string ->
  t
