(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gkeonprem_bare_metal_admin_cluster__cluster_operations

type google_gkeonprem_bare_metal_admin_cluster__control_plane__api_server_args

type google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config__node_configs

type google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config__taints

type google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config

type google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config

type google_gkeonprem_bare_metal_admin_cluster__control_plane

type google_gkeonprem_bare_metal_admin_cluster__load_balancer__manual_lb_config

type google_gkeonprem_bare_metal_admin_cluster__load_balancer__port_config

type google_gkeonprem_bare_metal_admin_cluster__load_balancer__vip_config

type google_gkeonprem_bare_metal_admin_cluster__load_balancer
type google_gkeonprem_bare_metal_admin_cluster__maintenance_config

type google_gkeonprem_bare_metal_admin_cluster__network_config__island_mode_cidr

type google_gkeonprem_bare_metal_admin_cluster__network_config
type google_gkeonprem_bare_metal_admin_cluster__node_access_config
type google_gkeonprem_bare_metal_admin_cluster__node_config
type google_gkeonprem_bare_metal_admin_cluster__proxy

type google_gkeonprem_bare_metal_admin_cluster__security_config__authorization__admin_users

type google_gkeonprem_bare_metal_admin_cluster__security_config__authorization

type google_gkeonprem_bare_metal_admin_cluster__security_config

type google_gkeonprem_bare_metal_admin_cluster__storage__lvp_node_mounts_config

type google_gkeonprem_bare_metal_admin_cluster__storage__lvp_share_config__lvp_config

type google_gkeonprem_bare_metal_admin_cluster__storage__lvp_share_config

type google_gkeonprem_bare_metal_admin_cluster__storage
type google_gkeonprem_bare_metal_admin_cluster__timeouts

type google_gkeonprem_bare_metal_admin_cluster__fleet = {
  membership : string prop;  (** membership *)
}

type google_gkeonprem_bare_metal_admin_cluster__status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_gkeonprem_bare_metal_admin_cluster__status = {
  conditions :
    google_gkeonprem_bare_metal_admin_cluster__status__conditions
    list;
      (** conditions *)
  error_message : string prop;  (** error_message *)
}

type google_gkeonprem_bare_metal_admin_cluster__validation_check__status__result = {
  category : string prop;  (** category *)
  description : string prop;  (** description *)
  details : string prop;  (** details *)
  options : string prop;  (** options *)
  reason : string prop;  (** reason *)
}

type google_gkeonprem_bare_metal_admin_cluster__validation_check__status = {
  result :
    google_gkeonprem_bare_metal_admin_cluster__validation_check__status__result
    list;
      (** result *)
}

type google_gkeonprem_bare_metal_admin_cluster__validation_check = {
  options : string prop;  (** options *)
  scenario : string prop;  (** scenario *)
  status :
    google_gkeonprem_bare_metal_admin_cluster__validation_check__status
    list;
      (** status *)
}

type google_gkeonprem_bare_metal_admin_cluster

type t = private {
  annotations : (string * string) list prop;
  bare_metal_version : string prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  fleet : google_gkeonprem_bare_metal_admin_cluster__fleet list prop;
  id : string prop;
  local_name : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status :
    google_gkeonprem_bare_metal_admin_cluster__status list prop;
  uid : string prop;
  update_time : string prop;
  validation_check :
    google_gkeonprem_bare_metal_admin_cluster__validation_check list
    prop;
}

val google_gkeonprem_bare_metal_admin_cluster :
  ?annotations:(string * string prop) list ->
  ?bare_metal_version:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_gkeonprem_bare_metal_admin_cluster__timeouts ->
  location:string prop ->
  name:string prop ->
  cluster_operations:
    google_gkeonprem_bare_metal_admin_cluster__cluster_operations
    list ->
  control_plane:
    google_gkeonprem_bare_metal_admin_cluster__control_plane list ->
  load_balancer:
    google_gkeonprem_bare_metal_admin_cluster__load_balancer list ->
  maintenance_config:
    google_gkeonprem_bare_metal_admin_cluster__maintenance_config
    list ->
  network_config:
    google_gkeonprem_bare_metal_admin_cluster__network_config list ->
  node_access_config:
    google_gkeonprem_bare_metal_admin_cluster__node_access_config
    list ->
  node_config:
    google_gkeonprem_bare_metal_admin_cluster__node_config list ->
  proxy:google_gkeonprem_bare_metal_admin_cluster__proxy list ->
  security_config:
    google_gkeonprem_bare_metal_admin_cluster__security_config list ->
  storage:google_gkeonprem_bare_metal_admin_cluster__storage list ->
  string ->
  t
