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

type cluster_operations

val cluster_operations :
  ?enable_application_logs:bool prop -> unit -> cluster_operations

type control_plane__api_server_args

val control_plane__api_server_args :
  argument:string prop ->
  value:string prop ->
  unit ->
  control_plane__api_server_args

type control_plane__control_plane_node_pool_config__node_pool_config__node_configs

val control_plane__control_plane_node_pool_config__node_pool_config__node_configs :
  ?labels:(string * string prop) list ->
  ?node_ip:string prop ->
  unit ->
  control_plane__control_plane_node_pool_config__node_pool_config__node_configs

type control_plane__control_plane_node_pool_config__node_pool_config__taints

val control_plane__control_plane_node_pool_config__node_pool_config__taints :
  ?effect:string prop ->
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  control_plane__control_plane_node_pool_config__node_pool_config__taints

type control_plane__control_plane_node_pool_config__node_pool_config

val control_plane__control_plane_node_pool_config__node_pool_config :
  ?labels:(string * string prop) list ->
  ?operating_system:string prop ->
  node_configs:
    control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    list ->
  taints:
    control_plane__control_plane_node_pool_config__node_pool_config__taints
    list ->
  unit ->
  control_plane__control_plane_node_pool_config__node_pool_config

type control_plane__control_plane_node_pool_config

val control_plane__control_plane_node_pool_config :
  node_pool_config:
    control_plane__control_plane_node_pool_config__node_pool_config
    list ->
  unit ->
  control_plane__control_plane_node_pool_config

type control_plane

val control_plane :
  api_server_args:control_plane__api_server_args list ->
  control_plane_node_pool_config:
    control_plane__control_plane_node_pool_config list ->
  unit ->
  control_plane

type load_balancer__manual_lb_config

val load_balancer__manual_lb_config :
  enabled:bool prop -> unit -> load_balancer__manual_lb_config

type load_balancer__port_config

val load_balancer__port_config :
  control_plane_load_balancer_port:float prop ->
  unit ->
  load_balancer__port_config

type load_balancer__vip_config

val load_balancer__vip_config :
  control_plane_vip:string prop -> unit -> load_balancer__vip_config

type load_balancer

val load_balancer :
  manual_lb_config:load_balancer__manual_lb_config list ->
  port_config:load_balancer__port_config list ->
  vip_config:load_balancer__vip_config list ->
  unit ->
  load_balancer

type maintenance_config

val maintenance_config :
  maintenance_address_cidr_blocks:string prop list ->
  unit ->
  maintenance_config

type network_config__island_mode_cidr

val network_config__island_mode_cidr :
  pod_address_cidr_blocks:string prop list ->
  service_address_cidr_blocks:string prop list ->
  unit ->
  network_config__island_mode_cidr

type network_config

val network_config :
  island_mode_cidr:network_config__island_mode_cidr list ->
  unit ->
  network_config

type node_access_config

val node_access_config :
  ?login_user:string prop -> unit -> node_access_config

type node_config

val node_config :
  ?max_pods_per_node:float prop -> unit -> node_config

type proxy

val proxy :
  ?no_proxy:string prop list -> uri:string prop -> unit -> proxy

type security_config__authorization__admin_users

val security_config__authorization__admin_users :
  username:string prop ->
  unit ->
  security_config__authorization__admin_users

type security_config__authorization

val security_config__authorization :
  admin_users:security_config__authorization__admin_users list ->
  unit ->
  security_config__authorization

type security_config

val security_config :
  authorization:security_config__authorization list ->
  unit ->
  security_config

type storage__lvp_node_mounts_config

val storage__lvp_node_mounts_config :
  path:string prop ->
  storage_class:string prop ->
  unit ->
  storage__lvp_node_mounts_config

type storage__lvp_share_config__lvp_config

val storage__lvp_share_config__lvp_config :
  path:string prop ->
  storage_class:string prop ->
  unit ->
  storage__lvp_share_config__lvp_config

type storage__lvp_share_config

val storage__lvp_share_config :
  ?shared_path_pv_count:float prop ->
  lvp_config:storage__lvp_share_config__lvp_config list ->
  unit ->
  storage__lvp_share_config

type storage

val storage :
  lvp_node_mounts_config:storage__lvp_node_mounts_config list ->
  lvp_share_config:storage__lvp_share_config list ->
  unit ->
  storage

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gkeonprem_bare_metal_admin_cluster

val google_gkeonprem_bare_metal_admin_cluster :
  ?annotations:(string * string prop) list ->
  ?bare_metal_version:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  cluster_operations:cluster_operations list ->
  control_plane:control_plane list ->
  load_balancer:load_balancer list ->
  maintenance_config:maintenance_config list ->
  network_config:network_config list ->
  node_access_config:node_access_config list ->
  node_config:node_config list ->
  proxy:proxy list ->
  security_config:security_config list ->
  storage:storage list ->
  unit ->
  google_gkeonprem_bare_metal_admin_cluster

val yojson_of_google_gkeonprem_bare_metal_admin_cluster :
  google_gkeonprem_bare_metal_admin_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : (string * string) list prop;
  bare_metal_version : string prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  fleet : fleet list prop;
  id : string prop;
  local_name : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
  validation_check : validation_check list prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?bare_metal_version:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  cluster_operations:cluster_operations list ->
  control_plane:control_plane list ->
  load_balancer:load_balancer list ->
  maintenance_config:maintenance_config list ->
  network_config:network_config list ->
  node_access_config:node_access_config list ->
  node_config:node_config list ->
  proxy:proxy list ->
  security_config:security_config list ->
  storage:storage list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?bare_metal_version:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  cluster_operations:cluster_operations list ->
  control_plane:control_plane list ->
  load_balancer:load_balancer list ->
  maintenance_config:maintenance_config list ->
  network_config:network_config list ->
  node_access_config:node_access_config list ->
  node_config:node_config list ->
  proxy:proxy list ->
  security_config:security_config list ->
  storage:storage list ->
  string ->
  t Tf_core.resource
