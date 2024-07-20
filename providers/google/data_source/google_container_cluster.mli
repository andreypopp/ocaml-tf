(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type addons_config__stateful_ha_config = {
  enabled : bool prop;  (** enabled *)
}

type addons_config__network_policy_config = {
  disabled : bool prop;  (** disabled *)
}

type addons_config__http_load_balancing = {
  disabled : bool prop;  (** disabled *)
}

type addons_config__horizontal_pod_autoscaling = {
  disabled : bool prop;  (** disabled *)
}

type addons_config__gke_backup_agent_config = {
  enabled : bool prop;  (** enabled *)
}

type addons_config__gcs_fuse_csi_driver_config = {
  enabled : bool prop;  (** enabled *)
}

type addons_config__gcp_filestore_csi_driver_config = {
  enabled : bool prop;  (** enabled *)
}

type addons_config__gce_persistent_disk_csi_driver_config = {
  enabled : bool prop;  (** enabled *)
}

type addons_config__dns_cache_config = {
  enabled : bool prop;  (** enabled *)
}

type addons_config__config_connector_config = {
  enabled : bool prop;  (** enabled *)
}

type addons_config__cloudrun_config = {
  disabled : bool prop;  (** disabled *)
  load_balancer_type : string prop;  (** load_balancer_type *)
}

type addons_config = {
  cloudrun_config : addons_config__cloudrun_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cloudrun_config *)
  config_connector_config :
    addons_config__config_connector_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** config_connector_config *)
  dns_cache_config : addons_config__dns_cache_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dns_cache_config *)
  gce_persistent_disk_csi_driver_config :
    addons_config__gce_persistent_disk_csi_driver_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gce_persistent_disk_csi_driver_config *)
  gcp_filestore_csi_driver_config :
    addons_config__gcp_filestore_csi_driver_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gcp_filestore_csi_driver_config *)
  gcs_fuse_csi_driver_config :
    addons_config__gcs_fuse_csi_driver_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gcs_fuse_csi_driver_config *)
  gke_backup_agent_config :
    addons_config__gke_backup_agent_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gke_backup_agent_config *)
  horizontal_pod_autoscaling :
    addons_config__horizontal_pod_autoscaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** horizontal_pod_autoscaling *)
  http_load_balancing : addons_config__http_load_balancing list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_load_balancing *)
  network_policy_config : addons_config__network_policy_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_policy_config *)
  stateful_ha_config : addons_config__stateful_ha_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** stateful_ha_config *)
}

type authenticator_groups_config = {
  security_group : string prop;  (** security_group *)
}

type binary_authorization = {
  enabled : bool prop;  (** enabled *)
  evaluation_mode : string prop;  (** evaluation_mode *)
}

type cluster_autoscaling__resource_limits = {
  maximum : float prop;  (** maximum *)
  minimum : float prop;  (** minimum *)
  resource_type : string prop;  (** resource_type *)
}

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop;  (** batch_node_count *)
  batch_percentage : float prop;  (** batch_percentage *)
  batch_soak_duration : string prop;  (** batch_soak_duration *)
}

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop;
      (** node_pool_soak_duration *)
  standard_rollout_policy :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** standard_rollout_policy *)
}

type cluster_autoscaling__auto_provisioning_defaults__upgrade_settings = {
  blue_green_settings :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** blue_green_settings *)
  max_surge : float prop;  (** max_surge *)
  max_unavailable : float prop;  (** max_unavailable *)
  strategy : string prop;  (** strategy *)
}

type cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
      (** enable_integrity_monitoring *)
  enable_secure_boot : bool prop;  (** enable_secure_boot *)
}

type cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options = {
  auto_upgrade_start_time : string prop;
      (** auto_upgrade_start_time *)
  description : string prop;  (** description *)
}

type cluster_autoscaling__auto_provisioning_defaults__management = {
  auto_repair : bool prop;  (** auto_repair *)
  auto_upgrade : bool prop;  (** auto_upgrade *)
  upgrade_options :
    cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** upgrade_options *)
}

