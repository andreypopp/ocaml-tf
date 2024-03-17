(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_server__network
type hcloud_server__public_net
type hcloud_server__timeouts
type hcloud_server

type t = private {
  allow_deprecated_images : bool prop;
  backup_window : string prop;
  backups : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  firewall_ids : float list prop;
  id : string prop;
  ignore_remote_firewall_ids : bool prop;
  image : string prop;
  ipv4_address : string prop;
  ipv6_address : string prop;
  ipv6_network : string prop;
  iso : string prop;
  keep_disk : bool prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  placement_group_id : float prop;
  primary_disk_size : float prop;
  rebuild_protection : bool prop;
  rescue : string prop;
  server_type : string prop;
  shutdown_before_deletion : bool prop;
  ssh_keys : string list prop;
  status : string prop;
  user_data : string prop;
}

val hcloud_server :
  ?allow_deprecated_images:bool prop ->
  ?backups:bool prop ->
  ?datacenter:string prop ->
  ?delete_protection:bool prop ->
  ?firewall_ids:float prop list ->
  ?id:string prop ->
  ?ignore_remote_firewall_ids:bool prop ->
  ?image:string prop ->
  ?iso:string prop ->
  ?keep_disk:bool prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?placement_group_id:float prop ->
  ?rebuild_protection:bool prop ->
  ?rescue:string prop ->
  ?shutdown_before_deletion:bool prop ->
  ?ssh_keys:string prop list ->
  ?user_data:string prop ->
  ?timeouts:hcloud_server__timeouts ->
  name:string prop ->
  server_type:string prop ->
  network:hcloud_server__network list ->
  public_net:hcloud_server__public_net list ->
  string ->
  t
