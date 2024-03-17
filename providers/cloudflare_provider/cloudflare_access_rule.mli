(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_rule__configuration
type cloudflare_access_rule

val cloudflare_access_rule :
  ?account_id:string ->
  ?id:string ->
  ?notes:string ->
  ?zone_id:string ->
  mode:string ->
  configuration:cloudflare_access_rule__configuration list ->
  string ->
  unit
