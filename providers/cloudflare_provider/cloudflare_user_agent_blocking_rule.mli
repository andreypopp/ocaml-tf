(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_user_agent_blocking_rule__configuration
type cloudflare_user_agent_blocking_rule

type t = private {
  description : string prop;
  id : string prop;
  mode : string prop;
  paused : bool prop;
  zone_id : string prop;
}

val cloudflare_user_agent_blocking_rule :
  ?id:string prop ->
  description:string prop ->
  mode:string prop ->
  paused:bool prop ->
  zone_id:string prop ->
  configuration:
    cloudflare_user_agent_blocking_rule__configuration list ->
  string ->
  t