type cluster_autoscaling__auto_provisioning_defaults = {
  boot_disk_kms_key : string prop;  (** boot_disk_kms_key *)
  disk_size : float prop;  (** disk_size *)
  disk_type : string prop;  (** disk_type *)
  image_type : string prop;  (** image_type *)
  management :
    cluster_autoscaling__auto_provisioning_defaults__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** management *)
  min_cpu_platform : string prop;  (** min_cpu_platform *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oauth_scopes *)
  service_account : string prop;  (** service_account *)
  shielded_instance_config :
    cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** shielded_instance_config *)
  upgrade_settings :
    cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** upgrade_settings *)
}

type cluster_autoscaling = {
  auto_provisioning_defaults :
    cluster_autoscaling__auto_provisioning_defaults list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** auto_provisioning_defaults *)
  autoscaling_profile : string prop;  (** autoscaling_profile *)
  enabled : bool prop;  (** enabled *)
  resource_limits : cluster_autoscaling__resource_limits list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** resource_limits *)
}

type confidential_nodes = { enabled : bool prop  (** enabled *) }
type cost_management_config = { enabled : bool prop  (** enabled *) }

type database_encryption = {
  key_name : string prop;  (** key_name *)
  state : string prop;  (** state *)
}

type default_snat_status = { disabled : bool prop  (** disabled *) }

type dns_config = {
  cluster_dns : string prop;  (** cluster_dns *)
  cluster_dns_domain : string prop;  (** cluster_dns_domain *)
  cluster_dns_scope : string prop;  (** cluster_dns_scope *)
}

type enable_k8s_beta_apis = {
  enabled_apis : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** enabled_apis *)
}

type fleet = {
  membership : string prop;  (** membership *)
  membership_id : string prop;  (** membership_id *)
  membership_location : string prop;  (** membership_location *)
  pre_registered : bool prop;  (** pre_registered *)
  project : string prop;  (** project *)
}

type gateway_api_config = { channel : string prop  (** channel *) }

type identity_service_config = {
  enabled : bool prop;  (** enabled *)
}

type ip_allocation_policy__pod_cidr_overprovision_config = {
  disabled : bool prop;  (** disabled *)
}

type ip_allocation_policy__additional_pod_ranges_config = {
  pod_range_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pod_range_names *)
}

type ip_allocation_policy = {
  additional_pod_ranges_config :
    ip_allocation_policy__additional_pod_ranges_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_pod_ranges_config *)
  cluster_ipv4_cidr_block : string prop;
      (** cluster_ipv4_cidr_block *)
  cluster_secondary_range_name : string prop;
      (** cluster_secondary_range_name *)
  pod_cidr_overprovision_config :
    ip_allocation_policy__pod_cidr_overprovision_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pod_cidr_overprovision_config *)
  services_ipv4_cidr_block : string prop;
      (** services_ipv4_cidr_block *)
  services_secondary_range_name : string prop;
      (** services_secondary_range_name *)
  stack_type : string prop;  (** stack_type *)
}

type logging_config = {
  enable_components : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** enable_components *)
}

type maintenance_policy__recurring_window = {
  end_time : string prop;  (** end_time *)
  recurrence : string prop;  (** recurrence *)
  start_time : string prop;  (** start_time *)
}

type maintenance_policy__maintenance_exclusion__exclusion_options = {
  scope : string prop;  (** scope *)
}

type maintenance_policy__maintenance_exclusion = {
  end_time : string prop;  (** end_time *)
  exclusion_name : string prop;  (** exclusion_name *)
  exclusion_options :
    maintenance_policy__maintenance_exclusion__exclusion_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** exclusion_options *)
  start_time : string prop;  (** start_time *)
}

type maintenance_policy__daily_maintenance_window = {
  duration : string prop;  (** duration *)
  start_time : string prop;  (** start_time *)
}

