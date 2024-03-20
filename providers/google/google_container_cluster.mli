(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type addons_config__cloudrun_config

val addons_config__cloudrun_config :
  ?load_balancer_type:string prop ->
  disabled:bool prop ->
  unit ->
  addons_config__cloudrun_config

type addons_config__config_connector_config

val addons_config__config_connector_config :
  enabled:bool prop -> unit -> addons_config__config_connector_config

type addons_config__dns_cache_config

val addons_config__dns_cache_config :
  enabled:bool prop -> unit -> addons_config__dns_cache_config

type addons_config__gce_persistent_disk_csi_driver_config

val addons_config__gce_persistent_disk_csi_driver_config :
  enabled:bool prop ->
  unit ->
  addons_config__gce_persistent_disk_csi_driver_config

type addons_config__gcp_filestore_csi_driver_config

val addons_config__gcp_filestore_csi_driver_config :
  enabled:bool prop ->
  unit ->
  addons_config__gcp_filestore_csi_driver_config

type addons_config__gcs_fuse_csi_driver_config

val addons_config__gcs_fuse_csi_driver_config :
  enabled:bool prop ->
  unit ->
  addons_config__gcs_fuse_csi_driver_config

type addons_config__gke_backup_agent_config

val addons_config__gke_backup_agent_config :
  enabled:bool prop -> unit -> addons_config__gke_backup_agent_config

type addons_config__horizontal_pod_autoscaling

val addons_config__horizontal_pod_autoscaling :
  disabled:bool prop ->
  unit ->
  addons_config__horizontal_pod_autoscaling

type addons_config__http_load_balancing

val addons_config__http_load_balancing :
  disabled:bool prop -> unit -> addons_config__http_load_balancing

type addons_config__network_policy_config

val addons_config__network_policy_config :
  disabled:bool prop -> unit -> addons_config__network_policy_config

type addons_config

val addons_config :
  cloudrun_config:addons_config__cloudrun_config list ->
  config_connector_config:addons_config__config_connector_config list ->
  dns_cache_config:addons_config__dns_cache_config list ->
  gce_persistent_disk_csi_driver_config:
    addons_config__gce_persistent_disk_csi_driver_config list ->
  gcp_filestore_csi_driver_config:
    addons_config__gcp_filestore_csi_driver_config list ->
  gcs_fuse_csi_driver_config:
    addons_config__gcs_fuse_csi_driver_config list ->
  gke_backup_agent_config:addons_config__gke_backup_agent_config list ->
  horizontal_pod_autoscaling:
    addons_config__horizontal_pod_autoscaling list ->
  http_load_balancing:addons_config__http_load_balancing list ->
  network_policy_config:addons_config__network_policy_config list ->
  unit ->
  addons_config

type authenticator_groups_config

val authenticator_groups_config :
  security_group:string prop -> unit -> authenticator_groups_config

type binary_authorization

val binary_authorization :
  ?enabled:bool prop ->
  ?evaluation_mode:string prop ->
  unit ->
  binary_authorization

type cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options = {
  auto_upgrade_start_time : string prop;
      (** auto_upgrade_start_time *)
  description : string prop;  (** description *)
}

type cluster_autoscaling__auto_provisioning_defaults__management

val cluster_autoscaling__auto_provisioning_defaults__management :
  ?auto_repair:bool prop ->
  ?auto_upgrade:bool prop ->
  unit ->
  cluster_autoscaling__auto_provisioning_defaults__management

type cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config

val cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config :
  ?enable_integrity_monitoring:bool prop ->
  ?enable_secure_boot:bool prop ->
  unit ->
  cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy

val cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy :
  ?batch_node_count:float prop ->
  ?batch_percentage:float prop ->
  ?batch_soak_duration:string prop ->
  unit ->
  cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings

val cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings :
  ?node_pool_soak_duration:string prop ->
  standard_rollout_policy:
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
    list ->
  unit ->
  cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings

val cluster_autoscaling__auto_provisioning_defaults__upgrade_settings :
  ?max_surge:float prop ->
  ?max_unavailable:float prop ->
  ?strategy:string prop ->
  blue_green_settings:
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
    list ->
  unit ->
  cluster_autoscaling__auto_provisioning_defaults__upgrade_settings

type cluster_autoscaling__auto_provisioning_defaults

val cluster_autoscaling__auto_provisioning_defaults :
  ?boot_disk_kms_key:string prop ->
  ?disk_size:float prop ->
  ?disk_type:string prop ->
  ?image_type:string prop ->
  ?min_cpu_platform:string prop ->
  ?oauth_scopes:string prop list ->
  ?service_account:string prop ->
  management:
    cluster_autoscaling__auto_provisioning_defaults__management list ->
  shielded_instance_config:
    cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
    list ->
  upgrade_settings:
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
    list ->
  unit ->
  cluster_autoscaling__auto_provisioning_defaults

type cluster_autoscaling__resource_limits

val cluster_autoscaling__resource_limits :
  ?maximum:float prop ->
  ?minimum:float prop ->
  resource_type:string prop ->
  unit ->
  cluster_autoscaling__resource_limits

type cluster_autoscaling

val cluster_autoscaling :
  ?autoscaling_profile:string prop ->
  ?enabled:bool prop ->
  auto_provisioning_defaults:
    cluster_autoscaling__auto_provisioning_defaults list ->
  resource_limits:cluster_autoscaling__resource_limits list ->
  unit ->
  cluster_autoscaling

type confidential_nodes

val confidential_nodes :
  enabled:bool prop -> unit -> confidential_nodes

type cost_management_config

val cost_management_config :
  enabled:bool prop -> unit -> cost_management_config

type database_encryption

val database_encryption :
  ?key_name:string prop ->
  state:string prop ->
  unit ->
  database_encryption

type default_snat_status

val default_snat_status :
  disabled:bool prop -> unit -> default_snat_status

type dns_config

val dns_config :
  ?cluster_dns:string prop ->
  ?cluster_dns_domain:string prop ->
  ?cluster_dns_scope:string prop ->
  unit ->
  dns_config

type enable_k8s_beta_apis

val enable_k8s_beta_apis :
  enabled_apis:string prop list -> unit -> enable_k8s_beta_apis

type fleet

val fleet : ?project:string prop -> unit -> fleet

type gateway_api_config

val gateway_api_config :
  channel:string prop -> unit -> gateway_api_config

type identity_service_config

val identity_service_config :
  ?enabled:bool prop -> unit -> identity_service_config

type ip_allocation_policy__additional_pod_ranges_config

val ip_allocation_policy__additional_pod_ranges_config :
  pod_range_names:string prop list ->
  unit ->
  ip_allocation_policy__additional_pod_ranges_config

type ip_allocation_policy__pod_cidr_overprovision_config

val ip_allocation_policy__pod_cidr_overprovision_config :
  disabled:bool prop ->
  unit ->
  ip_allocation_policy__pod_cidr_overprovision_config

type ip_allocation_policy

val ip_allocation_policy :
  ?cluster_ipv4_cidr_block:string prop ->
  ?cluster_secondary_range_name:string prop ->
  ?services_ipv4_cidr_block:string prop ->
  ?services_secondary_range_name:string prop ->
  ?stack_type:string prop ->
  additional_pod_ranges_config:
    ip_allocation_policy__additional_pod_ranges_config list ->
  pod_cidr_overprovision_config:
    ip_allocation_policy__pod_cidr_overprovision_config list ->
  unit ->
  ip_allocation_policy

type logging_config

val logging_config :
  enable_components:string prop list -> unit -> logging_config

type maintenance_policy__daily_maintenance_window

val maintenance_policy__daily_maintenance_window :
  start_time:string prop ->
  unit ->
  maintenance_policy__daily_maintenance_window

type maintenance_policy__maintenance_exclusion__exclusion_options

val maintenance_policy__maintenance_exclusion__exclusion_options :
  scope:string prop ->
  unit ->
  maintenance_policy__maintenance_exclusion__exclusion_options

type maintenance_policy__maintenance_exclusion

val maintenance_policy__maintenance_exclusion :
  end_time:string prop ->
  exclusion_name:string prop ->
  start_time:string prop ->
  exclusion_options:
    maintenance_policy__maintenance_exclusion__exclusion_options list ->
  unit ->
  maintenance_policy__maintenance_exclusion

type maintenance_policy__recurring_window

val maintenance_policy__recurring_window :
  end_time:string prop ->
  recurrence:string prop ->
  start_time:string prop ->
  unit ->
  maintenance_policy__recurring_window

type maintenance_policy

val maintenance_policy :
  daily_maintenance_window:
    maintenance_policy__daily_maintenance_window list ->
  maintenance_exclusion:
    maintenance_policy__maintenance_exclusion list ->
  recurring_window:maintenance_policy__recurring_window list ->
  unit ->
  maintenance_policy

type master_auth__client_certificate_config

val master_auth__client_certificate_config :
  issue_client_certificate:bool prop ->
  unit ->
  master_auth__client_certificate_config

type master_auth

val master_auth :
  client_certificate_config:
    master_auth__client_certificate_config list ->
  unit ->
  master_auth

type master_authorized_networks_config__cidr_blocks

val master_authorized_networks_config__cidr_blocks :
  ?display_name:string prop ->
  cidr_block:string prop ->
  unit ->
  master_authorized_networks_config__cidr_blocks

type master_authorized_networks_config

val master_authorized_networks_config :
  ?gcp_public_cidrs_access_enabled:bool prop ->
  cidr_blocks:master_authorized_networks_config__cidr_blocks list ->
  unit ->
  master_authorized_networks_config

type mesh_certificates

val mesh_certificates :
  enable_certificates:bool prop -> unit -> mesh_certificates

type monitoring_config__advanced_datapath_observability_config

val monitoring_config__advanced_datapath_observability_config :
  ?enable_relay:bool prop ->
  ?relay_mode:string prop ->
  enable_metrics:bool prop ->
  unit ->
  monitoring_config__advanced_datapath_observability_config

type monitoring_config__managed_prometheus

val monitoring_config__managed_prometheus :
  enabled:bool prop -> unit -> monitoring_config__managed_prometheus

type monitoring_config

val monitoring_config :
  ?enable_components:string prop list ->
  advanced_datapath_observability_config:
    monitoring_config__advanced_datapath_observability_config list ->
  managed_prometheus:monitoring_config__managed_prometheus list ->
  unit ->
  monitoring_config

type network_policy

val network_policy :
  ?provider:string prop ->
  enabled:bool prop ->
  unit ->
  network_policy

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
      (** gpu_driver_installation_config *)
  gpu_partition_size : string prop;  (** gpu_partition_size *)
  gpu_sharing_config :
    node_config__guest_accelerator__gpu_sharing_config list;
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
  advanced_machine_features:
    node_config__advanced_machine_features list ->
  confidential_nodes:node_config__confidential_nodes list ->
  ephemeral_storage_local_ssd_config:
    node_config__ephemeral_storage_local_ssd_config list ->
  fast_socket:node_config__fast_socket list ->
  gcfs_config:node_config__gcfs_config list ->
  gvnic:node_config__gvnic list ->
  host_maintenance_policy:node_config__host_maintenance_policy list ->
  kubelet_config:node_config__kubelet_config list ->
  linux_node_config:node_config__linux_node_config list ->
  local_nvme_ssd_block_config:
    node_config__local_nvme_ssd_block_config list ->
  reservation_affinity:node_config__reservation_affinity list ->
  shielded_instance_config:node_config__shielded_instance_config list ->
  sole_tenant_config:node_config__sole_tenant_config list ->
  taint:node_config__taint list ->
  workload_metadata_config:node_config__workload_metadata_config list ->
  unit ->
  node_config

type node_pool__autoscaling

val node_pool__autoscaling :
  ?location_policy:string prop ->
  ?max_node_count:float prop ->
  ?min_node_count:float prop ->
  ?total_max_node_count:float prop ->
  ?total_min_node_count:float prop ->
  unit ->
  node_pool__autoscaling

type node_pool__management

val node_pool__management :
  ?auto_repair:bool prop ->
  ?auto_upgrade:bool prop ->
  unit ->
  node_pool__management

type node_pool__network_config__network_performance_config

val node_pool__network_config__network_performance_config :
  total_egress_bandwidth_tier:string prop ->
  unit ->
  node_pool__network_config__network_performance_config

type node_pool__network_config__pod_cidr_overprovision_config

val node_pool__network_config__pod_cidr_overprovision_config :
  disabled:bool prop ->
  unit ->
  node_pool__network_config__pod_cidr_overprovision_config

type node_pool__network_config

val node_pool__network_config :
  ?create_pod_range:bool prop ->
  ?enable_private_nodes:bool prop ->
  ?pod_ipv4_cidr_block:string prop ->
  ?pod_range:string prop ->
  network_performance_config:
    node_pool__network_config__network_performance_config list ->
  pod_cidr_overprovision_config:
    node_pool__network_config__pod_cidr_overprovision_config list ->
  unit ->
  node_pool__network_config

type node_pool__node_config__effective_taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type node_pool__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float prop;
      (** max_shared_clients_per_gpu *)
}

