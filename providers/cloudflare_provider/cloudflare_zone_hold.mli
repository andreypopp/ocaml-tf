(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone_hold

val cloudflare_zone_hold :
  ?hold_after:string prop ->
  ?id:string prop ->
  ?include_subdomains:bool prop ->
  hold:bool prop ->
  zone_id:string prop ->
  string ->
  unit
