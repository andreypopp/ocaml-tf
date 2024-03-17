(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_droplet_snapshot

type t = private {
  created_at : string prop;
  droplet_id : string prop;
  id : string prop;
  min_disk_size : float prop;
  name : string prop;
  regions : string list prop;
  size : float prop;
}

val digitalocean_droplet_snapshot :
  ?id:string prop ->
  droplet_id:string prop ->
  name:string prop ->
  string ->
  t