type node_pool__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;  (** gpu_driver_version *)
}

type node_pool__node_config__guest_accelerator = {
  count : float prop;  (** count *)
  gpu_driver_installation_config :
    node_pool__node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string prop;  (** gpu_partition_size *)
  gpu_sharing_config :
    node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
      (** gpu_sharing_config *)
  type_ : string prop; [@key "type"]  (** type *)
}

type node_pool__node_config__advanced_machine_features

val node_pool__node_config__advanced_machine_features :
  threads_per_core:float prop ->
  unit ->
  node_pool__node_config__advanced_machine_features

type node_pool__node_config__confidential_nodes

val node_pool__node_config__confidential_nodes :
  enabled:bool prop ->
  unit ->
  node_pool__node_config__confidential_nodes

type node_pool__node_config__ephemeral_storage_local_ssd_config

val node_pool__node_config__ephemeral_storage_local_ssd_config :
  local_ssd_count:float prop ->
  unit ->
  node_pool__node_config__ephemeral_storage_local_ssd_config

type node_pool__node_config__fast_socket

val node_pool__node_config__fast_socket :
  enabled:bool prop -> unit -> node_pool__node_config__fast_socket

type node_pool__node_config__gcfs_config

val node_pool__node_config__gcfs_config :
  enabled:bool prop -> unit -> node_pool__node_config__gcfs_config

