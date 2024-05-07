(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_container_registry

val digitalocean_container_registry :
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  subscription_tier_slug:string prop ->
  unit ->
  digitalocean_container_registry

val yojson_of_digitalocean_container_registry :
  digitalocean_container_registry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  endpoint : string prop;
  id : string prop;
  name : string prop;
  region : string prop;
  server_url : string prop;
  storage_usage_bytes : float prop;
  subscription_tier_slug : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  subscription_tier_slug:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  subscription_tier_slug:string prop ->
  string ->
  t Tf_core.resource
