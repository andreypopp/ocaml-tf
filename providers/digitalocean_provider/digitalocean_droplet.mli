(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_droplet__timeouts
type digitalocean_droplet

val digitalocean_droplet :
  ?backups:bool ->
  ?droplet_agent:bool ->
  ?graceful_shutdown:bool ->
  ?id:string ->
  ?ipv6:bool ->
  ?ipv6_address:string ->
  ?monitoring:bool ->
  ?private_networking:bool ->
  ?region:string ->
  ?resize_disk:bool ->
  ?ssh_keys:string list ->
  ?tags:string list ->
  ?user_data:string ->
  ?volume_ids:string list ->
  ?vpc_uuid:string ->
  ?timeouts:digitalocean_droplet__timeouts ->
  image:string ->
  name:string ->
  size:string ->
  string ->
  unit
