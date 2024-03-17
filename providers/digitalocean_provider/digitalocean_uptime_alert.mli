(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_uptime_alert__notifications__slack
type digitalocean_uptime_alert__notifications
type digitalocean_uptime_alert

val digitalocean_uptime_alert :
  ?comparison:string ->
  ?period:string ->
  ?threshold:float ->
  check_id:string ->
  name:string ->
  type_:string ->
  notifications:digitalocean_uptime_alert__notifications list ->
  string ->
  unit