type node_pool__node_config__gvnic

val node_pool__node_config__gvnic :
  enabled:bool prop -> unit -> node_pool__node_config__gvnic

type node_pool__node_config__host_maintenance_policy

val node_pool__node_config__host_maintenance_policy :
  maintenance_interval:string prop ->
  unit ->
  node_pool__node_config__host_maintenance_policy

type node_pool__node_config__kubelet_config

val node_pool__node_config__kubelet_config :
  ?cpu_cfs_quota:bool prop ->
  ?cpu_cfs_quota_period:string prop ->
  ?pod_pids_limit:float prop ->
  cpu_manager_policy:string prop ->
  unit ->
  node_pool__node_config__kubelet_config

type node_pool__node_config__linux_node_config

val node_pool__node_config__linux_node_config :
  ?cgroup_mode:string prop ->
  ?sysctls:(string * string prop) list ->
  unit ->
  node_pool__node_config__linux_node_config

type node_pool__node_config__local_nvme_ssd_block_config

val node_pool__node_config__local_nvme_ssd_block_config :
  local_ssd_count:float prop ->
  unit ->
  node_pool__node_config__local_nvme_ssd_block_config

type node_pool__node_config__reservation_affinity

val node_pool__node_config__reservation_affinity :
  ?key:string prop ->
  ?values:string prop list ->
  consume_reservation_type:string prop ->
  unit ->
  node_pool__node_config__reservation_affinity

