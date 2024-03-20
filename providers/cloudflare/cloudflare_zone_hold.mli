(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_zone_hold

val cloudflare_zone_hold :
  ?hold_after:string prop ->
  ?id:string prop ->
  ?include_subdomains:bool prop ->
  hold:bool prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_zone_hold

val yojson_of_cloudflare_zone_hold : cloudflare_zone_hold -> json

(** RESOURCE REGISTRATION *)

type t = private {
  hold : bool prop;
  hold_after : string prop;
  id : string prop;
  include_subdomains : bool prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?hold_after:string prop ->
  ?id:string prop ->
  ?include_subdomains:bool prop ->
  hold:bool prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?hold_after:string prop ->
  ?id:string prop ->
  ?include_subdomains:bool prop ->
  hold:bool prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
