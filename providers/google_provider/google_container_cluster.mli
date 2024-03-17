(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_cluster__addons_config__cloudrun_config
type google_container_cluster__addons_config__config_connector_config
type google_container_cluster__addons_config__dns_cache_config

type google_container_cluster__addons_config__gce_persistent_disk_csi_driver_config

type google_container_cluster__addons_config__gcp_filestore_csi_driver_config

type google_container_cluster__addons_config__gcs_fuse_csi_driver_config

type google_container_cluster__addons_config__gke_backup_agent_config

type google_container_cluster__addons_config__horizontal_pod_autoscaling

type google_container_cluster__addons_config__http_load_balancing
type google_container_cluster__addons_config__network_policy_config
type google_container_cluster__addons_config
type google_container_cluster__authenticator_groups_config
type google_container_cluster__binary_authorization

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options = {
  auto_upgrade_start_time : string;  (** auto_upgrade_start_time *)
  description : string;  (** description *)
}
[@@deriving yojson_of]

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__management

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults

type google_container_cluster__cluster_autoscaling__resource_limits
type google_container_cluster__cluster_autoscaling
type google_container_cluster__confidential_nodes
type google_container_cluster__cost_management_config
type google_container_cluster__database_encryption
type google_container_cluster__default_snat_status
type google_container_cluster__dns_config
type google_container_cluster__enable_k8s_beta_apis
type google_container_cluster__fleet
type google_container_cluster__gateway_api_config
type google_container_cluster__identity_service_config

type google_container_cluster__ip_allocation_policy__additional_pod_ranges_config

type google_container_cluster__ip_allocation_policy__pod_cidr_overprovision_config

type google_container_cluster__ip_allocation_policy
type google_container_cluster__logging_config

type google_container_cluster__maintenance_policy__daily_maintenance_window

type google_container_cluster__maintenance_policy__maintenance_exclusion__exclusion_options

type google_container_cluster__maintenance_policy__maintenance_exclusion

type google_container_cluster__maintenance_policy__recurring_window
type google_container_cluster__maintenance_policy
type google_container_cluster__master_auth__client_certificate_config
type google_container_cluster__master_auth

type google_container_cluster__master_authorized_networks_config__cidr_blocks

type google_container_cluster__master_authorized_networks_config
type google_container_cluster__mesh_certificates

type google_container_cluster__monitoring_config__advanced_datapath_observability_config

type google_container_cluster__monitoring_config__managed_prometheus
type google_container_cluster__monitoring_config
type google_container_cluster__network_policy
type google_container_cluster__node_config__advanced_machine_features
type google_container_cluster__node_config__confidential_nodes

type google_container_cluster__node_config__ephemeral_storage_local_ssd_config

type google_container_cluster__node_config__fast_socket
type google_container_cluster__node_config__gcfs_config
type google_container_cluster__node_config__gvnic
type google_container_cluster__node_config__host_maintenance_policy
type google_container_cluster__node_config__kubelet_config
type google_container_cluster__node_config__linux_node_config

type google_container_cluster__node_config__local_nvme_ssd_block_config

type google_container_cluster__node_config__reservation_affinity
type google_container_cluster__node_config__shielded_instance_config

type google_container_cluster__node_config__sole_tenant_config__node_affinity

type google_container_cluster__node_config__sole_tenant_config
type google_container_cluster__node_config__taint
type google_container_cluster__node_config__workload_metadata_config

type google_container_cluster__node_config__effective_taints = {
  effect : string;  (** effect *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type google_container_cluster__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float;
      (** max_shared_clients_per_gpu *)
}
[@@deriving yojson_of]

type google_container_cluster__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string;  (** gpu_driver_version *)
}
[@@deriving yojson_of]

type google_container_cluster__node_config__guest_accelerator = {
  count : float;  (** count *)
  gpu_driver_installation_config :
    google_container_cluster__node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string;  (** gpu_partition_size *)
  gpu_sharing_config :
    google_container_cluster__node_config__guest_accelerator__gpu_sharing_config
    list;
      (** gpu_sharing_config *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_container_cluster__node_config
type google_container_cluster__node_pool__autoscaling
type google_container_cluster__node_pool__management

type google_container_cluster__node_pool__network_config__network_performance_config

type google_container_cluster__node_pool__network_config__pod_cidr_overprovision_config

type google_container_cluster__node_pool__network_config

type google_container_cluster__node_pool__node_config__advanced_machine_features

type google_container_cluster__node_pool__node_config__confidential_nodes

type google_container_cluster__node_pool__node_config__ephemeral_storage_local_ssd_config

type google_container_cluster__node_pool__node_config__fast_socket
type google_container_cluster__node_pool__node_config__gcfs_config
type google_container_cluster__node_pool__node_config__gvnic

type google_container_cluster__node_pool__node_config__host_maintenance_policy

type google_container_cluster__node_pool__node_config__kubelet_config

type google_container_cluster__node_pool__node_config__linux_node_config

type google_container_cluster__node_pool__node_config__local_nvme_ssd_block_config

type google_container_cluster__node_pool__node_config__reservation_affinity

type google_container_cluster__node_pool__node_config__shielded_instance_config

type google_container_cluster__node_pool__node_config__sole_tenant_config__node_affinity

type google_container_cluster__node_pool__node_config__sole_tenant_config

type google_container_cluster__node_pool__node_config__taint

type google_container_cluster__node_pool__node_config__workload_metadata_config

type google_container_cluster__node_pool__node_config__effective_taints = {
  effect : string;  (** effect *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type google_container_cluster__node_pool__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float;
      (** max_shared_clients_per_gpu *)
}
[@@deriving yojson_of]

type google_container_cluster__node_pool__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string;  (** gpu_driver_version *)
}
[@@deriving yojson_of]

type google_container_cluster__node_pool__node_config__guest_accelerator = {
  count : float;  (** count *)
  gpu_driver_installation_config :
    google_container_cluster__node_pool__node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string;  (** gpu_partition_size *)
  gpu_sharing_config :
    google_container_cluster__node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
      (** gpu_sharing_config *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_container_cluster__node_pool__node_config
type google_container_cluster__node_pool__placement_policy

type google_container_cluster__node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy

type google_container_cluster__node_pool__upgrade_settings__blue_green_settings

type google_container_cluster__node_pool__upgrade_settings
type google_container_cluster__node_pool
type google_container_cluster__node_pool_auto_config__network_tags
type google_container_cluster__node_pool_auto_config

type google_container_cluster__node_pool_defaults__node_config_defaults

type google_container_cluster__node_pool_defaults
type google_container_cluster__notification_config__pubsub__filter
type google_container_cluster__notification_config__pubsub
type google_container_cluster__notification_config

type google_container_cluster__private_cluster_config__master_global_access_config

type google_container_cluster__private_cluster_config
type google_container_cluster__release_channel

type google_container_cluster__resource_usage_export_config__bigquery_destination

type google_container_cluster__resource_usage_export_config
type google_container_cluster__security_posture_config
type google_container_cluster__service_external_ips_config
type google_container_cluster__timeouts
type google_container_cluster__vertical_pod_autoscaling
type google_container_cluster__workload_identity_config
type google_container_cluster

val google_container_cluster :
  ?allow_net_admin:bool ->
  ?deletion_protection:bool ->
  ?description:string ->
  ?enable_autopilot:bool ->
  ?enable_kubernetes_alpha:bool ->
  ?enable_l4_ilb_subsetting:bool ->
  ?enable_legacy_abac:bool ->
  ?enable_shielded_nodes:bool ->
  ?enable_tpu:bool ->
  ?initial_node_count:float ->
  ?min_master_version:string ->
  ?network:string ->
  ?remove_default_node_pool:bool ->
  ?resource_labels:(string * string) list ->
  ?timeouts:google_container_cluster__timeouts ->
  name:string ->
  addons_config:google_container_cluster__addons_config list ->
  authenticator_groups_config:
    google_container_cluster__authenticator_groups_config list ->
  binary_authorization:
    google_container_cluster__binary_authorization list ->
  cluster_autoscaling:
    google_container_cluster__cluster_autoscaling list ->
  confidential_nodes:
    google_container_cluster__confidential_nodes list ->
  cost_management_config:
    google_container_cluster__cost_management_config list ->
  database_encryption:
    google_container_cluster__database_encryption list ->
  default_snat_status:
    google_container_cluster__default_snat_status list ->
  dns_config:google_container_cluster__dns_config list ->
  enable_k8s_beta_apis:
    google_container_cluster__enable_k8s_beta_apis list ->
  fleet:google_container_cluster__fleet list ->
  gateway_api_config:
    google_container_cluster__gateway_api_config list ->
  identity_service_config:
    google_container_cluster__identity_service_config list ->
  ip_allocation_policy:
    google_container_cluster__ip_allocation_policy list ->
  logging_config:google_container_cluster__logging_config list ->
  maintenance_policy:
    google_container_cluster__maintenance_policy list ->
  master_auth:google_container_cluster__master_auth list ->
  master_authorized_networks_config:
    google_container_cluster__master_authorized_networks_config list ->
  mesh_certificates:google_container_cluster__mesh_certificates list ->
  monitoring_config:google_container_cluster__monitoring_config list ->
  network_policy:google_container_cluster__network_policy list ->
  node_config:google_container_cluster__node_config list ->
  node_pool:google_container_cluster__node_pool list ->
  node_pool_auto_config:
    google_container_cluster__node_pool_auto_config list ->
  node_pool_defaults:
    google_container_cluster__node_pool_defaults list ->
  notification_config:
    google_container_cluster__notification_config list ->
  private_cluster_config:
    google_container_cluster__private_cluster_config list ->
  release_channel:google_container_cluster__release_channel list ->
  resource_usage_export_config:
    google_container_cluster__resource_usage_export_config list ->
  security_posture_config:
    google_container_cluster__security_posture_config list ->
  service_external_ips_config:
    google_container_cluster__service_external_ips_config list ->
  vertical_pod_autoscaling:
    google_container_cluster__vertical_pod_autoscaling list ->
  workload_identity_config:
    google_container_cluster__workload_identity_config list ->
  string ->
  unit
