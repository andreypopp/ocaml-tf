(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_firewall_rule

val cloudflare_firewall_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?priority:float prop ->
  ?products:string prop list ->
  action:string prop ->
  filter_id:string prop ->
  zone_id:string prop ->
  string ->
  unit
