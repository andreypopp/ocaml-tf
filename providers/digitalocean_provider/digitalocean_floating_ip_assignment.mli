(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_floating_ip_assignment

type t = private {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
}

val digitalocean_floating_ip_assignment :
  ?id:string prop ->
  droplet_id:float prop ->
  ip_address:string prop ->
  string ->
  t
