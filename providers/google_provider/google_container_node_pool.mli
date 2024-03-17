(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_node_pool__autoscaling
type google_container_node_pool__management

type google_container_node_pool__network_config__network_performance_config

type google_container_node_pool__network_config__pod_cidr_overprovision_config

type google_container_node_pool__network_config

type google_container_node_pool__node_config__advanced_machine_features

type google_container_node_pool__node_config__confidential_nodes

type google_container_node_pool__node_config__ephemeral_storage_local_ssd_config

type google_container_node_pool__node_config__fast_socket
type google_container_node_pool__node_config__gcfs_config
type google_container_node_pool__node_config__gvnic
type google_container_node_pool__node_config__host_maintenance_policy
type google_container_node_pool__node_config__kubelet_config
type google_container_node_pool__node_config__linux_node_config

type google_container_node_pool__node_config__local_nvme_ssd_block_config

type google_container_node_pool__node_config__reservation_affinity
type google_container_node_pool__node_config__shielded_instance_config

type google_container_node_pool__node_config__sole_tenant_config__node_affinity

type google_container_node_pool__node_config__sole_tenant_config
type google_container_node_pool__node_config__taint
type google_container_node_pool__node_config__workload_metadata_config

type google_container_node_pool__node_config__effective_taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type google_container_node_pool__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float prop;
      (** max_shared_clients_per_gpu *)
}

type google_container_node_pool__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;  (** gpu_driver_version *)
}

type google_container_node_pool__node_config__guest_accelerator = {
  count : float prop;  (** count *)
  gpu_driver_installation_config :
    google_container_node_pool__node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string prop;  (** gpu_partition_size *)
  gpu_sharing_config :
    google_container_node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
      (** gpu_sharing_config *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_container_node_pool__node_config
type google_container_node_pool__placement_policy
type google_container_node_pool__timeouts

type google_container_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy

type google_container_node_pool__upgrade_settings__blue_green_settings
type google_container_node_pool__upgrade_settings
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
  ?timeouts:google_container_node_pool__timeouts ->
  cluster:string prop ->
  autoscaling:google_container_node_pool__autoscaling list ->
  management:google_container_node_pool__management list ->
  network_config:google_container_node_pool__network_config list ->
  node_config:google_container_node_pool__node_config list ->
  placement_policy:google_container_node_pool__placement_policy list ->
  upgrade_settings:google_container_node_pool__upgrade_settings list ->
  string ->
  unit
