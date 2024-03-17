(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_droplet__timeouts
type digitalocean_droplet

val digitalocean_droplet :
  ?backups:bool ->
  ?droplet_agent:bool ->
  ?graceful_shutdown:bool ->
  ?ipv6:bool ->
  ?monitoring:bool ->
  ?resize_disk:bool ->
  ?ssh_keys:string list ->
  ?tags:string list ->
  ?user_data:string ->
  ?timeouts:digitalocean_droplet__timeouts ->
  image:string ->
  name:string ->
  size:string ->
  string ->
  unit
