(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_web_analytics_rule__timeouts
type cloudflare_web_analytics_rule

val cloudflare_web_analytics_rule :
  ?id:string prop ->
  ?timeouts:cloudflare_web_analytics_rule__timeouts ->
  account_id:string prop ->
  host:string prop ->
  inclusive:bool prop ->
  is_paused:bool prop ->
  paths:string prop list ->
  ruleset_id:string prop ->
  string ->
  unit
