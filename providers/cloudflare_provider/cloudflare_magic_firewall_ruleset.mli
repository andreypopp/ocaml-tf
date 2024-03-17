(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_magic_firewall_ruleset

val cloudflare_magic_firewall_ruleset :
  ?description:string ->
  ?rules:(string * string) list list ->
  account_id:string ->
  name:string ->
  string ->
  unit