type node_pool__node_config__shielded_instance_config

val node_pool__node_config__shielded_instance_config :
  ?enable_integrity_monitoring:bool prop ->
  ?enable_secure_boot:bool prop ->
  unit ->
  node_pool__node_config__shielded_instance_config

type node_pool__node_config__sole_tenant_config__node_affinity

val node_pool__node_config__sole_tenant_config__node_affinity :
  key:string prop ->
  operator:string prop ->
  values:string prop list ->
  unit ->
  node_pool__node_config__sole_tenant_config__node_affinity

type node_pool__node_config__sole_tenant_config

val node_pool__node_config__sole_tenant_config :
  node_affinity:
    node_pool__node_config__sole_tenant_config__node_affinity list ->
  unit ->
  node_pool__node_config__sole_tenant_config

type node_pool__node_config__taint

val node_pool__node_config__taint :
  effect:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  node_pool__node_config__taint

type node_pool__node_config__workload_metadata_config

val node_pool__node_config__workload_metadata_config :
  mode:string prop ->
  unit ->
  node_pool__node_config__workload_metadata_config

type node_pool__node_config

val node_pool__node_config :
  ?boot_disk_kms_key:string prop ->
  ?disk_size_gb:float prop ->
  ?disk_type:string prop ->
  ?enable_confidential_storage:bool prop ->
  ?guest_accelerator:node_pool__node_config__guest_accelerator list ->
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
  advanced_machine_features:
    node_pool__node_config__advanced_machine_features list ->
  confidential_nodes:node_pool__node_config__confidential_nodes list ->
  ephemeral_storage_local_ssd_config:
    node_pool__node_config__ephemeral_storage_local_ssd_config list ->
  fast_socket:node_pool__node_config__fast_socket list ->
  gcfs_config:node_pool__node_config__gcfs_config list ->
  gvnic:node_pool__node_config__gvnic list ->
  host_maintenance_policy:
    node_pool__node_config__host_maintenance_policy list ->
  kubelet_config:node_pool__node_config__kubelet_config list ->
  linux_node_config:node_pool__node_config__linux_node_config list ->
  local_nvme_ssd_block_config:
    node_pool__node_config__local_nvme_ssd_block_config list ->
  reservation_affinity:
    node_pool__node_config__reservation_affinity list ->
  shielded_instance_config:
    node_pool__node_config__shielded_instance_config list ->
  sole_tenant_config:node_pool__node_config__sole_tenant_config list ->
  taint:node_pool__node_config__taint list ->
  workload_metadata_config:
    node_pool__node_config__workload_metadata_config list ->
  unit ->
  node_pool__node_config