type maintenance_policy = {
  daily_maintenance_window :
    maintenance_policy__daily_maintenance_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** daily_maintenance_window *)
  maintenance_exclusion :
    maintenance_policy__maintenance_exclusion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** maintenance_exclusion *)
  recurring_window : maintenance_policy__recurring_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** recurring_window *)
}

type master_auth__client_certificate_config = {
  issue_client_certificate : bool prop;
      (** issue_client_certificate *)
}

type master_auth = {
  client_certificate : string prop;  (** client_certificate *)
  client_certificate_config :
    master_auth__client_certificate_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** client_certificate_config *)
  client_key : string prop;  (** client_key *)
  cluster_ca_certificate : string prop;  (** cluster_ca_certificate *)
}

type master_authorized_networks_config__cidr_blocks = {
  cidr_block : string prop;  (** cidr_block *)
  display_name : string prop;  (** display_name *)
}

type master_authorized_networks_config = {
  cidr_blocks : master_authorized_networks_config__cidr_blocks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cidr_blocks *)
  gcp_public_cidrs_access_enabled : bool prop;
      (** gcp_public_cidrs_access_enabled *)
}

type mesh_certificates = {
  enable_certificates : bool prop;  (** enable_certificates *)
}

type monitoring_config__managed_prometheus = {
  enabled : bool prop;  (** enabled *)
}

type monitoring_config__advanced_datapath_observability_config = {
  enable_metrics : bool prop;  (** enable_metrics *)
  enable_relay : bool prop;  (** enable_relay *)
  relay_mode : string prop;  (** relay_mode *)
}

type monitoring_config = {
  advanced_datapath_observability_config :
    monitoring_config__advanced_datapath_observability_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** advanced_datapath_observability_config *)
  enable_components : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** enable_components *)
  managed_prometheus : monitoring_config__managed_prometheus list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** managed_prometheus *)
}

type network_policy = {
  enabled : bool prop;  (** enabled *)
  provider : string prop;  (** provider *)
}

type node_config__workload_metadata_config = {
  mode : string prop;  (** mode *)
}

type node_config__taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type node_config__sole_tenant_config__node_affinity = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type node_config__sole_tenant_config = {
  node_affinity : node_config__sole_tenant_config__node_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** node_affinity *)
}

type node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
      (** enable_integrity_monitoring *)
  enable_secure_boot : bool prop;  (** enable_secure_boot *)
}

type node_config__secondary_boot_disks = {
  disk_image : string prop;  (** disk_image *)
  mode : string prop;  (** mode *)
}

type node_config__reservation_affinity = {
  consume_reservation_type : string prop;
      (** consume_reservation_type *)
  key : string prop;  (** key *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float prop;  (** local_ssd_count *)
}

type node_config__linux_node_config = {
  cgroup_mode : string prop;  (** cgroup_mode *)
  sysctls : (string * string prop) list;  (** sysctls *)
}

type node_config__kubelet_config = {
  cpu_cfs_quota : bool prop;  (** cpu_cfs_quota *)
  cpu_cfs_quota_period : string prop;  (** cpu_cfs_quota_period *)
  cpu_manager_policy : string prop;  (** cpu_manager_policy *)
  pod_pids_limit : float prop;  (** pod_pids_limit *)
}

type node_config__host_maintenance_policy = {
  maintenance_interval : string prop;  (** maintenance_interval *)
}

type node_config__gvnic = { enabled : bool prop  (** enabled *) }

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

type node_config__gcfs_config = {
  enabled : bool prop;  (** enabled *)
}

type node_config__fast_socket = {
  enabled : bool prop;  (** enabled *)
}

type node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float prop;  (** local_ssd_count *)
}

type node_config__effective_taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type node_config__containerd_config__private_registry_access_config__certificate_authority_domain_config__gcp_secret_manager_certificate_config = {
  secret_uri : string prop;  (** secret_uri *)
}

