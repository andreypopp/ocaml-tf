(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_reserved_ip

type t = private {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
  region : string prop;
  urn : string prop;
}

val digitalocean_reserved_ip :
  ?droplet_id:float prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  region:string prop ->
  string ->
  t