type node_pool__placement_policy

val node_pool__placement_policy :
  ?policy_name:string prop ->
  ?tpu_topology:string prop ->
  type_:string prop ->
  unit ->
  node_pool__placement_policy

type node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy

val node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy :
  ?batch_node_count:float prop ->
  ?batch_percentage:float prop ->
  ?batch_soak_duration:string prop ->
  unit ->
  node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy

type node_pool__upgrade_settings__blue_green_settings

val node_pool__upgrade_settings__blue_green_settings :
  ?node_pool_soak_duration:string prop ->
  standard_rollout_policy:
    node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    list ->
  unit ->
  node_pool__upgrade_settings__blue_green_settings

type node_pool__upgrade_settings

val node_pool__upgrade_settings :
  ?max_surge:float prop ->
  ?max_unavailable:float prop ->
  ?strategy:string prop ->
  blue_green_settings:
    node_pool__upgrade_settings__blue_green_settings list ->
  unit ->
  node_pool__upgrade_settings

type node_pool

val node_pool :
  ?initial_node_count:float prop ->
  ?max_pods_per_node:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?node_count:float prop ->
  ?node_locations:string prop list ->
  ?version:string prop ->
  autoscaling:node_pool__autoscaling list ->
  management:node_pool__management list ->
  network_config:node_pool__network_config list ->
  node_config:node_pool__node_config list ->
  placement_policy:node_pool__placement_policy list ->
  upgrade_settings:node_pool__upgrade_settings list ->
  unit ->
  node_pool

