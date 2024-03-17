(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone_hold

val cloudflare_zone_hold :
  ?hold_after:string ->
  ?id:string ->
  ?include_subdomains:bool ->
  hold:bool ->
  zone_id:string ->
  string ->
  unit
