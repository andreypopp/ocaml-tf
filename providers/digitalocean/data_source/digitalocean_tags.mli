(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tags = {
  databases_count : float prop;  (** databases_count *)
  droplets_count : float prop;  (** droplets_count *)
  images_count : float prop;  (** images_count *)
  name : string prop;  (** name *)
  total_resource_count : float prop;  (** total_resource_count *)
  volume_snapshots_count : float prop;  (** volume_snapshots_count *)
  volumes_count : float prop;  (** volumes_count *)
}

type filter

val filter :
  ?all:bool prop ->
  ?match_by:string prop ->
  key:string prop ->
  values:string prop list ->
  unit ->
  filter

type sort

val sort : ?direction:string prop -> key:string prop -> unit -> sort

type digitalocean_tags

val digitalocean_tags :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  unit ->
  digitalocean_tags

val yojson_of_digitalocean_tags : digitalocean_tags -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; tags : tags list prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
