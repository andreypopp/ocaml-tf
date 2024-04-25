(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type fleet = { membership : string prop  (** membership *) }

type status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}

type status = {
  conditions : status__conditions list;  (** conditions *)
  error_message : string prop;  (** error_message *)
}

type validation_check__status__result = {
  category : string prop;  (** category *)
  description : string prop;  (** description *)
  details : string prop;  (** details *)
  options : string prop;  (** options *)
  reason : string prop;  (** reason *)
}

type validation_check__status = {
  result : validation_check__status__result list;  (** result *)
}

type validation_check = {
  options : string prop;  (** options *)
  scenario : string prop;  (** scenario *)
  status : validation_check__status list;  (** status *)
}

type anti_affinity_groups

val anti_affinity_groups :
  aag_config_disabled:bool prop -> unit -> anti_affinity_groups

type authorization__admin_users

val authorization__admin_users :
  username:string prop -> unit -> authorization__admin_users

type authorization

val authorization :
  ?admin_users:authorization__admin_users list ->
  unit ->
  authorization

type auto_repair_config

val auto_repair_config :
  enabled:bool prop -> unit -> auto_repair_config

type control_plane_node__vsphere_config = {
  datastore : string prop;  (** datastore *)
  storage_policy_name : string prop;  (** storage_policy_name *)
}

type control_plane_node__auto_resize_config

val control_plane_node__auto_resize_config :
  enabled:bool prop -> unit -> control_plane_node__auto_resize_config

type control_plane_node

val control_plane_node :
  ?cpus:float prop ->
  ?memory:float prop ->
  ?replicas:float prop ->
  ?auto_resize_config:control_plane_node__auto_resize_config list ->
  unit ->
  control_plane_node

type dataplane_v2

val dataplane_v2 :
  ?advanced_networking:bool prop ->
  ?dataplane_v2_enabled:bool prop ->
  ?windows_dataplane_v2_enabled:bool prop ->
  unit ->
  dataplane_v2

type load_balancer__f5_config

val load_balancer__f5_config :
  ?address:string prop ->
  ?partition:string prop ->
  ?snat_pool:string prop ->
  unit ->
  load_balancer__f5_config

type load_balancer__manual_lb_config

val load_balancer__manual_lb_config :
  ?control_plane_node_port:float prop ->
  ?ingress_http_node_port:float prop ->
  ?ingress_https_node_port:float prop ->
  ?konnectivity_server_node_port:float prop ->
  unit ->
  load_balancer__manual_lb_config

type load_balancer__metal_lb_config__address_pools

val load_balancer__metal_lb_config__address_pools :
  ?avoid_buggy_ips:bool prop ->
  ?manual_assign:bool prop ->
  addresses:string prop list ->
  pool:string prop ->
  unit ->
  load_balancer__metal_lb_config__address_pools

type load_balancer__metal_lb_config

val load_balancer__metal_lb_config :
  address_pools:load_balancer__metal_lb_config__address_pools list ->
  unit ->
  load_balancer__metal_lb_config

type load_balancer__vip_config

val load_balancer__vip_config :
  ?control_plane_vip:string prop ->
  ?ingress_vip:string prop ->
  unit ->
  load_balancer__vip_config

type load_balancer

val load_balancer :
  ?f5_config:load_balancer__f5_config list ->
  ?manual_lb_config:load_balancer__manual_lb_config list ->
  ?metal_lb_config:load_balancer__metal_lb_config list ->
  ?vip_config:load_balancer__vip_config list ->
  unit ->
  load_balancer

type network_config__control_plane_v2_config__control_plane_ip_block__ips

val network_config__control_plane_v2_config__control_plane_ip_block__ips :
  ?hostname:string prop ->
  ?ip:string prop ->
  unit ->
  network_config__control_plane_v2_config__control_plane_ip_block__ips

type network_config__control_plane_v2_config__control_plane_ip_block

val network_config__control_plane_v2_config__control_plane_ip_block :
  ?gateway:string prop ->
  ?netmask:string prop ->
  ?ips:
    network_config__control_plane_v2_config__control_plane_ip_block__ips
    list ->
  unit ->
  network_config__control_plane_v2_config__control_plane_ip_block

type network_config__control_plane_v2_config

val network_config__control_plane_v2_config :
  ?control_plane_ip_block:
    network_config__control_plane_v2_config__control_plane_ip_block
    list ->
  unit ->
  network_config__control_plane_v2_config

type network_config__dhcp_ip_config

val network_config__dhcp_ip_config :
  enabled:bool prop -> unit -> network_config__dhcp_ip_config

type network_config__host_config

