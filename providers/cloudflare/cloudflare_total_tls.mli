(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_total_tls

val cloudflare_total_tls :
  ?certificate_authority:string prop ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_total_tls

val yojson_of_cloudflare_total_tls : cloudflare_total_tls -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_authority : string prop;
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_authority:string prop ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?certificate_authority:string prop ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
