(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_container_registry

type t = private {
  created_at : string prop;
  endpoint : string prop;
  id : string prop;
  name : string prop;
  region : string prop;
  server_url : string prop;
  storage_usage_bytes : float prop;
  subscription_tier_slug : string prop;
}

val digitalocean_container_registry :
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  subscription_tier_slug:string prop ->
  string ->
  t
