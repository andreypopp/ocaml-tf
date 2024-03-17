(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_volume_attachment

type t = private {
  droplet_id : float prop;
  id : string prop;
  volume_id : string prop;
}

val digitalocean_volume_attachment :
  ?id:string prop ->
  droplet_id:float prop ->
  volume_id:string prop ->
  string ->
  t
