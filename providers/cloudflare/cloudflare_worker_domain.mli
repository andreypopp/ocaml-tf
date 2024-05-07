(** Creates a Worker Custom Domain. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_worker_domain

val cloudflare_worker_domain :
  ?environment:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  hostname:string prop ->
  service:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_worker_domain

val yojson_of_cloudflare_worker_domain :
  cloudflare_worker_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  environment : string prop;
  hostname : string prop;
  id : string prop;
  service : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?environment:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  hostname:string prop ->
  service:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?environment:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  hostname:string prop ->
  service:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
