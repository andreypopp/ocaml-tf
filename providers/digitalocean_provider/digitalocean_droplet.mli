(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_droplet__timeouts
type digitalocean_droplet

val digitalocean_droplet :
  ?backups:bool prop ->
  ?droplet_agent:bool prop ->
  ?graceful_shutdown:bool prop ->
  ?id:string prop ->
  ?ipv6:bool prop ->
  ?ipv6_address:string prop ->
  ?monitoring:bool prop ->
  ?private_networking:bool prop ->
  ?region:string prop ->
  ?resize_disk:bool prop ->
  ?ssh_keys:string prop list ->
  ?tags:string prop list ->
  ?user_data:string prop ->
  ?volume_ids:string prop list ->
  ?vpc_uuid:string prop ->
  ?timeouts:digitalocean_droplet__timeouts ->
  image:string prop ->
  name:string prop ->
  size:string prop ->
  string ->
  unit
