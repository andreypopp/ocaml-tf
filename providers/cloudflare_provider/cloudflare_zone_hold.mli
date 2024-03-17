(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone_hold

type t = private {
  hold : bool prop;
  hold_after : string prop;
  id : string prop;
  include_subdomains : bool prop;
  zone_id : string prop;
}

val cloudflare_zone_hold :
  ?hold_after:string prop ->
  ?id:string prop ->
  ?include_subdomains:bool prop ->
  hold:bool prop ->
  zone_id:string prop ->
  string ->
  t
