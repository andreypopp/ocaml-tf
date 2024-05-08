(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type servers = {
  backup_window : string prop;  (** backup_window *)
  backups : bool prop;  (** backups *)
  datacenter : string prop;  (** datacenter *)
  delete_protection : bool prop;  (** delete_protection *)
  firewall_ids : float prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** firewall_ids *)
  id : float prop;  (** id *)
  image : string prop;  (** image *)
  ipv4_address : string prop;  (** ipv4_address *)
  ipv6_address : string prop;  (** ipv6_address *)
  ipv6_network : string prop;  (** ipv6_network *)
  iso : string prop;  (** iso *)
  labels : (string * string prop) list;  (** labels *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  placement_group_id : float prop;  (** placement_group_id *)
  primary_disk_size : float prop;  (** primary_disk_size *)
  rebuild_protection : bool prop;  (** rebuild_protection *)
  rescue : string prop;  (** rescue *)
  server_type : string prop;  (** server_type *)
  status : string prop;  (** status *)
}

type hcloud_servers

val hcloud_servers :
  ?id:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  unit ->
  hcloud_servers

val yojson_of_hcloud_servers : hcloud_servers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  servers : servers list prop;
  with_selector : string prop;
  with_status : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t Tf_core.resource
