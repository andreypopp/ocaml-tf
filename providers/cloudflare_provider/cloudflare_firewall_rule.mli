(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_firewall_rule

val cloudflare_firewall_rule :
  ?description:string ->
  ?id:string ->
  ?paused:bool ->
  ?priority:float ->
  ?products:string list ->
  action:string ->
  filter_id:string ->
  zone_id:string ->
  string ->
  unit
