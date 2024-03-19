(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type digitalocean_tag

val digitalocean_tag :
  ?id:string prop -> name:string prop -> unit -> digitalocean_tag

val yojson_of_digitalocean_tag : digitalocean_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  databases_count : float prop;
  droplets_count : float prop;
  id : string prop;
  images_count : float prop;
  name : string prop;
  total_resource_count : float prop;
  volume_snapshots_count : float prop;
  volumes_count : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t