type node_pool_auto_config__network_tags

val node_pool_auto_config__network_tags :
  ?tags:string prop list ->
  unit ->
  node_pool_auto_config__network_tags

type node_pool_auto_config

val node_pool_auto_config :
  network_tags:node_pool_auto_config__network_tags list ->
  unit ->
  node_pool_auto_config

type node_pool_defaults__node_config_defaults

val node_pool_defaults__node_config_defaults :
  ?logging_variant:string prop ->
  unit ->
  node_pool_defaults__node_config_defaults

type node_pool_defaults

val node_pool_defaults :
  node_config_defaults:node_pool_defaults__node_config_defaults list ->
  unit ->
  node_pool_defaults

type notification_config__pubsub__filter

val notification_config__pubsub__filter :
  event_type:string prop list ->
  unit ->
  notification_config__pubsub__filter

type notification_config__pubsub

val notification_config__pubsub :
  ?topic:string prop ->
  enabled:bool prop ->
  filter:notification_config__pubsub__filter list ->
  unit ->
  notification_config__pubsub

type notification_config

val notification_config :
  pubsub:notification_config__pubsub list ->
  unit ->
  notification_config

type private_cluster_config__master_global_access_config

val private_cluster_config__master_global_access_config :
  enabled:bool prop ->
  unit ->
  private_cluster_config__master_global_access_config

type private_cluster_config

val private_cluster_config :
  ?enable_private_endpoint:bool prop ->
  ?enable_private_nodes:bool prop ->
  ?master_ipv4_cidr_block:string prop ->
  ?private_endpoint_subnetwork:string prop ->
  master_global_access_config:
    private_cluster_config__master_global_access_config list ->
  unit ->
  private_cluster_config

type release_channel

val release_channel : channel:string prop -> unit -> release_channel

type resource_usage_export_config__bigquery_destination

val resource_usage_export_config__bigquery_destination :
  dataset_id:string prop ->
  unit ->
  resource_usage_export_config__bigquery_destination

type resource_usage_export_config

val resource_usage_export_config :
  ?enable_network_egress_metering:bool prop ->
  ?enable_resource_consumption_metering:bool prop ->
  bigquery_destination:
    resource_usage_export_config__bigquery_destination list ->
  unit ->
  resource_usage_export_config

type security_posture_config

val security_posture_config :
  ?mode:string prop ->
  ?vulnerability_mode:string prop ->
  unit ->
  security_posture_config

type service_external_ips_config

val service_external_ips_config :
  enabled:bool prop -> unit -> service_external_ips_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vertical_pod_autoscaling

val vertical_pod_autoscaling :
  enabled:bool prop -> unit -> vertical_pod_autoscaling

type workload_identity_config

val workload_identity_config :
  ?workload_pool:string prop -> unit -> workload_identity_config

type google_container_cluster

