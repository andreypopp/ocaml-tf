(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gkeonprem_vmware_cluster__anti_affinity_groups
type google_gkeonprem_vmware_cluster__authorization__admin_users
type google_gkeonprem_vmware_cluster__authorization
type google_gkeonprem_vmware_cluster__auto_repair_config

type google_gkeonprem_vmware_cluster__control_plane_node__auto_resize_config

type google_gkeonprem_vmware_cluster__control_plane_node__vsphere_config = {
  datastore : string;  (** datastore *)
  storage_policy_name : string;  (** storage_policy_name *)
}

type google_gkeonprem_vmware_cluster__control_plane_node
type google_gkeonprem_vmware_cluster__dataplane_v2
type google_gkeonprem_vmware_cluster__load_balancer__f5_config
type google_gkeonprem_vmware_cluster__load_balancer__manual_lb_config

type google_gkeonprem_vmware_cluster__load_balancer__metal_lb_config__address_pools

type google_gkeonprem_vmware_cluster__load_balancer__metal_lb_config
type google_gkeonprem_vmware_cluster__load_balancer__vip_config
type google_gkeonprem_vmware_cluster__load_balancer

type google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config__control_plane_ip_block__ips

type google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config__control_plane_ip_block

type google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config

type google_gkeonprem_vmware_cluster__network_config__dhcp_ip_config
type google_gkeonprem_vmware_cluster__network_config__host_config

type google_gkeonprem_vmware_cluster__network_config__static_ip_config__ip_blocks__ips

type google_gkeonprem_vmware_cluster__network_config__static_ip_config__ip_blocks

type google_gkeonprem_vmware_cluster__network_config__static_ip_config
type google_gkeonprem_vmware_cluster__network_config
type google_gkeonprem_vmware_cluster__storage
type google_gkeonprem_vmware_cluster__timeouts
type google_gkeonprem_vmware_cluster__upgrade_policy
type google_gkeonprem_vmware_cluster__vcenter

type google_gkeonprem_vmware_cluster__fleet = {
  membership : string;  (** membership *)
}

type google_gkeonprem_vmware_cluster__status__conditions = {
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}

type google_gkeonprem_vmware_cluster__status = {
  conditions :
    google_gkeonprem_vmware_cluster__status__conditions list;
      (** conditions *)
  error_message : string;  (** error_message *)
}

type google_gkeonprem_vmware_cluster__validation_check__status__result = {
  category : string;  (** category *)
  description : string;  (** description *)
  details : string;  (** details *)
  options : string;  (** options *)
  reason : string;  (** reason *)
}

type google_gkeonprem_vmware_cluster__validation_check__status = {
  result :
    google_gkeonprem_vmware_cluster__validation_check__status__result
    list;
      (** result *)
}

type google_gkeonprem_vmware_cluster__validation_check = {
  options : string;  (** options *)
  scenario : string;  (** scenario *)
  status :
    google_gkeonprem_vmware_cluster__validation_check__status list;
      (** status *)
}

type google_gkeonprem_vmware_cluster

val google_gkeonprem_vmware_cluster :
  ?annotations:(string * string) list ->
  ?description:string ->
  ?enable_control_plane_v2:bool ->
  ?id:string ->
  ?project:string ->
  ?vm_tracking_enabled:bool ->
  ?timeouts:google_gkeonprem_vmware_cluster__timeouts ->
  admin_cluster_membership:string ->
  location:string ->
  name:string ->
  on_prem_version:string ->
  anti_affinity_groups:
    google_gkeonprem_vmware_cluster__anti_affinity_groups list ->
  authorization:google_gkeonprem_vmware_cluster__authorization list ->
  auto_repair_config:
    google_gkeonprem_vmware_cluster__auto_repair_config list ->
  control_plane_node:
    google_gkeonprem_vmware_cluster__control_plane_node list ->
  dataplane_v2:google_gkeonprem_vmware_cluster__dataplane_v2 list ->
  load_balancer:google_gkeonprem_vmware_cluster__load_balancer list ->
  network_config:google_gkeonprem_vmware_cluster__network_config list ->
  storage:google_gkeonprem_vmware_cluster__storage list ->
  upgrade_policy:google_gkeonprem_vmware_cluster__upgrade_policy list ->
  vcenter:google_gkeonprem_vmware_cluster__vcenter list ->
  string ->
  unit
