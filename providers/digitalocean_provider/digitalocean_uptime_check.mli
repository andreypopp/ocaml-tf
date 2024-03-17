(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_uptime_check

val digitalocean_uptime_check :
  ?enabled:bool prop ->
  ?regions:string prop list ->
  ?type_:string prop ->
  name:string prop ->
  target:string prop ->
  string ->
  unit
