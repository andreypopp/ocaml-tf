(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network

val network :
  ?alias_ips:string prop list ->
  ?ip:string prop ->
  network_id:float prop ->
  unit ->
  network

type public_net

val public_net :
  ?ipv4:float prop ->
  ?ipv4_enabled:bool prop ->
  ?ipv6:float prop ->
  ?ipv6_enabled:bool prop ->
  unit ->
  public_net

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type hcloud_server

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
  ?timeouts:timeouts ->
  name:string prop ->
  server_type:string prop ->
  network:network list ->
  public_net:public_net list ->
  unit ->
  hcloud_server

val yojson_of_hcloud_server : hcloud_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  name:string prop ->
  server_type:string prop ->
  network:network list ->
  public_net:public_net list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  name:string prop ->
  server_type:string prop ->
  network:network list ->
  public_net:public_net list ->
  string ->
  t Tf_core.resource