val network_config__host_config :
  ?dns_search_domains:string prop list ->
  ?dns_servers:string prop list ->
  ?ntp_servers:string prop list ->
  unit ->
  network_config__host_config

type network_config__static_ip_config__ip_blocks__ips

val network_config__static_ip_config__ip_blocks__ips :
  ?hostname:string prop ->
  ip:string prop ->
  unit ->
  network_config__static_ip_config__ip_blocks__ips

type network_config__static_ip_config__ip_blocks

val network_config__static_ip_config__ip_blocks :
  gateway:string prop ->
  netmask:string prop ->
  ips:network_config__static_ip_config__ip_blocks__ips list ->
  unit ->
  network_config__static_ip_config__ip_blocks

type network_config__static_ip_config

val network_config__static_ip_config :
  ip_blocks:network_config__static_ip_config__ip_blocks list ->
  unit ->
  network_config__static_ip_config

type network_config

val network_config :
  ?control_plane_v2_config:
    network_config__control_plane_v2_config list ->
  ?dhcp_ip_config:network_config__dhcp_ip_config list ->
  ?host_config:network_config__host_config list ->
  ?static_ip_config:network_config__static_ip_config list ->
  pod_address_cidr_blocks:string prop list ->
  service_address_cidr_blocks:string prop list ->
  unit ->
  network_config

type storage

val storage : vsphere_csi_disabled:bool prop -> unit -> storage

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type upgrade_policy

val upgrade_policy :
  ?control_plane_only:bool prop -> unit -> upgrade_policy

type vcenter

val vcenter :
  ?ca_cert_data:string prop ->
  ?cluster:string prop ->
  ?datacenter:string prop ->
  ?datastore:string prop ->
  ?folder:string prop ->
  ?resource_pool:string prop ->
  ?storage_policy_name:string prop ->
  unit ->
  vcenter

type google_gkeonprem_vmware_cluster

val google_gkeonprem_vmware_cluster :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?enable_control_plane_v2:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?vm_tracking_enabled:bool prop ->
  ?anti_affinity_groups:anti_affinity_groups list ->
  ?authorization:authorization list ->
  ?auto_repair_config:auto_repair_config list ->
  ?dataplane_v2:dataplane_v2 list ->
  ?load_balancer:load_balancer list ->
  ?network_config:network_config list ->
  ?storage:storage list ->
  ?timeouts:timeouts ->
  ?upgrade_policy:upgrade_policy list ->
  ?vcenter:vcenter list ->
  admin_cluster_membership:string prop ->
  location:string prop ->
  name:string prop ->
  on_prem_version:string prop ->
  control_plane_node:control_plane_node list ->
  unit ->
  google_gkeonprem_vmware_cluster

val yojson_of_google_gkeonprem_vmware_cluster :
  google_gkeonprem_vmware_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_cluster_membership : string prop;
  annotations : (string * string) list prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  enable_control_plane_v2 : bool prop;
  endpoint : string prop;
  etag : string prop;
  fleet : fleet list prop;
  id : string prop;
  local_name : string prop;
  location : string prop;
  name : string prop;
  on_prem_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
  validation_check : validation_check list prop;
  vm_tracking_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?enable_control_plane_v2:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?vm_tracking_enabled:bool prop ->
  ?anti_affinity_groups:anti_affinity_groups list ->
  ?authorization:authorization list ->
  ?auto_repair_config:auto_repair_config list ->
  ?dataplane_v2:dataplane_v2 list ->
  ?load_balancer:load_balancer list ->
  ?network_config:network_config list ->
  ?storage:storage list ->
  ?timeouts:timeouts ->
  ?upgrade_policy:upgrade_policy list ->
  ?vcenter:vcenter list ->
  admin_cluster_membership:string prop ->
  location:string prop ->
  name:string prop ->
  on_prem_version:string prop ->
  control_plane_node:control_plane_node list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?enable_control_plane_v2:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?vm_tracking_enabled:bool prop ->
  ?anti_affinity_groups:anti_affinity_groups list ->
  ?authorization:authorization list ->
  ?auto_repair_config:auto_repair_config list ->
  ?dataplane_v2:dataplane_v2 list ->
  ?load_balancer:load_balancer list ->
  ?network_config:network_config list ->
  ?storage:storage list ->
  ?timeouts:timeouts ->
  ?upgrade_policy:upgrade_policy list ->
  ?vcenter:vcenter list ->
  admin_cluster_membership:string prop ->
  location:string prop ->
  name:string prop ->
  on_prem_version:string prop ->
  control_plane_node:control_plane_node list ->
  string ->
  t Tf_core.resource
