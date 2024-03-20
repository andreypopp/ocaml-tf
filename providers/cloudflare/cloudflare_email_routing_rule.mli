(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action

val action :
  ?value:string prop list -> type_:string prop -> unit -> action

type matcher

val matcher :
  ?field:string prop ->
  ?value:string prop ->
  type_:string prop ->
  unit ->
  matcher

type cloudflare_email_routing_rule

val cloudflare_email_routing_rule :
  ?enabled:bool prop ->
  ?priority:float prop ->
  name:string prop ->
  zone_id:string prop ->
  action:action list ->
  matcher:matcher list ->
  unit ->
  cloudflare_email_routing_rule

val yojson_of_cloudflare_email_routing_rule :
  cloudflare_email_routing_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  tag : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?priority:float prop ->
  name:string prop ->
  zone_id:string prop ->
  action:action list ->
  matcher:matcher list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?priority:float prop ->
  name:string prop ->
  zone_id:string prop ->
  action:action list ->
  matcher:matcher list ->
  string ->
  t Tf_core.resource
