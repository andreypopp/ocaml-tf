(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_email_routing_catch_all__action
type cloudflare_email_routing_catch_all__matcher
type cloudflare_email_routing_catch_all

val cloudflare_email_routing_catch_all :
  ?enabled:bool ->
  ?id:string ->
  name:string ->
  zone_id:string ->
  action:cloudflare_email_routing_catch_all__action list ->
  matcher:cloudflare_email_routing_catch_all__matcher list ->
  string ->
  unit
