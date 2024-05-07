(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_volume_snapshot

val digitalocean_volume_snapshot :
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  volume_id:string prop ->
  unit ->
  digitalocean_volume_snapshot

val yojson_of_digitalocean_volume_snapshot :
  digitalocean_volume_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  min_disk_size : float prop;
  name : string prop;
  regions : string list prop;
  size : float prop;
  tags : string list prop;
  volume_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  volume_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  volume_id:string prop ->
  string ->
  t Tf_core.resource