type node_config__containerd_config__private_registry_access_config__certificate_authority_domain_config = {
  fqdns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** fqdns *)
  gcp_secret_manager_certificate_config :
    node_config__containerd_config__private_registry_access_config__certificate_authority_domain_config__gcp_secret_manager_certificate_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gcp_secret_manager_certificate_config *)
}

type node_config__containerd_config__private_registry_access_config = {
  certificate_authority_domain_config :
    node_config__containerd_config__private_registry_access_config__certificate_authority_domain_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** certificate_authority_domain_config *)
  enabled : bool prop;  (** enabled *)
}

type node_config__containerd_config = {
  private_registry_access_config :
    node_config__containerd_config__private_registry_access_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** private_registry_access_config *)
}

type node_config__confidential_nodes = {
  enabled : bool prop;  (** enabled *)
}

type node_config__advanced_machine_features = {
  enable_nested_virtualization : bool prop;
      (** enable_nested_virtualization *)
  threads_per_core : float prop;  (** threads_per_core *)
}

type node_config = {
  advanced_machine_features :
    node_config__advanced_machine_features list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** advanced_machine_features *)
  boot_disk_kms_key : string prop;  (** boot_disk_kms_key *)
  confidential_nodes : node_config__confidential_nodes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** confidential_nodes *)
  containerd_config : node_config__containerd_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** containerd_config *)
  disk_size_gb : float prop;  (** disk_size_gb *)
  disk_type : string prop;  (** disk_type *)
  effective_taints : node_config__effective_taints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** effective_taints *)
  enable_confidential_storage : bool prop;
      (** enable_confidential_storage *)
  ephemeral_storage_local_ssd_config :
    node_config__ephemeral_storage_local_ssd_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ephemeral_storage_local_ssd_config *)
  fast_socket : node_config__fast_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** fast_socket *)
  gcfs_config : node_config__gcfs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gcfs_config *)
  guest_accelerator : node_config__guest_accelerator list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** guest_accelerator *)
  gvnic : node_config__gvnic list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gvnic *)
  host_maintenance_policy :
    node_config__host_maintenance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** host_maintenance_policy *)
  image_type : string prop;  (** image_type *)
  kubelet_config : node_config__kubelet_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** kubelet_config *)
  labels : (string * string prop) list;  (** labels *)
  linux_node_config : node_config__linux_node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** linux_node_config *)
  local_nvme_ssd_block_config :
    node_config__local_nvme_ssd_block_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** local_nvme_ssd_block_config *)
  local_ssd_count : float prop;  (** local_ssd_count *)
  logging_variant : string prop;  (** logging_variant *)
  machine_type : string prop;  (** machine_type *)
  metadata : (string * string prop) list;  (** metadata *)
  min_cpu_platform : string prop;  (** min_cpu_platform *)
  node_group : string prop;  (** node_group *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oauth_scopes *)
  preemptible : bool prop;  (** preemptible *)
  reservation_affinity : node_config__reservation_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** reservation_affinity *)
  resource_labels : (string * string prop) list;
      (** resource_labels *)
  resource_manager_tags : (string * string prop) list;
      (** resource_manager_tags *)
  secondary_boot_disks : node_config__secondary_boot_disks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secondary_boot_disks *)
  service_account : string prop;  (** service_account *)
  shielded_instance_config :
    node_config__shielded_instance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** shielded_instance_config *)
  sole_tenant_config : node_config__sole_tenant_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** sole_tenant_config *)
  spot : bool prop;  (** spot *)
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
  taint : node_config__taint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** taint *)
  workload_metadata_config :
    node_config__workload_metadata_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** workload_metadata_config *)
}

type node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop;  (** batch_node_count *)
  batch_percentage : float prop;  (** batch_percentage *)
  batch_soak_duration : string prop;  (** batch_soak_duration *)
}

type node_pool__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop;
      (** node_pool_soak_duration *)
  standard_rollout_policy :
    node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** standard_rollout_policy *)
}

