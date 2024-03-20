(** Provides a Cloudflare worker route resource. A route will also require a `cloudflare_worker_script`. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_worker_route

val cloudflare_worker_route :
  ?id:string prop ->
  ?script_name:string prop ->
  pattern:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_worker_route

val yojson_of_cloudflare_worker_route :
  cloudflare_worker_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  pattern : string prop;
  script_name : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?script_name:string prop ->
  pattern:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?script_name:string prop ->
  pattern:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
