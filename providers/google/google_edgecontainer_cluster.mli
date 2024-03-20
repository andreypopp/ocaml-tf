(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type maintenance_events = {
  create_time : string prop;  (** create_time *)
  end_time : string prop;  (** end_time *)
  operation : string prop;  (** operation *)
  schedule : string prop;  (** schedule *)
  start_time : string prop;  (** start_time *)
  state : string prop;  (** state *)
  target_version : string prop;  (** target_version *)
  type_ : string prop; [@key "type"]  (** type *)
  update_time : string prop;  (** update_time *)
  uuid : string prop;  (** uuid *)
}

[@@@deriving.end]

type authorization__admin_users

val authorization__admin_users :
  username:string prop -> unit -> authorization__admin_users

type authorization

val authorization :
  admin_users:authorization__admin_users list ->
  unit ->
  authorization

type control_plane__local

val control_plane__local :
  ?machine_filter:string prop ->
  ?node_count:float prop ->
  ?node_location:string prop ->
  ?shared_deployment_policy:string prop ->
  unit ->
  control_plane__local

type control_plane__remote

val control_plane__remote :
  ?node_location:string prop -> unit -> control_plane__remote

type control_plane

val control_plane :
  local:control_plane__local list ->
  remote:control_plane__remote list ->
  unit ->
  control_plane

type control_plane_encryption__kms_status = {
  code : float prop;  (** code *)
  message : string prop;  (** message *)
}

[@@@deriving.end]

type control_plane_encryption

val control_plane_encryption :
  ?kms_key:string prop -> unit -> control_plane_encryption

type fleet

val fleet : project:string prop -> unit -> fleet

type maintenance_policy__window__recurring_window__window

val maintenance_policy__window__recurring_window__window :
  ?end_time:string prop ->
  ?start_time:string prop ->
  unit ->
  maintenance_policy__window__recurring_window__window

type maintenance_policy__window__recurring_window

val maintenance_policy__window__recurring_window :
  ?recurrence:string prop ->
  window:maintenance_policy__window__recurring_window__window list ->
  unit ->
  maintenance_policy__window__recurring_window

type maintenance_policy__window

val maintenance_policy__window :
  recurring_window:maintenance_policy__window__recurring_window list ->
  unit ->
  maintenance_policy__window

type maintenance_policy

val maintenance_policy :
  window:maintenance_policy__window list ->
  unit ->
  maintenance_policy

type networking

val networking :
  ?cluster_ipv6_cidr_blocks:string prop list ->
  ?services_ipv6_cidr_blocks:string prop list ->
  cluster_ipv4_cidr_blocks:string prop list ->
  services_ipv4_cidr_blocks:string prop list ->
  unit ->
  networking

type system_addons_config__ingress

val system_addons_config__ingress :
  ?disabled:bool prop ->
  ?ipv4_vip:string prop ->
  unit ->
  system_addons_config__ingress

type system_addons_config

val system_addons_config :
  ingress:system_addons_config__ingress list ->
  unit ->
  system_addons_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_edgecontainer_cluster

val google_edgecontainer_cluster :
  ?default_max_pods_per_node:float prop ->
  ?external_load_balancer_ipv4_address_pools:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?release_channel:string prop ->
  ?target_version:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  control_plane_encryption:control_plane_encryption list ->
  fleet:fleet list ->
  maintenance_policy:maintenance_policy list ->
  networking:networking list ->
  system_addons_config:system_addons_config list ->
  unit ->
  google_edgecontainer_cluster

val yojson_of_google_edgecontainer_cluster :
  google_edgecontainer_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_ca_certificate : string prop;
  control_plane_version : string prop;
  create_time : string prop;
  default_max_pods_per_node : float prop;
  effective_labels : (string * string) list prop;
  endpoint : string prop;
  external_load_balancer_ipv4_address_pools : string list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maintenance_events : maintenance_events list prop;
  name : string prop;
  node_version : string prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  status : string prop;
  target_version : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_max_pods_per_node:float prop ->
  ?external_load_balancer_ipv4_address_pools:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?release_channel:string prop ->
  ?target_version:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  control_plane_encryption:control_plane_encryption list ->
  fleet:fleet list ->
  maintenance_policy:maintenance_policy list ->
  networking:networking list ->
  system_addons_config:system_addons_config list ->
  string ->
  t

val make :
  ?default_max_pods_per_node:float prop ->
  ?external_load_balancer_ipv4_address_pools:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?release_channel:string prop ->
  ?target_version:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  control_plane_encryption:control_plane_encryption list ->
  fleet:fleet list ->
  maintenance_policy:maintenance_policy list ->
  networking:networking list ->
  system_addons_config:system_addons_config list ->
  string ->
  t Tf_core.resource
