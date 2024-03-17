(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_email_routing_catch_all__action
type cloudflare_email_routing_catch_all__matcher
type cloudflare_email_routing_catch_all

type t = private {
  enabled : bool prop;
  id : string prop;
  name : string prop;
  tag : string prop;
  zone_id : string prop;
}

val cloudflare_email_routing_catch_all :
  ?enabled:bool prop ->
  ?id:string prop ->
  name:string prop ->
  zone_id:string prop ->
  action:cloudflare_email_routing_catch_all__action list ->
  matcher:cloudflare_email_routing_catch_all__matcher list ->
  string ->
  t
