(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_argo

val cloudflare_argo :
  ?id:string prop ->
  ?smart_routing:string prop ->
  ?tiered_caching:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_argo

val yojson_of_cloudflare_argo : cloudflare_argo -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  smart_routing : string prop;
  tiered_caching : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?smart_routing:string prop ->
  ?tiered_caching:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?smart_routing:string prop ->
  ?tiered_caching:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
