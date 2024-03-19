(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type digitalocean_floating_ip_assignment

val digitalocean_floating_ip_assignment :
  ?id:string prop ->
  droplet_id:float prop ->
  ip_address:string prop ->
  unit ->
  digitalocean_floating_ip_assignment

val yojson_of_digitalocean_floating_ip_assignment :
  digitalocean_floating_ip_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  droplet_id:float prop ->
  ip_address:string prop ->
  string ->
  t