type node_pool__upgrade_settings = {
  blue_green_settings :
    node_pool__upgrade_settings__blue_green_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** blue_green_settings *)
  max_surge : float prop;  (** max_surge *)
  max_unavailable : float prop;  (** max_unavailable *)
  strategy : string prop;  (** strategy *)
}

type node_pool__queued_provisioning = {
  enabled : bool prop;  (** enabled *)
}

type node_pool__placement_policy = {
  policy_name : string prop;  (** policy_name *)
  tpu_topology : string prop;  (** tpu_topology *)
  type_ : string prop; [@key "type"]  (** type *)
}

type node_pool__node_config__workload_metadata_config = {
  mode : string prop;  (** mode *)
}

type node_pool__node_config__taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type node_pool__node_config__sole_tenant_config__node_affinity = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type node_pool__node_config__sole_tenant_config = {
  node_affinity :
    node_pool__node_config__sole_tenant_config__node_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** node_affinity *)
}

type node_pool__node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
      (** enable_integrity_monitoring *)
  enable_secure_boot : bool prop;  (** enable_secure_boot *)
}

type node_pool__node_config__secondary_boot_disks = {
  disk_image : string prop;  (** disk_image *)
  mode : string prop;  (** mode *)
}

type node_pool__node_config__reservation_affinity = {
  consume_reservation_type : string prop;
      (** consume_reservation_type *)
  key : string prop;  (** key *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type node_pool__node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float prop;  (** local_ssd_count *)
}

type node_pool__node_config__linux_node_config = {
  cgroup_mode : string prop;  (** cgroup_mode *)
  sysctls : (string * string prop) list;  (** sysctls *)
}

type node_pool__node_config__kubelet_config = {
  cpu_cfs_quota : bool prop;  (** cpu_cfs_quota *)
  cpu_cfs_quota_period : string prop;  (** cpu_cfs_quota_period *)
  cpu_manager_policy : string prop;  (** cpu_manager_policy *)
  pod_pids_limit : float prop;  (** pod_pids_limit *)
}

type node_pool__node_config__host_maintenance_policy = {
  maintenance_interval : string prop;  (** maintenance_interval *)
}

type node_pool__node_config__gvnic = {
  enabled : bool prop;  (** enabled *)
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gpu_driver_installation_config *)
  gpu_partition_size : string prop;  (** gpu_partition_size *)
  gpu_sharing_config :
    node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gpu_sharing_config *)
  type_ : string prop; [@key "type"]  (** type *)
}

type node_pool__node_config__gcfs_config = {
  enabled : bool prop;  (** enabled *)
}

type node_pool__node_config__fast_socket = {
  enabled : bool prop;  (** enabled *)
}

type node_pool__node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float prop;  (** local_ssd_count *)
}

type node_pool__node_config__effective_taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type node_pool__node_config__containerd_config__private_registry_access_config__certificate_authority_domain_config__gcp_secret_manager_certificate_config = {
  secret_uri : string prop;  (** secret_uri *)
}

type node_pool__node_config__containerd_config__private_registry_access_config__certificate_authority_domain_config = {
  fqdns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** fqdns *)
  gcp_secret_manager_certificate_config :
    node_pool__node_config__containerd_config__private_registry_access_config__certificate_authority_domain_config__gcp_secret_manager_certificate_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gcp_secret_manager_certificate_config *)
}

type node_pool__node_config__containerd_config__private_registry_access_config = {
  certificate_authority_domain_config :
    node_pool__node_config__containerd_config__private_registry_access_config__certificate_authority_domain_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** certificate_authority_domain_config *)
  enabled : bool prop;  (** enabled *)
}

type node_pool__node_config__containerd_config = {
  private_registry_access_config :
    node_pool__node_config__containerd_config__private_registry_access_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** private_registry_access_config *)
}

type node_pool__node_config__confidential_nodes = {
  enabled : bool prop;  (** enabled *)
}

type node_pool__node_config__advanced_machine_features = {
  enable_nested_virtualization : bool prop;
      (** enable_nested_virtualization *)
  threads_per_core : float prop;  (** threads_per_core *)
}