val google_container_cluster :
  ?allow_net_admin:bool prop ->
  ?cluster_ipv4_cidr:string prop ->
  ?datapath_provider:string prop ->
  ?default_max_pods_per_node:float prop ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?enable_autopilot:bool prop ->
  ?enable_intranode_visibility:bool prop ->
  ?enable_kubernetes_alpha:bool prop ->
  ?enable_l4_ilb_subsetting:bool prop ->
  ?enable_legacy_abac:bool prop ->
  ?enable_shielded_nodes:bool prop ->
  ?enable_tpu:bool prop ->
  ?id:string prop ->
  ?initial_node_count:float prop ->
  ?location:string prop ->
  ?logging_service:string prop ->
  ?min_master_version:string prop ->
  ?monitoring_service:string prop ->
  ?network:string prop ->
  ?networking_mode:string prop ->
  ?node_locations:string prop list ->
  ?node_version:string prop ->
  ?private_ipv6_google_access:string prop ->
  ?project:string prop ->
  ?remove_default_node_pool:bool prop ->
  ?resource_labels:(string * string prop) list ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  addons_config:addons_config list ->
  authenticator_groups_config:authenticator_groups_config list ->
  binary_authorization:binary_authorization list ->
  cluster_autoscaling:cluster_autoscaling list ->
  confidential_nodes:confidential_nodes list ->
  cost_management_config:cost_management_config list ->
  database_encryption:database_encryption list ->
  default_snat_status:default_snat_status list ->
  dns_config:dns_config list ->
  enable_k8s_beta_apis:enable_k8s_beta_apis list ->
  fleet:fleet list ->
  gateway_api_config:gateway_api_config list ->
  identity_service_config:identity_service_config list ->
  ip_allocation_policy:ip_allocation_policy list ->
  logging_config:logging_config list ->
  maintenance_policy:maintenance_policy list ->
  master_auth:master_auth list ->
  master_authorized_networks_config:
    master_authorized_networks_config list ->
  mesh_certificates:mesh_certificates list ->
  monitoring_config:monitoring_config list ->
  network_policy:network_policy list ->
  node_config:node_config list ->
  node_pool:node_pool list ->
  node_pool_auto_config:node_pool_auto_config list ->
  node_pool_defaults:node_pool_defaults list ->
  notification_config:notification_config list ->
  private_cluster_config:private_cluster_config list ->
  release_channel:release_channel list ->
  resource_usage_export_config:resource_usage_export_config list ->
  security_posture_config:security_posture_config list ->
  service_external_ips_config:service_external_ips_config list ->
  vertical_pod_autoscaling:vertical_pod_autoscaling list ->
  workload_identity_config:workload_identity_config list ->
  unit ->
  google_container_cluster

val yojson_of_google_container_cluster :
  google_container_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_net_admin : bool prop;
  cluster_ipv4_cidr : string prop;
  datapath_provider : string prop;
  default_max_pods_per_node : float prop;
  deletion_protection : bool prop;
  description : string prop;
  enable_autopilot : bool prop;
  enable_intranode_visibility : bool prop;
  enable_kubernetes_alpha : bool prop;
  enable_l4_ilb_subsetting : bool prop;
  enable_legacy_abac : bool prop;
  enable_shielded_nodes : bool prop;
  enable_tpu : bool prop;
  endpoint : string prop;
  id : string prop;
  initial_node_count : float prop;
  label_fingerprint : string prop;
  location : string prop;
  logging_service : string prop;
  master_version : string prop;
  min_master_version : string prop;
  monitoring_service : string prop;
  name : string prop;
  network : string prop;
  networking_mode : string prop;
  node_locations : string list prop;
  node_version : string prop;
  operation : string prop;
  private_ipv6_google_access : string prop;
  project : string prop;
  remove_default_node_pool : bool prop;
  resource_labels : (string * string) list prop;
  self_link : string prop;
  services_ipv4_cidr : string prop;
  subnetwork : string prop;
  tpu_ipv4_cidr_block : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_net_admin:bool prop ->
  ?cluster_ipv4_cidr:string prop ->
  ?datapath_provider:string prop ->
  ?default_max_pods_per_node:float prop ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?enable_autopilot:bool prop ->
  ?enable_intranode_visibility:bool prop ->
  ?enable_kubernetes_alpha:bool prop ->
  ?enable_l4_ilb_subsetting:bool prop ->
  ?enable_legacy_abac:bool prop ->
  ?enable_shielded_nodes:bool prop ->
  ?enable_tpu:bool prop ->
  ?id:string prop ->
  ?initial_node_count:float prop ->
  ?location:string prop ->
  ?logging_service:string prop ->
  ?min_master_version:string prop ->
  ?monitoring_service:string prop ->
  ?network:string prop ->
  ?networking_mode:string prop ->
  ?node_locations:string prop list ->
  ?node_version:string prop ->
  ?private_ipv6_google_access:string prop ->
  ?project:string prop ->
  ?remove_default_node_pool:bool prop ->
  ?resource_labels:(string * string prop) list ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  addons_config:addons_config list ->
  authenticator_groups_config:authenticator_groups_config list ->
  binary_authorization:binary_authorization list ->
  cluster_autoscaling:cluster_autoscaling list ->
  confidential_nodes:confidential_nodes list ->
  cost_management_config:cost_management_config list ->
  database_encryption:database_encryption list ->
  default_snat_status:default_snat_status list ->
  dns_config:dns_config list ->
  enable_k8s_beta_apis:enable_k8s_beta_apis list ->
  fleet:fleet list ->
  gateway_api_config:gateway_api_config list ->
  identity_service_config:identity_service_config list ->
  ip_allocation_policy:ip_allocation_policy list ->
  logging_config:logging_config list ->
  maintenance_policy:maintenance_policy list ->
  master_auth:master_auth list ->
  master_authorized_networks_config:
    master_authorized_networks_config list ->
  mesh_certificates:mesh_certificates list ->
  monitoring_config:monitoring_config list ->
  network_policy:network_policy list ->
  node_config:node_config list ->
  node_pool:node_pool list ->
  node_pool_auto_config:node_pool_auto_config list ->
  node_pool_defaults:node_pool_defaults list ->
  notification_config:notification_config list ->
  private_cluster_config:private_cluster_config list ->
  release_channel:release_channel list ->
  resource_usage_export_config:resource_usage_export_config list ->
  security_posture_config:security_posture_config list ->
  service_external_ips_config:service_external_ips_config list ->
  vertical_pod_autoscaling:vertical_pod_autoscaling list ->
  workload_identity_config:workload_identity_config list ->
  string ->
  t

