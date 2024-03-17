(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gkeonprem_bare_metal_cluster__binary_authorization
type google_gkeonprem_bare_metal_cluster__cluster_operations

type google_gkeonprem_bare_metal_cluster__control_plane__api_server_args

type google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config__node_configs

type google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config__taints

type google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config

type google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config

type google_gkeonprem_bare_metal_cluster__control_plane

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__address_pools

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__bgp_peer_configs

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config

type google_gkeonprem_bare_metal_cluster__load_balancer__manual_lb_config

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__address_pools

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config

type google_gkeonprem_bare_metal_cluster__load_balancer__port_config
type google_gkeonprem_bare_metal_cluster__load_balancer__vip_config
type google_gkeonprem_bare_metal_cluster__load_balancer
type google_gkeonprem_bare_metal_cluster__maintenance_config

type google_gkeonprem_bare_metal_cluster__network_config__island_mode_cidr

type google_gkeonprem_bare_metal_cluster__network_config__multiple_network_interfaces_config

type google_gkeonprem_bare_metal_cluster__network_config__sr_iov_config

type google_gkeonprem_bare_metal_cluster__network_config
type google_gkeonprem_bare_metal_cluster__node_access_config
type google_gkeonprem_bare_metal_cluster__node_config
type google_gkeonprem_bare_metal_cluster__os_environment_config
type google_gkeonprem_bare_metal_cluster__proxy

type google_gkeonprem_bare_metal_cluster__security_config__authorization__admin_users

type google_gkeonprem_bare_metal_cluster__security_config__authorization

type google_gkeonprem_bare_metal_cluster__security_config

type google_gkeonprem_bare_metal_cluster__storage__lvp_node_mounts_config

type google_gkeonprem_bare_metal_cluster__storage__lvp_share_config__lvp_config

type google_gkeonprem_bare_metal_cluster__storage__lvp_share_config
type google_gkeonprem_bare_metal_cluster__storage
type google_gkeonprem_bare_metal_cluster__timeouts
type google_gkeonprem_bare_metal_cluster__upgrade_policy

type google_gkeonprem_bare_metal_cluster__fleet = {
  membership : string;  (** membership *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__status__conditions = {
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__status = {
  conditions :
    google_gkeonprem_bare_metal_cluster__status__conditions list;
      (** conditions *)
  error_message : string;  (** error_message *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__validation_check__status__result = {
  category : string;  (** category *)
  description : string;  (** description *)
  details : string;  (** details *)
  options : string;  (** options *)
  reason : string;  (** reason *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__validation_check__status = {
  result :
    google_gkeonprem_bare_metal_cluster__validation_check__status__result
    list;
      (** result *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__validation_check = {
  options : string;  (** options *)
  scenario : string;  (** scenario *)
  status :
    google_gkeonprem_bare_metal_cluster__validation_check__status
    list;
      (** status *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster

val google_gkeonprem_bare_metal_cluster :
  ?annotations:(string * string) list ->
  ?description:string ->
  ?timeouts:google_gkeonprem_bare_metal_cluster__timeouts ->
  admin_cluster_membership:string ->
  bare_metal_version:string ->
  location:string ->
  name:string ->
  binary_authorization:
    google_gkeonprem_bare_metal_cluster__binary_authorization list ->
  cluster_operations:
    google_gkeonprem_bare_metal_cluster__cluster_operations list ->
  control_plane:
    google_gkeonprem_bare_metal_cluster__control_plane list ->
  load_balancer:
    google_gkeonprem_bare_metal_cluster__load_balancer list ->
  maintenance_config:
    google_gkeonprem_bare_metal_cluster__maintenance_config list ->
  network_config:
    google_gkeonprem_bare_metal_cluster__network_config list ->
  node_access_config:
    google_gkeonprem_bare_metal_cluster__node_access_config list ->
  node_config:google_gkeonprem_bare_metal_cluster__node_config list ->
  os_environment_config:
    google_gkeonprem_bare_metal_cluster__os_environment_config list ->
  proxy:google_gkeonprem_bare_metal_cluster__proxy list ->
  security_config:
    google_gkeonprem_bare_metal_cluster__security_config list ->
  storage:google_gkeonprem_bare_metal_cluster__storage list ->
  upgrade_policy:
    google_gkeonprem_bare_metal_cluster__upgrade_policy list ->
  string ->
  unit
