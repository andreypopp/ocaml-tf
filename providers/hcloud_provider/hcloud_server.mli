(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_server__network
type hcloud_server__public_net
type hcloud_server__timeouts
type hcloud_server

val hcloud_server :
  ?allow_deprecated_images:bool ->
  ?backups:bool ->
  ?delete_protection:bool ->
  ?ignore_remote_firewall_ids:bool ->
  ?image:string ->
  ?iso:string ->
  ?keep_disk:bool ->
  ?labels:(string * string) list ->
  ?placement_group_id:float ->
  ?rebuild_protection:bool ->
  ?rescue:string ->
  ?shutdown_before_deletion:bool ->
  ?ssh_keys:string list ->
  ?user_data:string ->
  ?timeouts:hcloud_server__timeouts ->
  name:string ->
  server_type:string ->
  network:hcloud_server__network list ->
  public_net:hcloud_server__public_net list ->
  string ->
  unit
