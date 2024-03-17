(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_volume_snapshot

type t = private {
  created_at : string prop;
  id : string prop;
  min_disk_size : float prop;
  name : string prop;
  regions : string list prop;
  size : float prop;
  tags : string list prop;
  volume_id : string prop;
}

val digitalocean_volume_snapshot :
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  volume_id:string prop ->
  string ->
  t
