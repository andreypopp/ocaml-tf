(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_droplet_snapshot

val digitalocean_droplet_snapshot :
  ?id:string prop ->
  droplet_id:string prop ->
  name:string prop ->
  unit ->
  digitalocean_droplet_snapshot

val yojson_of_digitalocean_droplet_snapshot :
  digitalocean_droplet_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  droplet_id : string prop;
  id : string prop;
  min_disk_size : float prop;
  name : string prop;
  regions : string list prop;
  size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  droplet_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  droplet_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
