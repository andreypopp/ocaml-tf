(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_droplet

val digitalocean_droplet :
  ?id:float prop ->
  ?name:string prop ->
  ?tag:string prop ->
  unit ->
  digitalocean_droplet

val yojson_of_digitalocean_droplet : digitalocean_droplet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backups : bool prop;
  created_at : string prop;
  disk : float prop;
  id : float prop;
  image : string prop;
  ipv4_address : string prop;
  ipv4_address_private : string prop;
  ipv6 : bool prop;
  ipv6_address : string prop;
  ipv6_address_private : string prop;
  locked : bool prop;
  memory : float prop;
  monitoring : bool prop;
  name : string prop;
  price_hourly : float prop;
  price_monthly : float prop;
  private_networking : bool prop;
  region : string prop;
  size : string prop;
  status : string prop;
  tag : string prop;
  tags : string list prop;
  urn : string prop;
  vcpus : float prop;
  volume_ids : string list prop;
  vpc_uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?name:string prop ->
  ?tag:string prop ->
  string ->
  t

val make :
  ?id:float prop ->
  ?name:string prop ->
  ?tag:string prop ->
  string ->
  t Tf_core.resource
