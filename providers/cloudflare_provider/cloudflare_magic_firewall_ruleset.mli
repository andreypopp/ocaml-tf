(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_magic_firewall_ruleset

val cloudflare_magic_firewall_ruleset :
  ?description:string prop ->
  ?id:string prop ->
  ?rules:(string * string prop) list list ->
  account_id:string prop ->
  name:string prop ->
  string ->
  unit
