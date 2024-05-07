(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_volume_attachment

val digitalocean_volume_attachment :
  ?id:string prop ->
  droplet_id:float prop ->
  volume_id:string prop ->
  unit ->
  digitalocean_volume_attachment

val yojson_of_digitalocean_volume_attachment :
  digitalocean_volume_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  droplet_id : float prop;
  id : string prop;
  volume_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  droplet_id:float prop ->
  volume_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  droplet_id:float prop ->
  volume_id:string prop ->
  string ->
  t Tf_core.resource