type node_pool__node_config = {
  advanced_machine_features :
    node_pool__node_config__advanced_machine_features list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** advanced_machine_features *)
  boot_disk_kms_key : string prop;  (** boot_disk_kms_key *)
  confidential_nodes :
    node_pool__node_config__confidential_nodes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** confidential_nodes *)
  containerd_config : node_pool__node_config__containerd_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** containerd_config *)
  disk_size_gb : float prop;  (** disk_size_gb *)
  disk_type : string prop;  (** disk_type *)
  effective_taints : node_pool__node_config__effective_taints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** effective_taints *)
  enable_confidential_storage : bool prop;
      (** enable_confidential_storage *)
  ephemeral_storage_local_ssd_config :
    node_pool__node_config__ephemeral_storage_local_ssd_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ephemeral_storage_local_ssd_config *)
  fast_socket : node_pool__node_config__fast_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** fast_socket *)
  gcfs_config : node_pool__node_config__gcfs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gcfs_config *)
  guest_accelerator : node_pool__node_config__guest_accelerator list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** guest_accelerator *)
  gvnic : node_pool__node_config__gvnic list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gvnic *)
  host_maintenance_policy :
    node_pool__node_config__host_maintenance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** host_maintenance_policy *)
  image_type : string prop;  (** image_type *)
  kubelet_config : node_pool__node_config__kubelet_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** kubelet_config *)
  labels : (string * string prop) list;  (** labels *)
  linux_node_config : node_pool__node_config__linux_node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** linux_node_config *)
  local_nvme_ssd_block_config :
    node_pool__node_config__local_nvme_ssd_block_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** local_nvme_ssd_block_config *)
  local_ssd_count : float prop;  (** local_ssd_count *)
  logging_variant : string prop;  (** logging_variant *)
  machine_type : string prop;  (** machine_type *)
  metadata : (string * string prop) list;  (** metadata *)
  min_cpu_platform : string prop;  (** min_cpu_platform *)
  node_group : string prop;  (** node_group *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oauth_scopes *)
  preemptible : bool prop;  (** preemptible *)
  reservation_affinity :
    node_pool__node_config__reservation_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** reservation_affinity *)
  resource_labels : (string * string prop) list;
      (** resource_labels *)
  resource_manager_tags : (string * string prop) list;
      (** resource_manager_tags *)
  secondary_boot_disks :
    node_pool__node_config__secondary_boot_disks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secondary_boot_disks *)
  service_account : string prop;  (** service_account *)
  shielded_instance_config :
    node_pool__node_config__shielded_instance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** shielded_instance_config *)
  sole_tenant_config :
    node_pool__node_config__sole_tenant_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** sole_tenant_config *)
  spot : bool prop;  (** spot *)
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
  taint : node_pool__node_config__taint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** taint *)
  workload_metadata_config :
    node_pool__node_config__workload_metadata_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** workload_metadata_config *)
}

type node_pool__network_config__pod_cidr_overprovision_config = {
  disabled : bool prop;  (** disabled *)
}

type node_pool__network_config__network_performance_config = {
  total_egress_bandwidth_tier : string prop;
      (** total_egress_bandwidth_tier *)
}

type node_pool__network_config = {
  create_pod_range : bool prop;  (** create_pod_range *)
  enable_private_nodes : bool prop;  (** enable_private_nodes *)
  network_performance_config :
    node_pool__network_config__network_performance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_performance_config *)
  pod_cidr_overprovision_config :
    node_pool__network_config__pod_cidr_overprovision_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pod_cidr_overprovision_config *)
  pod_ipv4_cidr_block : string prop;  (** pod_ipv4_cidr_block *)
  pod_range : string prop;  (** pod_range *)
}

type node_pool__management = {
  auto_repair : bool prop;  (** auto_repair *)
  auto_upgrade : bool prop;  (** auto_upgrade *)
}

