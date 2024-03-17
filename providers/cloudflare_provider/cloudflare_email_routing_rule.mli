(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_email_routing_rule__action
type cloudflare_email_routing_rule__matcher
type cloudflare_email_routing_rule

val cloudflare_email_routing_rule :
  ?enabled:bool prop ->
  ?priority:float prop ->
  name:string prop ->
  zone_id:string prop ->
  action:cloudflare_email_routing_rule__action list ->
  matcher:cloudflare_email_routing_rule__matcher list ->
  string ->
  unit
