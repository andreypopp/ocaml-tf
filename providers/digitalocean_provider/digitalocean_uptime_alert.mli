(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_uptime_alert__notifications__slack
type digitalocean_uptime_alert__notifications
type digitalocean_uptime_alert

type t = private {
  check_id : string prop;
  comparison : string prop;
  id : string prop;
  name : string prop;
  period : string prop;
  threshold : float prop;
  type_ : string prop;
}

val digitalocean_uptime_alert :
  ?comparison:string prop ->
  ?period:string prop ->
  ?threshold:float prop ->
  check_id:string prop ->
  name:string prop ->
  type_:string prop ->
  notifications:digitalocean_uptime_alert__notifications list ->
  string ->
  t
