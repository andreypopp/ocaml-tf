(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscaling

val autoscaling :
  ?location_policy:string prop ->
  ?max_node_count:float prop ->
  ?min_node_count:float prop ->
  ?total_max_node_count:float prop ->
  ?total_min_node_count:float prop ->
  unit ->
  autoscaling

type management

val management :
  ?auto_repair:bool prop ->
  ?auto_upgrade:bool prop ->
  unit ->
  management

type network_config__network_performance_config

val network_config__network_performance_config :
  total_egress_bandwidth_tier:string prop ->
  unit ->
  network_config__network_performance_config

type network_config__pod_cidr_overprovision_config

val network_config__pod_cidr_overprovision_config :
  disabled:bool prop ->
  unit ->
  network_config__pod_cidr_overprovision_config

type network_config

val network_config :
  ?create_pod_range:bool prop ->
  ?enable_private_nodes:bool prop ->
  ?pod_ipv4_cidr_block:string prop ->
  ?pod_range:string prop ->
  ?network_performance_config:
    network_config__network_performance_config list ->
  ?pod_cidr_overprovision_config:
    network_config__pod_cidr_overprovision_config list ->
  unit ->
  network_config

type node_config__effective_taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float prop;
      (** max_shared_clients_per_gpu *)
}

type node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;  (** gpu_driver_version *)
}

type node_config__guest_accelerator = {
  count : float prop;  (** count *)
  gpu_driver_installation_config :
    node_config__guest_accelerator__gpu_driver_installation_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gpu_driver_installation_config *)
  gpu_partition_size : string prop;  (** gpu_partition_size *)
  gpu_sharing_config :
    node_config__guest_accelerator__gpu_sharing_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gpu_sharing_config *)
  type_ : string prop; [@key "type"]  (** type *)
}

type node_config__advanced_machine_features

val node_config__advanced_machine_features :
  threads_per_core:float prop ->
  unit ->
  node_config__advanced_machine_features

type node_config__confidential_nodes

val node_config__confidential_nodes :
  enabled:bool prop -> unit -> node_config__confidential_nodes

type node_config__ephemeral_storage_local_ssd_config

val node_config__ephemeral_storage_local_ssd_config :
  local_ssd_count:float prop ->
  unit ->
  node_config__ephemeral_storage_local_ssd_config

type node_config__fast_socket

val node_config__fast_socket :
  enabled:bool prop -> unit -> node_config__fast_socket

type node_config__gcfs_config

val node_config__gcfs_config :
  enabled:bool prop -> unit -> node_config__gcfs_config

type node_config__gvnic

val node_config__gvnic :
  enabled:bool prop -> unit -> node_config__gvnic

type node_config__host_maintenance_policy

val node_config__host_maintenance_policy :
  maintenance_interval:string prop ->
  unit ->
  node_config__host_maintenance_policy

type node_config__kubelet_config

val node_config__kubelet_config :
  ?cpu_cfs_quota:bool prop ->
  ?cpu_cfs_quota_period:string prop ->
  ?pod_pids_limit:float prop ->
  cpu_manager_policy:string prop ->
  unit ->
  node_config__kubelet_config

type node_config__linux_node_config

val node_config__linux_node_config :
  ?cgroup_mode:string prop ->
  ?sysctls:(string * string prop) list ->
  unit ->
  node_config__linux_node_config

type node_config__local_nvme_ssd_block_config

val node_config__local_nvme_ssd_block_config :
  local_ssd_count:float prop ->
  unit ->
  node_config__local_nvme_ssd_block_config

type node_config__reservation_affinity

val node_config__reservation_affinity :
  ?key:string prop ->
  ?values:string prop list ->
  consume_reservation_type:string prop ->
  unit ->
  node_config__reservation_affinity

type node_config__shielded_instance_config

val node_config__shielded_instance_config :
  ?enable_integrity_monitoring:bool prop ->
  ?enable_secure_boot:bool prop ->
  unit ->
  node_config__shielded_instance_config

type node_config__sole_tenant_config__node_affinity

val node_config__sole_tenant_config__node_affinity :
  key:string prop ->
  operator:string prop ->
  values:string prop list ->
  unit ->
  node_config__sole_tenant_config__node_affinity

type node_config__sole_tenant_config

val node_config__sole_tenant_config :
  node_affinity:node_config__sole_tenant_config__node_affinity list ->
  unit ->
  node_config__sole_tenant_config

type node_config__taint

val node_config__taint :
  effect:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  node_config__taint

type node_config__workload_metadata_config

val node_config__workload_metadata_config :
  mode:string prop -> unit -> node_config__workload_metadata_config

type node_config

