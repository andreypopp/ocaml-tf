(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_magic_firewall_ruleset

val cloudflare_magic_firewall_ruleset :
  ?description:string prop ->
  ?id:string prop ->
  ?rules:string prop Tf_core.assoc list ->
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_magic_firewall_ruleset

val yojson_of_cloudflare_magic_firewall_ruleset :
  cloudflare_magic_firewall_ruleset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rules : string Tf_core.assoc list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?rules:string prop Tf_core.assoc list ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?rules:string prop Tf_core.assoc list ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