val make :
  ?allow_net_admin:bool prop ->
  ?cluster_ipv4_cidr:string prop ->
  ?datapath_provider:string prop ->
  ?default_max_pods_per_node:float prop ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?enable_autopilot:bool prop ->
  ?enable_intranode_visibility:bool prop ->
  ?enable_kubernetes_alpha:bool prop ->
  ?enable_l4_ilb_subsetting:bool prop ->
  ?enable_legacy_abac:bool prop ->
  ?enable_shielded_nodes:bool prop ->
  ?enable_tpu:bool prop ->
  ?id:string prop ->
  ?initial_node_count:float prop ->
  ?location:string prop ->
  ?logging_service:string prop ->
  ?min_master_version:string prop ->
  ?monitoring_service:string prop ->
  ?network:string prop ->
  ?networking_mode:string prop ->
  ?node_locations:string prop list ->
  ?node_version:string prop ->
  ?private_ipv6_google_access:string prop ->
  ?project:string prop ->
  ?remove_default_node_pool:bool prop ->
  ?resource_labels:(string * string prop) list ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  addons_config:addons_config list ->
  authenticator_groups_config:authenticator_groups_config list ->
  binary_authorization:binary_authorization list ->
  cluster_autoscaling:cluster_autoscaling list ->
  confidential_nodes:confidential_nodes list ->
  cost_management_config:cost_management_config list ->
  database_encryption:database_encryption list ->
  default_snat_status:default_snat_status list ->
  dns_config:dns_config list ->
  enable_k8s_beta_apis:enable_k8s_beta_apis list ->
  fleet:fleet list ->
  gateway_api_config:gateway_api_config list ->
  identity_service_config:identity_service_config list ->
  ip_allocation_policy:ip_allocation_policy list ->
  logging_config:logging_config list ->
  maintenance_policy:maintenance_policy list ->
  master_auth:master_auth list ->
  master_authorized_networks_config:
    master_authorized_networks_config list ->
  mesh_certificates:mesh_certificates list ->
  monitoring_config:monitoring_config list ->
  network_policy:network_policy list ->
  node_config:node_config list ->
  node_pool:node_pool list ->
  node_pool_auto_config:node_pool_auto_config list ->
  node_pool_defaults:node_pool_defaults list ->
  notification_config:notification_config list ->
  private_cluster_config:private_cluster_config list ->
  release_channel:release_channel list ->
  resource_usage_export_config:resource_usage_export_config list ->
  security_posture_config:security_posture_config list ->
  service_external_ips_config:service_external_ips_config list ->
  vertical_pod_autoscaling:vertical_pod_autoscaling list ->
  workload_identity_config:workload_identity_config list ->
  string ->
  t Tf_core.resource