type node_pool__autoscaling = {
  location_policy : string prop;  (** location_policy *)
  max_node_count : float prop;  (** max_node_count *)
  min_node_count : float prop;  (** min_node_count *)
  total_max_node_count : float prop;  (** total_max_node_count *)
  total_min_node_count : float prop;  (** total_min_node_count *)
}

type node_pool = {
  autoscaling : node_pool__autoscaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** autoscaling *)
  initial_node_count : float prop;  (** initial_node_count *)
  instance_group_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instance_group_urls *)
  managed_instance_group_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** managed_instance_group_urls *)
  management : node_pool__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** management *)
  max_pods_per_node : float prop;  (** max_pods_per_node *)
  name : string prop;  (** name *)
  name_prefix : string prop;  (** name_prefix *)
  network_config : node_pool__network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_config *)
  node_config : node_pool__node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** node_config *)
  node_count : float prop;  (** node_count *)
  node_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** node_locations *)
  placement_policy : node_pool__placement_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** placement_policy *)
  queued_provisioning : node_pool__queued_provisioning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** queued_provisioning *)
  upgrade_settings : node_pool__upgrade_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** upgrade_settings *)
  version : string prop;  (** version *)
}

type node_pool_auto_config__network_tags = {
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type node_pool_auto_config = {
  network_tags : node_pool_auto_config__network_tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_tags *)
  resource_manager_tags : (string * string prop) list;
      (** resource_manager_tags *)
}

type node_pool_defaults__node_config_defaults__containerd_config__private_registry_access_config__certificate_authority_domain_config__gcp_secret_manager_certificate_config = {
  secret_uri : string prop;  (** secret_uri *)
}

type node_pool_defaults__node_config_defaults__containerd_config__private_registry_access_config__certificate_authority_domain_config = {
  fqdns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** fqdns *)
  gcp_secret_manager_certificate_config :
    node_pool_defaults__node_config_defaults__containerd_config__private_registry_access_config__certificate_authority_domain_config__gcp_secret_manager_certificate_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gcp_secret_manager_certificate_config *)
}

type node_pool_defaults__node_config_defaults__containerd_config__private_registry_access_config = {
  certificate_authority_domain_config :
    node_pool_defaults__node_config_defaults__containerd_config__private_registry_access_config__certificate_authority_domain_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** certificate_authority_domain_config *)
  enabled : bool prop;  (** enabled *)
}

type node_pool_defaults__node_config_defaults__containerd_config = {
  private_registry_access_config :
    node_pool_defaults__node_config_defaults__containerd_config__private_registry_access_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** private_registry_access_config *)
}

type node_pool_defaults__node_config_defaults = {
  containerd_config :
    node_pool_defaults__node_config_defaults__containerd_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** containerd_config *)
  logging_variant : string prop;  (** logging_variant *)
}

type node_pool_defaults = {
  node_config_defaults :
    node_pool_defaults__node_config_defaults list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** node_config_defaults *)
}

type notification_config__pubsub__filter = {
  event_type : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** event_type *)
}

type notification_config__pubsub = {
  enabled : bool prop;  (** enabled *)
  filter : notification_config__pubsub__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** filter *)
  topic : string prop;  (** topic *)
}

type notification_config = {
  pubsub : notification_config__pubsub list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pubsub *)
}

type private_cluster_config__master_global_access_config = {
  enabled : bool prop;  (** enabled *)
}

type private_cluster_config = {
  enable_private_endpoint : bool prop;
      (** enable_private_endpoint *)
  enable_private_nodes : bool prop;  (** enable_private_nodes *)
  master_global_access_config :
    private_cluster_config__master_global_access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** master_global_access_config *)
  master_ipv4_cidr_block : string prop;
      (** master_ipv4_cidr_block *)
  peering_name : string prop;  (** peering_name *)
  private_endpoint : string prop;  (** private_endpoint *)
  private_endpoint_subnetwork : string prop;
      (** private_endpoint_subnetwork *)
  public_endpoint : string prop;  (** public_endpoint *)
}

