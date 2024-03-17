(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_device_posture_integration__config
type cloudflare_device_posture_integration

type t = private {
  account_id : string prop;
  id : string prop;
  identifier : string prop;
  interval : string prop;
  name : string prop;
  type_ : string prop;
}

val cloudflare_device_posture_integration :
  ?id:string prop ->
  ?identifier:string prop ->
  ?interval:string prop ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:cloudflare_device_posture_integration__config list ->
  string ->
  t
