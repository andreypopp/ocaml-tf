(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type alerts__slack

val alerts__slack :
  channel:string prop -> url:string prop -> unit -> alerts__slack

type alerts

val alerts :
  ?email:string prop list ->
  slack:alerts__slack list ->
  unit ->
  alerts

type digitalocean_monitor_alert

val digitalocean_monitor_alert :
  ?enabled:bool prop ->
  ?entities:string prop list ->
  ?id:string prop ->
  ?tags:string prop list ->
  compare:string prop ->
  description:string prop ->
  type_:string prop ->
  value:float prop ->
  window:string prop ->
  alerts:alerts list ->
  unit ->
  digitalocean_monitor_alert

val yojson_of_digitalocean_monitor_alert :
  digitalocean_monitor_alert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  compare : string prop;
  description : string prop;
  enabled : bool prop;
  entities : string list prop;
  id : string prop;
  tags : string list prop;
  type_ : string prop;
  uuid : string prop;
  value : float prop;
  window : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?entities:string prop list ->
  ?id:string prop ->
  ?tags:string prop list ->
  compare:string prop ->
  description:string prop ->
  type_:string prop ->
  value:float prop ->
  window:string prop ->
  alerts:alerts list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?entities:string prop list ->
  ?id:string prop ->
  ?tags:string prop list ->
  compare:string prop ->
  description:string prop ->
  type_:string prop ->
  value:float prop ->
  window:string prop ->
  alerts:alerts list ->
  string ->
  t Tf_core.resource
