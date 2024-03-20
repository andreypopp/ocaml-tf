(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_droplet_snapshot

val digitalocean_droplet_snapshot :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?region:string prop ->
  unit ->
  digitalocean_droplet_snapshot

val yojson_of_digitalocean_droplet_snapshot :
  digitalocean_droplet_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_at : string prop;
  droplet_id : string prop;
  id : string prop;
  min_disk_size : float prop;
  most_recent : bool prop;
  name : string prop;
  name_regex : string prop;
  region : string prop;
  regions : string list prop;
  size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
