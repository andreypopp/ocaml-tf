(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_magic_firewall_ruleset

type t = private {
  account_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rules : (string * string) list list prop;
}

val cloudflare_magic_firewall_ruleset :
  ?description:string prop ->
  ?id:string prop ->
  ?rules:(string * string prop) list list ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t
