(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_user_agent_blocking_rule__configuration
type cloudflare_user_agent_blocking_rule

val cloudflare_user_agent_blocking_rule :
  description:string ->
  mode:string ->
  paused:bool ->
  zone_id:string ->
  configuration:
    cloudflare_user_agent_blocking_rule__configuration list ->
  string ->
  unit
