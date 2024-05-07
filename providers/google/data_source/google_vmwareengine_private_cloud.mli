(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcx = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type management_cluster__node_type_configs = {
  custom_core_count : float prop;  (** custom_core_count *)
  node_count : float prop;  (** node_count *)
  node_type_id : string prop;  (** node_type_id *)
}

type management_cluster = {
  cluster_id : string prop;  (** cluster_id *)
  node_type_configs : management_cluster__node_type_configs list;
      (** node_type_configs *)
}

type network_config = {
  dns_server_ip : string prop;  (** dns_server_ip *)
  management_cidr : string prop;  (** management_cidr *)
  management_ip_address_layout_version : float prop;
      (** management_ip_address_layout_version *)
  vmware_engine_network : string prop;  (** vmware_engine_network *)
  vmware_engine_network_canonical : string prop;
      (** vmware_engine_network_canonical *)
}

type nsx = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type vcenter = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type google_vmwareengine_private_cloud

val google_vmwareengine_private_cloud :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_vmwareengine_private_cloud

val yojson_of_google_vmwareengine_private_cloud :
  google_vmwareengine_private_cloud -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  hcx : hcx list prop;
  id : string prop;
  location : string prop;
  management_cluster : management_cluster list prop;
  name : string prop;
  network_config : network_config list prop;
  nsx : nsx list prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vcenter : vcenter list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
