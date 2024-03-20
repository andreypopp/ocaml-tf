(** Provides a resource, that manages Keyless certificates.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_keyless_certificate

val cloudflare_keyless_certificate :
  ?bundle_method:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?port:float prop ->
  certificate:string prop ->
  host:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_keyless_certificate

val yojson_of_cloudflare_keyless_certificate :
  cloudflare_keyless_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bundle_method : string prop;
  certificate : string prop;
  enabled : bool prop;
  host : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  status : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bundle_method:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?port:float prop ->
  certificate:string prop ->
  host:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?bundle_method:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?port:float prop ->
  certificate:string prop ->
  host:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
