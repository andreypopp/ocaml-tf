(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_monitor_alert__alerts__slack
type digitalocean_monitor_alert__alerts
type digitalocean_monitor_alert

val digitalocean_monitor_alert :
  ?enabled:bool ->
  ?entities:string list ->
  ?tags:string list ->
  compare:string ->
  description:string ->
  type_:string ->
  value:float ->
  window:string ->
  alerts:digitalocean_monitor_alert__alerts list ->
  string ->
  unit