val node_config :
  ?boot_disk_kms_key:string prop ->
  ?disk_size_gb:float prop ->
  ?disk_type:string prop ->
  ?enable_confidential_storage:bool prop ->
  ?guest_accelerator:node_config__guest_accelerator list ->
  ?image_type:string prop ->
  ?labels:(string * string prop) list ->
  ?local_ssd_count:float prop ->
  ?logging_variant:string prop ->
  ?machine_type:string prop ->
  ?metadata:(string * string prop) list ->
  ?min_cpu_platform:string prop ->
  ?node_group:string prop ->
  ?oauth_scopes:string prop list ->
  ?preemptible:bool prop ->
  ?resource_labels:(string * string prop) list ->
  ?resource_manager_tags:(string * string prop) list ->
  ?service_account:string prop ->
  ?spot:bool prop ->
  ?tags:string prop list ->
  ?advanced_machine_features:
    node_config__advanced_machine_features list ->
  ?confidential_nodes:node_config__confidential_nodes list ->
  ?ephemeral_storage_local_ssd_config:
    node_config__ephemeral_storage_local_ssd_config list ->
  ?fast_socket:node_config__fast_socket list ->
  ?gcfs_config:node_config__gcfs_config list ->
  ?gvnic:node_config__gvnic list ->
  ?host_maintenance_policy:node_config__host_maintenance_policy list ->
  ?kubelet_config:node_config__kubelet_config list ->
  ?linux_node_config:node_config__linux_node_config list ->
  ?local_nvme_ssd_block_config:
    node_config__local_nvme_ssd_block_config list ->
  ?reservation_affinity:node_config__reservation_affinity list ->
  ?shielded_instance_config:
    node_config__shielded_instance_config list ->
  ?sole_tenant_config:node_config__sole_tenant_config list ->
  ?taint:node_config__taint list ->
  ?workload_metadata_config:
    node_config__workload_metadata_config list ->
  unit ->
  node_config

type placement_policy

val placement_policy :
  ?policy_name:string prop ->
  ?tpu_topology:string prop ->
  type_:string prop ->
  unit ->
  placement_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type upgrade_settings__blue_green_settings__standard_rollout_policy

val upgrade_settings__blue_green_settings__standard_rollout_policy :
  ?batch_node_count:float prop ->
  ?batch_percentage:float prop ->
  ?batch_soak_duration:string prop ->
  unit ->
  upgrade_settings__blue_green_settings__standard_rollout_policy

type upgrade_settings__blue_green_settings

val upgrade_settings__blue_green_settings :
  ?node_pool_soak_duration:string prop ->
  standard_rollout_policy:
    upgrade_settings__blue_green_settings__standard_rollout_policy
    list ->
  unit ->
  upgrade_settings__blue_green_settings

type upgrade_settings

val upgrade_settings :
  ?max_surge:float prop ->
  ?max_unavailable:float prop ->
  ?strategy:string prop ->
  ?blue_green_settings:upgrade_settings__blue_green_settings list ->
  unit ->
  upgrade_settings

type google_container_node_pool

val google_container_node_pool :
  ?id:string prop ->
  ?initial_node_count:float prop ->
  ?location:string prop ->
  ?max_pods_per_node:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?node_count:float prop ->
  ?node_locations:string prop list ->
  ?project:string prop ->
  ?version:string prop ->
  ?autoscaling:autoscaling list ->
  ?management:management list ->
  ?network_config:network_config list ->
  ?node_config:node_config list ->
  ?placement_policy:placement_policy list ->
  ?timeouts:timeouts ->
  ?upgrade_settings:upgrade_settings list ->
  cluster:string prop ->
  unit ->
  google_container_node_pool

val yojson_of_google_container_node_pool :
  google_container_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster : string prop;
  id : string prop;
  initial_node_count : float prop;
  instance_group_urls : string list prop;
  location : string prop;
  managed_instance_group_urls : string list prop;
  max_pods_per_node : float prop;
  name : string prop;
  name_prefix : string prop;
  node_count : float prop;
  node_locations : string list prop;
  operation : string prop;
  project : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?initial_node_count:float prop ->
  ?location:string prop ->
  ?max_pods_per_node:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?node_count:float prop ->
  ?node_locations:string prop list ->
  ?project:string prop ->
  ?version:string prop ->
  ?autoscaling:autoscaling list ->
  ?management:management list ->
  ?network_config:network_config list ->
  ?node_config:node_config list ->
  ?placement_policy:placement_policy list ->
  ?timeouts:timeouts ->
  ?upgrade_settings:upgrade_settings list ->
  cluster:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?initial_node_count:float prop ->
  ?location:string prop ->
  ?max_pods_per_node:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?node_count:float prop ->
  ?node_locations:string prop list ->
  ?project:string prop ->
  ?version:string prop ->
  ?autoscaling:autoscaling list ->
  ?management:management list ->
  ?network_config:network_config list ->
  ?node_config:node_config list ->
  ?placement_policy:placement_policy list ->
  ?timeouts:timeouts ->
  ?upgrade_settings:upgrade_settings list ->
  cluster:string prop ->
  string ->
  t Tf_core.resource
