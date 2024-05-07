(** Provides a resource for managing Email Routing Addresses catch all behaviour.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action

val action :
  type_:string prop -> value:string prop list -> unit -> action

type matcher

val matcher : type_:string prop -> unit -> matcher

type cloudflare_email_routing_catch_all

val cloudflare_email_routing_catch_all :
  ?enabled:bool prop ->
  ?id:string prop ->
  name:string prop ->
  zone_id:string prop ->
  action:action list ->
  matcher:matcher list ->
  unit ->
  cloudflare_email_routing_catch_all

val yojson_of_cloudflare_email_routing_catch_all :
  cloudflare_email_routing_catch_all -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  tag : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  name:string prop ->
  zone_id:string prop ->
  action:action list ->
  matcher:matcher list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  name:string prop ->
  zone_id:string prop ->
  action:action list ->
  matcher:matcher list ->
  string ->
  t Tf_core.resource
