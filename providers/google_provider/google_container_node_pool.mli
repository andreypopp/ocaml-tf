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
  effect : string;  (** effect *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type google_container_node_pool__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float;
      (** max_shared_clients_per_gpu *)
}
[@@deriving yojson_of]

type google_container_node_pool__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string;  (** gpu_driver_version *)
}
[@@deriving yojson_of]

type google_container_node_pool__node_config__guest_accelerator = {
  count : float;  (** count *)
  gpu_driver_installation_config :
    google_container_node_pool__node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string;  (** gpu_partition_size *)
  gpu_sharing_config :
    google_container_node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
      (** gpu_sharing_config *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_container_node_pool__node_config
type google_container_node_pool__placement_policy
type google_container_node_pool__timeouts

type google_container_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy

type google_container_node_pool__upgrade_settings__blue_green_settings
type google_container_node_pool__upgrade_settings
type google_container_node_pool

val google_container_node_pool :
  ?timeouts:google_container_node_pool__timeouts ->
  cluster:string ->
  autoscaling:google_container_node_pool__autoscaling list ->
  management:google_container_node_pool__management list ->
  network_config:google_container_node_pool__network_config list ->
  node_config:google_container_node_pool__node_config list ->
  placement_policy:google_container_node_pool__placement_policy list ->
  upgrade_settings:google_container_node_pool__upgrade_settings list ->
  string ->
  unit
