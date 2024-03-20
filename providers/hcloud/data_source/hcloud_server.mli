(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_server

val hcloud_server :
  ?id:float prop ->
  ?name:string prop ->
  ?placement_group_id:float prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  unit ->
  hcloud_server

val yojson_of_hcloud_server : hcloud_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_window : string prop;
  backups : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  firewall_ids : float list prop;
  id : float prop;
  image : string prop;
  ipv4_address : string prop;
  ipv6_address : string prop;
  ipv6_network : string prop;
  iso : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  placement_group_id : float prop;
  primary_disk_size : float prop;
  rebuild_protection : bool prop;
  rescue : string prop;
  selector : string prop;
  server_type : string prop;
  status : string prop;
  with_selector : string prop;
  with_status : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?name:string prop ->
  ?placement_group_id:float prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t

val make :
  ?id:float prop ->
  ?name:string prop ->
  ?placement_group_id:float prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t Tf_core.resource
