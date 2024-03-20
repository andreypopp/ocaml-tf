(** Provides a resource to manage User Agent Blocking Rules.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration

val configuration :
  target:string prop -> value:string prop -> unit -> configuration

type cloudflare_user_agent_blocking_rule

val cloudflare_user_agent_blocking_rule :
  ?id:string prop ->
  description:string prop ->
  mode:string prop ->
  paused:bool prop ->
  zone_id:string prop ->
  configuration:configuration list ->
  unit ->
  cloudflare_user_agent_blocking_rule

val yojson_of_cloudflare_user_agent_blocking_rule :
  cloudflare_user_agent_blocking_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  mode : string prop;
  paused : bool prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  description:string prop ->
  mode:string prop ->
  paused:bool prop ->
  zone_id:string prop ->
  configuration:configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  description:string prop ->
  mode:string prop ->
  paused:bool prop ->
  zone_id:string prop ->
  configuration:configuration list ->
  string ->
  t Tf_core.resource
