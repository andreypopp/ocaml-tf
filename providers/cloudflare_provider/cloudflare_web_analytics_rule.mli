(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_web_analytics_rule__timeouts
type cloudflare_web_analytics_rule

val cloudflare_web_analytics_rule :
  ?id:string ->
  ?timeouts:cloudflare_web_analytics_rule__timeouts ->
  account_id:string ->
  host:string ->
  inclusive:bool ->
  is_paused:bool ->
  paths:string list ->
  ruleset_id:string ->
  string ->
  unit
