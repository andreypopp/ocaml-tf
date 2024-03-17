(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_monitor_alert__alerts__slack
type digitalocean_monitor_alert__alerts
type digitalocean_monitor_alert

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
  alerts:digitalocean_monitor_alert__alerts list ->
  string ->
  t
