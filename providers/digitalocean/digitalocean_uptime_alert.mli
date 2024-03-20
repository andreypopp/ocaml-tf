(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type notifications__slack

val notifications__slack :
  channel:string prop ->
  url:string prop ->
  unit ->
  notifications__slack

type notifications

val notifications :
  ?email:string prop list ->
  slack:notifications__slack list ->
  unit ->
  notifications

type digitalocean_uptime_alert

val digitalocean_uptime_alert :
  ?comparison:string prop ->
  ?period:string prop ->
  ?threshold:float prop ->
  check_id:string prop ->
  name:string prop ->
  type_:string prop ->
  notifications:notifications list ->
  unit ->
  digitalocean_uptime_alert

val yojson_of_digitalocean_uptime_alert :
  digitalocean_uptime_alert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  check_id : string prop;
  comparison : string prop;
  id : string prop;
  name : string prop;
  period : string prop;
  threshold : float prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comparison:string prop ->
  ?period:string prop ->
  ?threshold:float prop ->
  check_id:string prop ->
  name:string prop ->
  type_:string prop ->
  notifications:notifications list ->
  string ->
  t

val make :
  ?comparison:string prop ->
  ?period:string prop ->
  ?threshold:float prop ->
  check_id:string prop ->
  name:string prop ->
  type_:string prop ->
  notifications:notifications list ->
  string ->
  t Tf_core.resource