type release_channel = { channel : string prop  (** channel *) }

type resource_usage_export_config__bigquery_destination = {
  dataset_id : string prop;  (** dataset_id *)
}

type resource_usage_export_config = {
  bigquery_destination :
    resource_usage_export_config__bigquery_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** bigquery_destination *)
  enable_network_egress_metering : bool prop;
      (** enable_network_egress_metering *)
  enable_resource_consumption_metering : bool prop;
      (** enable_resource_consumption_metering *)
}

type security_posture_config = {
  mode : string prop;  (** mode *)
  vulnerability_mode : string prop;  (** vulnerability_mode *)
}

type service_external_ips_config = {
  enabled : bool prop;  (** enabled *)
}

type vertical_pod_autoscaling = {
  enabled : bool prop;  (** enabled *)
}

type workload_identity_config = {
  workload_pool : string prop;  (** workload_pool *)
}

type google_container_cluster

val google_container_cluster :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_container_cluster

val yojson_of_google_container_cluster :
  google_container_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  addons_config : addons_config list prop;
  allow_net_admin : bool prop;
  authenticator_groups_config :
    authenticator_groups_config list prop;
  binary_authorization : binary_authorization list prop;
  cluster_autoscaling : cluster_autoscaling list prop;
  cluster_ipv4_cidr : string prop;
  confidential_nodes : confidential_nodes list prop;
  cost_management_config : cost_management_config list prop;
  database_encryption : database_encryption list prop;
  datapath_provider : string prop;
  default_max_pods_per_node : float prop;
  default_snat_status : default_snat_status list prop;
  deletion_protection : bool prop;
  description : string prop;
  dns_config : dns_config list prop;
  enable_autopilot : bool prop;
  enable_cilium_clusterwide_network_policy : bool prop;
  enable_intranode_visibility : bool prop;
  enable_k8s_beta_apis : enable_k8s_beta_apis list prop;
  enable_kubernetes_alpha : bool prop;
  enable_l4_ilb_subsetting : bool prop;
  enable_legacy_abac : bool prop;
  enable_shielded_nodes : bool prop;
  enable_tpu : bool prop;
  endpoint : string prop;
  fleet : fleet list prop;
  gateway_api_config : gateway_api_config list prop;
  id : string prop;
  identity_service_config : identity_service_config list prop;
  initial_node_count : float prop;
  ip_allocation_policy : ip_allocation_policy list prop;
  label_fingerprint : string prop;
  location : string prop;
  logging_config : logging_config list prop;
  logging_service : string prop;
  maintenance_policy : maintenance_policy list prop;
  master_auth : master_auth list prop;
  master_authorized_networks_config :
    master_authorized_networks_config list prop;
  master_version : string prop;
  mesh_certificates : mesh_certificates list prop;
  min_master_version : string prop;
  monitoring_config : monitoring_config list prop;
  monitoring_service : string prop;
  name : string prop;
  network : string prop;
  network_policy : network_policy list prop;
  networking_mode : string prop;
  node_config : node_config list prop;
  node_locations : string list prop;
  node_pool : node_pool list prop;
  node_pool_auto_config : node_pool_auto_config list prop;
  node_pool_defaults : node_pool_defaults list prop;
  node_version : string prop;
  notification_config : notification_config list prop;
  operation : string prop;
  private_cluster_config : private_cluster_config list prop;
  private_ipv6_google_access : string prop;
  project : string prop;
  release_channel : release_channel list prop;
  remove_default_node_pool : bool prop;
  resource_labels : (string * string) list prop;
  resource_usage_export_config :
    resource_usage_export_config list prop;
  security_posture_config : security_posture_config list prop;
  self_link : string prop;
  service_external_ips_config :
    service_external_ips_config list prop;
  services_ipv4_cidr : string prop;
  subnetwork : string prop;
  tpu_ipv4_cidr_block : string prop;
  vertical_pod_autoscaling : vertical_pod_autoscaling list prop;
  workload_identity_config : workload_identity_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
