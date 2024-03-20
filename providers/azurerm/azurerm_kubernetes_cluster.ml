(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aci_connector_linux__connector_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type aci_connector_linux = {
  subnet_name : string prop;  (** subnet_name *)
}
[@@deriving yojson_of]
(** aci_connector_linux *)

type api_server_access_profile = {
  authorized_ip_ranges : string prop list option; [@option]
      (** authorized_ip_ranges *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  vnet_integration_enabled : bool prop option; [@option]
      (** vnet_integration_enabled *)
}
[@@deriving yojson_of]
(** api_server_access_profile *)

type auto_scaler_profile = {
  balance_similar_node_groups : bool prop option; [@option]
      (** balance_similar_node_groups *)
  empty_bulk_delete_max : string prop option; [@option]
      (** empty_bulk_delete_max *)
  expander : string prop option; [@option]  (** expander *)
  max_graceful_termination_sec : string prop option; [@option]
      (** max_graceful_termination_sec *)
  max_node_provisioning_time : string prop option; [@option]
      (** max_node_provisioning_time *)
  max_unready_nodes : float prop option; [@option]
      (** max_unready_nodes *)
  max_unready_percentage : float prop option; [@option]
      (** max_unready_percentage *)
  new_pod_scale_up_delay : string prop option; [@option]
      (** new_pod_scale_up_delay *)
  scale_down_delay_after_add : string prop option; [@option]
      (** scale_down_delay_after_add *)
  scale_down_delay_after_delete : string prop option; [@option]
      (** scale_down_delay_after_delete *)
  scale_down_delay_after_failure : string prop option; [@option]
      (** scale_down_delay_after_failure *)
  scale_down_unneeded : string prop option; [@option]
      (** scale_down_unneeded *)
  scale_down_unready : string prop option; [@option]
      (** scale_down_unready *)
  scale_down_utilization_threshold : string prop option; [@option]
      (** scale_down_utilization_threshold *)
  scan_interval : string prop option; [@option]  (** scan_interval *)
  skip_nodes_with_local_storage : bool prop option; [@option]
      (** skip_nodes_with_local_storage *)
  skip_nodes_with_system_pods : bool prop option; [@option]
      (** skip_nodes_with_system_pods *)
}
[@@deriving yojson_of]
(** auto_scaler_profile *)

type azure_active_directory_role_based_access_control = {
  admin_group_object_ids : string prop list option; [@option]
      (** admin_group_object_ids *)
  azure_rbac_enabled : bool prop option; [@option]
      (** azure_rbac_enabled *)
  client_app_id : string prop option; [@option]  (** client_app_id *)
  managed : bool prop option; [@option]  (** managed *)
  server_app_id : string prop option; [@option]  (** server_app_id *)
  server_app_secret : string prop option; [@option]
      (** server_app_secret *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azure_active_directory_role_based_access_control *)

type confidential_computing = {
  sgx_quote_helper_enabled : bool prop;
      (** sgx_quote_helper_enabled *)
}
[@@deriving yojson_of]
(** confidential_computing *)

type default_node_pool__kubelet_config = {
  allowed_unsafe_sysctls : string prop list option; [@option]
      (** allowed_unsafe_sysctls *)
  container_log_max_line : float prop option; [@option]
      (** container_log_max_line *)
  container_log_max_size_mb : float prop option; [@option]
      (** container_log_max_size_mb *)
  cpu_cfs_quota_enabled : bool prop option; [@option]
      (** cpu_cfs_quota_enabled *)
  cpu_cfs_quota_period : string prop option; [@option]
      (** cpu_cfs_quota_period *)
  cpu_manager_policy : string prop option; [@option]
      (** cpu_manager_policy *)
  image_gc_high_threshold : float prop option; [@option]
      (** image_gc_high_threshold *)
  image_gc_low_threshold : float prop option; [@option]
      (** image_gc_low_threshold *)
  pod_max_pid : float prop option; [@option]  (** pod_max_pid *)
  topology_manager_policy : string prop option; [@option]
      (** topology_manager_policy *)
}
[@@deriving yojson_of]
(** default_node_pool__kubelet_config *)

type default_node_pool__linux_os_config__sysctl_config = {
  fs_aio_max_nr : float prop option; [@option]  (** fs_aio_max_nr *)
  fs_file_max : float prop option; [@option]  (** fs_file_max *)
  fs_inotify_max_user_watches : float prop option; [@option]
      (** fs_inotify_max_user_watches *)
  fs_nr_open : float prop option; [@option]  (** fs_nr_open *)
  kernel_threads_max : float prop option; [@option]
      (** kernel_threads_max *)
  net_core_netdev_max_backlog : float prop option; [@option]
      (** net_core_netdev_max_backlog *)
  net_core_optmem_max : float prop option; [@option]
      (** net_core_optmem_max *)
  net_core_rmem_default : float prop option; [@option]
      (** net_core_rmem_default *)
  net_core_rmem_max : float prop option; [@option]
      (** net_core_rmem_max *)
  net_core_somaxconn : float prop option; [@option]
      (** net_core_somaxconn *)
  net_core_wmem_default : float prop option; [@option]
      (** net_core_wmem_default *)
  net_core_wmem_max : float prop option; [@option]
      (** net_core_wmem_max *)
  net_ipv4_ip_local_port_range_max : float prop option; [@option]
      (** net_ipv4_ip_local_port_range_max *)
  net_ipv4_ip_local_port_range_min : float prop option; [@option]
      (** net_ipv4_ip_local_port_range_min *)
  net_ipv4_neigh_default_gc_thresh1 : float prop option; [@option]
      (** net_ipv4_neigh_default_gc_thresh1 *)
  net_ipv4_neigh_default_gc_thresh2 : float prop option; [@option]
      (** net_ipv4_neigh_default_gc_thresh2 *)
  net_ipv4_neigh_default_gc_thresh3 : float prop option; [@option]
      (** net_ipv4_neigh_default_gc_thresh3 *)
  net_ipv4_tcp_fin_timeout : float prop option; [@option]
      (** net_ipv4_tcp_fin_timeout *)
  net_ipv4_tcp_keepalive_intvl : float prop option; [@option]
      (** net_ipv4_tcp_keepalive_intvl *)
  net_ipv4_tcp_keepalive_probes : float prop option; [@option]
      (** net_ipv4_tcp_keepalive_probes *)
  net_ipv4_tcp_keepalive_time : float prop option; [@option]
      (** net_ipv4_tcp_keepalive_time *)
  net_ipv4_tcp_max_syn_backlog : float prop option; [@option]
      (** net_ipv4_tcp_max_syn_backlog *)
  net_ipv4_tcp_max_tw_buckets : float prop option; [@option]
      (** net_ipv4_tcp_max_tw_buckets *)
  net_ipv4_tcp_tw_reuse : bool prop option; [@option]
      (** net_ipv4_tcp_tw_reuse *)
  net_netfilter_nf_conntrack_buckets : float prop option; [@option]
      (** net_netfilter_nf_conntrack_buckets *)
  net_netfilter_nf_conntrack_max : float prop option; [@option]
      (** net_netfilter_nf_conntrack_max *)
  vm_max_map_count : float prop option; [@option]
      (** vm_max_map_count *)
  vm_swappiness : float prop option; [@option]  (** vm_swappiness *)
  vm_vfs_cache_pressure : float prop option; [@option]
      (** vm_vfs_cache_pressure *)
}
[@@deriving yojson_of]
(** default_node_pool__linux_os_config__sysctl_config *)

type default_node_pool__linux_os_config = {
  swap_file_size_mb : float prop option; [@option]
      (** swap_file_size_mb *)
  transparent_huge_page_defrag : string prop option; [@option]
      (** transparent_huge_page_defrag *)
  transparent_huge_page_enabled : string prop option; [@option]
      (** transparent_huge_page_enabled *)
  sysctl_config :
    default_node_pool__linux_os_config__sysctl_config list;
}
[@@deriving yojson_of]
(** default_node_pool__linux_os_config *)

type default_node_pool__node_network_profile__allowed_host_ports = {
  port_end : float prop option; [@option]  (** port_end *)
  port_start : float prop option; [@option]  (** port_start *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** default_node_pool__node_network_profile__allowed_host_ports *)

type default_node_pool__node_network_profile = {
  application_security_group_ids : string prop list option; [@option]
      (** application_security_group_ids *)
  node_public_ip_tags : (string * string prop) list option; [@option]
      (** node_public_ip_tags *)
  allowed_host_ports :
    default_node_pool__node_network_profile__allowed_host_ports list;
}
[@@deriving yojson_of]
(** default_node_pool__node_network_profile *)

type default_node_pool__upgrade_settings = {
  max_surge : string prop;  (** max_surge *)
}
[@@deriving yojson_of]
(** default_node_pool__upgrade_settings *)

type default_node_pool = {
  capacity_reservation_group_id : string prop option; [@option]
      (** capacity_reservation_group_id *)
  custom_ca_trust_enabled : bool prop option; [@option]
      (** custom_ca_trust_enabled *)
  enable_auto_scaling : bool prop option; [@option]
      (** enable_auto_scaling *)
  enable_host_encryption : bool prop option; [@option]
      (** enable_host_encryption *)
  enable_node_public_ip : bool prop option; [@option]
      (** enable_node_public_ip *)
  fips_enabled : bool prop option; [@option]  (** fips_enabled *)
  gpu_instance : string prop option; [@option]  (** gpu_instance *)
  host_group_id : string prop option; [@option]  (** host_group_id *)
  kubelet_disk_type : string prop option; [@option]
      (** kubelet_disk_type *)
  max_count : float prop option; [@option]  (** max_count *)
  max_pods : float prop option; [@option]  (** max_pods *)
  message_of_the_day : string prop option; [@option]
      (** message_of_the_day *)
  min_count : float prop option; [@option]  (** min_count *)
  name : string prop;  (** name *)
  node_count : float prop option; [@option]  (** node_count *)
  node_labels : (string * string prop) list option; [@option]
      (** node_labels *)
  node_public_ip_prefix_id : string prop option; [@option]
      (** node_public_ip_prefix_id *)
  node_taints : string prop list option; [@option]
      (** node_taints *)
  only_critical_addons_enabled : bool prop option; [@option]
      (** only_critical_addons_enabled *)
  orchestrator_version : string prop option; [@option]
      (** orchestrator_version *)
  os_disk_size_gb : float prop option; [@option]
      (** os_disk_size_gb *)
  os_disk_type : string prop option; [@option]  (** os_disk_type *)
  os_sku : string prop option; [@option]  (** os_sku *)
  pod_subnet_id : string prop option; [@option]  (** pod_subnet_id *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  scale_down_mode : string prop option; [@option]
      (** scale_down_mode *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  temporary_name_for_rotation : string prop option; [@option]
      (** temporary_name_for_rotation *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  ultra_ssd_enabled : bool prop option; [@option]
      (** ultra_ssd_enabled *)
  vm_size : string prop;  (** vm_size *)
  vnet_subnet_id : string prop option; [@option]
      (** vnet_subnet_id *)
  workload_runtime : string prop option; [@option]
      (** workload_runtime *)
  zones : string prop list option; [@option]  (** zones *)
  kubelet_config : default_node_pool__kubelet_config list;
  linux_os_config : default_node_pool__linux_os_config list;
  node_network_profile :
    default_node_pool__node_network_profile list;
  upgrade_settings : default_node_pool__upgrade_settings list;
}
[@@deriving yojson_of]
(** default_node_pool *)

type http_proxy_config = {
  http_proxy : string prop option; [@option]  (** http_proxy *)
  https_proxy : string prop option; [@option]  (** https_proxy *)
  no_proxy : string prop list option; [@option]  (** no_proxy *)
  trusted_ca : string prop option; [@option]  (** trusted_ca *)
}
[@@deriving yojson_of]
(** http_proxy_config *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type ingress_application_gateway__ingress_application_gateway_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type ingress_application_gateway = {
  gateway_id : string prop option; [@option]  (** gateway_id *)
  gateway_name : string prop option; [@option]  (** gateway_name *)
  subnet_cidr : string prop option; [@option]  (** subnet_cidr *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** ingress_application_gateway *)

type key_management_service = {
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  key_vault_network_access : string prop option; [@option]
      (** key_vault_network_access *)
}
[@@deriving yojson_of]
(** key_management_service *)

type key_vault_secrets_provider__secret_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type key_vault_secrets_provider = {
  secret_rotation_enabled : bool prop option; [@option]
      (** secret_rotation_enabled *)
  secret_rotation_interval : string prop option; [@option]
      (** secret_rotation_interval *)
}
[@@deriving yojson_of]
(** key_vault_secrets_provider *)

type kubelet_identity = {
  client_id : string prop option; [@option]  (** client_id *)
  object_id : string prop option; [@option]  (** object_id *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** kubelet_identity *)

type linux_profile__ssh_key = {
  key_data : string prop;  (** key_data *)
}
[@@deriving yojson_of]
(** linux_profile__ssh_key *)

type linux_profile = {
  admin_username : string prop;  (** admin_username *)
  ssh_key : linux_profile__ssh_key list;
}
[@@deriving yojson_of]
(** linux_profile *)

type maintenance_window__allowed = {
  day : string prop;  (** day *)
  hours : float prop list;  (** hours *)
}
[@@deriving yojson_of]
(** maintenance_window__allowed *)

type maintenance_window__not_allowed = {
  end_ : string prop; [@key "end"]  (** end *)
  start : string prop;  (** start *)
}
[@@deriving yojson_of]
(** maintenance_window__not_allowed *)

type maintenance_window = {
  allowed : maintenance_window__allowed list;
  not_allowed : maintenance_window__not_allowed list;
}
[@@deriving yojson_of]
(** maintenance_window *)

type maintenance_window_auto_upgrade__not_allowed = {
  end_ : string prop; [@key "end"]  (** end *)
  start : string prop;  (** start *)
}
[@@deriving yojson_of]
(** maintenance_window_auto_upgrade__not_allowed *)

type maintenance_window_auto_upgrade = {
  day_of_month : float prop option; [@option]  (** day_of_month *)
  day_of_week : string prop option; [@option]  (** day_of_week *)
  duration : float prop;  (** duration *)
  frequency : string prop;  (** frequency *)
  interval : float prop;  (** interval *)
  start_date : string prop option; [@option]  (** start_date *)
  start_time : string prop option; [@option]  (** start_time *)
  utc_offset : string prop option; [@option]  (** utc_offset *)
  week_index : string prop option; [@option]  (** week_index *)
  not_allowed : maintenance_window_auto_upgrade__not_allowed list;
}
[@@deriving yojson_of]
(** maintenance_window_auto_upgrade *)

type maintenance_window_node_os__not_allowed = {
  end_ : string prop; [@key "end"]  (** end *)
  start : string prop;  (** start *)
}
[@@deriving yojson_of]
(** maintenance_window_node_os__not_allowed *)

type maintenance_window_node_os = {
  day_of_month : float prop option; [@option]  (** day_of_month *)
  day_of_week : string prop option; [@option]  (** day_of_week *)
  duration : float prop;  (** duration *)
  frequency : string prop;  (** frequency *)
  interval : float prop;  (** interval *)
  start_date : string prop option; [@option]  (** start_date *)
  start_time : string prop option; [@option]  (** start_time *)
  utc_offset : string prop option; [@option]  (** utc_offset *)
  week_index : string prop option; [@option]  (** week_index *)
  not_allowed : maintenance_window_node_os__not_allowed list;
}
[@@deriving yojson_of]
(** maintenance_window_node_os *)

type microsoft_defender = {
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
}
[@@deriving yojson_of]
(** microsoft_defender *)

type monitor_metrics = {
  annotations_allowed : string prop option; [@option]
      (** annotations_allowed *)
  labels_allowed : string prop option; [@option]
      (** labels_allowed *)
}
[@@deriving yojson_of]
(** monitor_metrics *)

type network_profile__load_balancer_profile = {
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  managed_outbound_ip_count : float prop option; [@option]
      (** managed_outbound_ip_count *)
  managed_outbound_ipv6_count : float prop option; [@option]
      (** managed_outbound_ipv6_count *)
  outbound_ip_address_ids : string prop list option; [@option]
      (** outbound_ip_address_ids *)
  outbound_ip_prefix_ids : string prop list option; [@option]
      (** outbound_ip_prefix_ids *)
  outbound_ports_allocated : float prop option; [@option]
      (** outbound_ports_allocated *)
}
[@@deriving yojson_of]
(** network_profile__load_balancer_profile *)

type network_profile__nat_gateway_profile = {
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  managed_outbound_ip_count : float prop option; [@option]
      (** managed_outbound_ip_count *)
}
[@@deriving yojson_of]
(** network_profile__nat_gateway_profile *)

type network_profile = {
  dns_service_ip : string prop option; [@option]
      (** dns_service_ip *)
  docker_bridge_cidr : string prop option; [@option]
      (** docker_bridge_cidr *)
  ebpf_data_plane : string prop option; [@option]
      (** ebpf_data_plane *)
  ip_versions : string prop list option; [@option]
      (** ip_versions *)
  load_balancer_sku : string prop option; [@option]
      (** load_balancer_sku *)
  network_mode : string prop option; [@option]  (** network_mode *)
  network_plugin : string prop;  (** network_plugin *)
  network_plugin_mode : string prop option; [@option]
      (** network_plugin_mode *)
  network_policy : string prop option; [@option]
      (** network_policy *)
  outbound_type : string prop option; [@option]  (** outbound_type *)
  pod_cidr : string prop option; [@option]  (** pod_cidr *)
  pod_cidrs : string prop list option; [@option]  (** pod_cidrs *)
  service_cidr : string prop option; [@option]  (** service_cidr *)
  service_cidrs : string prop list option; [@option]
      (** service_cidrs *)
  load_balancer_profile :
    network_profile__load_balancer_profile list;
  nat_gateway_profile : network_profile__nat_gateway_profile list;
}
[@@deriving yojson_of]
(** network_profile *)

type oms_agent__oms_agent_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type oms_agent = {
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  msi_auth_for_monitoring_enabled : bool prop option; [@option]
      (** msi_auth_for_monitoring_enabled *)
}
[@@deriving yojson_of]
(** oms_agent *)

type service_mesh_profile = {
  external_ingress_gateway_enabled : bool prop option; [@option]
      (** external_ingress_gateway_enabled *)
  internal_ingress_gateway_enabled : bool prop option; [@option]
      (** internal_ingress_gateway_enabled *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** service_mesh_profile *)

type service_principal = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
}
[@@deriving yojson_of]
(** service_principal *)

type storage_profile = {
  blob_driver_enabled : bool prop option; [@option]
      (** blob_driver_enabled *)
  disk_driver_enabled : bool prop option; [@option]
      (** disk_driver_enabled *)
  disk_driver_version : string prop option; [@option]
      (** disk_driver_version *)
  file_driver_enabled : bool prop option; [@option]
      (** file_driver_enabled *)
  snapshot_controller_enabled : bool prop option; [@option]
      (** snapshot_controller_enabled *)
}
[@@deriving yojson_of]
(** storage_profile *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type web_app_routing__web_app_routing_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type web_app_routing = {
  dns_zone_id : string prop;  (** dns_zone_id *)
}
[@@deriving yojson_of]
(** web_app_routing *)

type windows_profile__gmsa = {
  dns_server : string prop;  (** dns_server *)
  root_domain : string prop;  (** root_domain *)
}
[@@deriving yojson_of]
(** windows_profile__gmsa *)

type windows_profile = {
  admin_password : string prop option; [@option]
      (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  license : string prop option; [@option]  (** license *)
  gmsa : windows_profile__gmsa list;
}
[@@deriving yojson_of]
(** windows_profile *)

type workload_autoscaler_profile = {
  keda_enabled : bool prop option; [@option]  (** keda_enabled *)
  vertical_pod_autoscaler_enabled : bool prop option; [@option]
      (** vertical_pod_autoscaler_enabled *)
}
[@@deriving yojson_of]
(** workload_autoscaler_profile *)

type kube_admin_config = {
  client_certificate : string prop;  (** client_certificate *)
  client_key : string prop;  (** client_key *)
  cluster_ca_certificate : string prop;
      (** cluster_ca_certificate *)
  host : string prop;  (** host *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]

type kube_config = {
  client_certificate : string prop;  (** client_certificate *)
  client_key : string prop;  (** client_key *)
  cluster_ca_certificate : string prop;
      (** cluster_ca_certificate *)
  host : string prop;  (** host *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster = {
  api_server_authorized_ip_ranges : string prop list option;
      [@option]
      (** api_server_authorized_ip_ranges *)
  automatic_channel_upgrade : string prop option; [@option]
      (** automatic_channel_upgrade *)
  azure_policy_enabled : bool prop option; [@option]
      (** azure_policy_enabled *)
  custom_ca_trust_certificates_base64 : string prop list option;
      [@option]
      (** custom_ca_trust_certificates_base64 *)
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  dns_prefix : string prop option; [@option]  (** dns_prefix *)
  dns_prefix_private_cluster : string prop option; [@option]
      (** dns_prefix_private_cluster *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  enable_pod_security_policy : bool prop option; [@option]
      (** enable_pod_security_policy *)
  http_application_routing_enabled : bool prop option; [@option]
      (** http_application_routing_enabled *)
  id : string prop option; [@option]  (** id *)
  image_cleaner_enabled : bool prop option; [@option]
      (** image_cleaner_enabled *)
  image_cleaner_interval_hours : float prop option; [@option]
      (** image_cleaner_interval_hours *)
  kubernetes_version : string prop option; [@option]
      (** kubernetes_version *)
  local_account_disabled : bool prop option; [@option]
      (** local_account_disabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  node_os_channel_upgrade : string prop option; [@option]
      (** node_os_channel_upgrade *)
  node_resource_group : string prop option; [@option]
      (** node_resource_group *)
  oidc_issuer_enabled : bool prop option; [@option]
      (** oidc_issuer_enabled *)
  open_service_mesh_enabled : bool prop option; [@option]
      (** open_service_mesh_enabled *)
  private_cluster_enabled : bool prop option; [@option]
      (** private_cluster_enabled *)
  private_cluster_public_fqdn_enabled : bool prop option; [@option]
      (** private_cluster_public_fqdn_enabled *)
  private_dns_zone_id : string prop option; [@option]
      (** private_dns_zone_id *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  role_based_access_control_enabled : bool prop option; [@option]
      (** role_based_access_control_enabled *)
  run_command_enabled : bool prop option; [@option]
      (** run_command_enabled *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  support_plan : string prop option; [@option]  (** support_plan *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workload_identity_enabled : bool prop option; [@option]
      (** workload_identity_enabled *)
  aci_connector_linux : aci_connector_linux list;
  api_server_access_profile : api_server_access_profile list;
  auto_scaler_profile : auto_scaler_profile list;
  azure_active_directory_role_based_access_control :
    azure_active_directory_role_based_access_control list;
  confidential_computing : confidential_computing list;
  default_node_pool : default_node_pool list;
  http_proxy_config : http_proxy_config list;
  identity : identity list;
  ingress_application_gateway : ingress_application_gateway list;
  key_management_service : key_management_service list;
  key_vault_secrets_provider : key_vault_secrets_provider list;
  kubelet_identity : kubelet_identity list;
  linux_profile : linux_profile list;
  maintenance_window : maintenance_window list;
  maintenance_window_auto_upgrade :
    maintenance_window_auto_upgrade list;
  maintenance_window_node_os : maintenance_window_node_os list;
  microsoft_defender : microsoft_defender list;
  monitor_metrics : monitor_metrics list;
  network_profile : network_profile list;
  oms_agent : oms_agent list;
  service_mesh_profile : service_mesh_profile list;
  service_principal : service_principal list;
  storage_profile : storage_profile list;
  timeouts : timeouts option;
  web_app_routing : web_app_routing list;
  windows_profile : windows_profile list;
  workload_autoscaler_profile : workload_autoscaler_profile list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster *)

let aci_connector_linux ~subnet_name () : aci_connector_linux =
  { subnet_name }

let api_server_access_profile ?authorized_ip_ranges ?subnet_id
    ?vnet_integration_enabled () : api_server_access_profile =
  { authorized_ip_ranges; subnet_id; vnet_integration_enabled }

let auto_scaler_profile ?balance_similar_node_groups
    ?empty_bulk_delete_max ?expander ?max_graceful_termination_sec
    ?max_node_provisioning_time ?max_unready_nodes
    ?max_unready_percentage ?new_pod_scale_up_delay
    ?scale_down_delay_after_add ?scale_down_delay_after_delete
    ?scale_down_delay_after_failure ?scale_down_unneeded
    ?scale_down_unready ?scale_down_utilization_threshold
    ?scan_interval ?skip_nodes_with_local_storage
    ?skip_nodes_with_system_pods () : auto_scaler_profile =
  {
    balance_similar_node_groups;
    empty_bulk_delete_max;
    expander;
    max_graceful_termination_sec;
    max_node_provisioning_time;
    max_unready_nodes;
    max_unready_percentage;
    new_pod_scale_up_delay;
    scale_down_delay_after_add;
    scale_down_delay_after_delete;
    scale_down_delay_after_failure;
    scale_down_unneeded;
    scale_down_unready;
    scale_down_utilization_threshold;
    scan_interval;
    skip_nodes_with_local_storage;
    skip_nodes_with_system_pods;
  }

let azure_active_directory_role_based_access_control
    ?admin_group_object_ids ?azure_rbac_enabled ?client_app_id
    ?managed ?server_app_id ?server_app_secret ?tenant_id () :
    azure_active_directory_role_based_access_control =
  {
    admin_group_object_ids;
    azure_rbac_enabled;
    client_app_id;
    managed;
    server_app_id;
    server_app_secret;
    tenant_id;
  }

let confidential_computing ~sgx_quote_helper_enabled () :
    confidential_computing =
  { sgx_quote_helper_enabled }

let default_node_pool__kubelet_config ?allowed_unsafe_sysctls
    ?container_log_max_line ?container_log_max_size_mb
    ?cpu_cfs_quota_enabled ?cpu_cfs_quota_period ?cpu_manager_policy
    ?image_gc_high_threshold ?image_gc_low_threshold ?pod_max_pid
    ?topology_manager_policy () : default_node_pool__kubelet_config =
  {
    allowed_unsafe_sysctls;
    container_log_max_line;
    container_log_max_size_mb;
    cpu_cfs_quota_enabled;
    cpu_cfs_quota_period;
    cpu_manager_policy;
    image_gc_high_threshold;
    image_gc_low_threshold;
    pod_max_pid;
    topology_manager_policy;
  }

let default_node_pool__linux_os_config__sysctl_config ?fs_aio_max_nr
    ?fs_file_max ?fs_inotify_max_user_watches ?fs_nr_open
    ?kernel_threads_max ?net_core_netdev_max_backlog
    ?net_core_optmem_max ?net_core_rmem_default ?net_core_rmem_max
    ?net_core_somaxconn ?net_core_wmem_default ?net_core_wmem_max
    ?net_ipv4_ip_local_port_range_max
    ?net_ipv4_ip_local_port_range_min
    ?net_ipv4_neigh_default_gc_thresh1
    ?net_ipv4_neigh_default_gc_thresh2
    ?net_ipv4_neigh_default_gc_thresh3 ?net_ipv4_tcp_fin_timeout
    ?net_ipv4_tcp_keepalive_intvl ?net_ipv4_tcp_keepalive_probes
    ?net_ipv4_tcp_keepalive_time ?net_ipv4_tcp_max_syn_backlog
    ?net_ipv4_tcp_max_tw_buckets ?net_ipv4_tcp_tw_reuse
    ?net_netfilter_nf_conntrack_buckets
    ?net_netfilter_nf_conntrack_max ?vm_max_map_count ?vm_swappiness
    ?vm_vfs_cache_pressure () :
    default_node_pool__linux_os_config__sysctl_config =
  {
    fs_aio_max_nr;
    fs_file_max;
    fs_inotify_max_user_watches;
    fs_nr_open;
    kernel_threads_max;
    net_core_netdev_max_backlog;
    net_core_optmem_max;
    net_core_rmem_default;
    net_core_rmem_max;
    net_core_somaxconn;
    net_core_wmem_default;
    net_core_wmem_max;
    net_ipv4_ip_local_port_range_max;
    net_ipv4_ip_local_port_range_min;
    net_ipv4_neigh_default_gc_thresh1;
    net_ipv4_neigh_default_gc_thresh2;
    net_ipv4_neigh_default_gc_thresh3;
    net_ipv4_tcp_fin_timeout;
    net_ipv4_tcp_keepalive_intvl;
    net_ipv4_tcp_keepalive_probes;
    net_ipv4_tcp_keepalive_time;
    net_ipv4_tcp_max_syn_backlog;
    net_ipv4_tcp_max_tw_buckets;
    net_ipv4_tcp_tw_reuse;
    net_netfilter_nf_conntrack_buckets;
    net_netfilter_nf_conntrack_max;
    vm_max_map_count;
    vm_swappiness;
    vm_vfs_cache_pressure;
  }

let default_node_pool__linux_os_config ?swap_file_size_mb
    ?transparent_huge_page_defrag ?transparent_huge_page_enabled
    ~sysctl_config () : default_node_pool__linux_os_config =
  {
    swap_file_size_mb;
    transparent_huge_page_defrag;
    transparent_huge_page_enabled;
    sysctl_config;
  }

let default_node_pool__node_network_profile__allowed_host_ports
    ?port_end ?port_start ?protocol () :
    default_node_pool__node_network_profile__allowed_host_ports =
  { port_end; port_start; protocol }

let default_node_pool__node_network_profile
    ?application_security_group_ids ?node_public_ip_tags
    ~allowed_host_ports () : default_node_pool__node_network_profile
    =
  {
    application_security_group_ids;
    node_public_ip_tags;
    allowed_host_ports;
  }

let default_node_pool__upgrade_settings ~max_surge () :
    default_node_pool__upgrade_settings =
  { max_surge }

let default_node_pool ?capacity_reservation_group_id
    ?custom_ca_trust_enabled ?enable_auto_scaling
    ?enable_host_encryption ?enable_node_public_ip ?fips_enabled
    ?gpu_instance ?host_group_id ?kubelet_disk_type ?max_count
    ?max_pods ?message_of_the_day ?min_count ?node_count ?node_labels
    ?node_public_ip_prefix_id ?node_taints
    ?only_critical_addons_enabled ?orchestrator_version
    ?os_disk_size_gb ?os_disk_type ?os_sku ?pod_subnet_id
    ?proximity_placement_group_id ?scale_down_mode ?snapshot_id ?tags
    ?temporary_name_for_rotation ?type_ ?ultra_ssd_enabled
    ?vnet_subnet_id ?workload_runtime ?zones ~name ~vm_size
    ~kubelet_config ~linux_os_config ~node_network_profile
    ~upgrade_settings () : default_node_pool =
  {
    capacity_reservation_group_id;
    custom_ca_trust_enabled;
    enable_auto_scaling;
    enable_host_encryption;
    enable_node_public_ip;
    fips_enabled;
    gpu_instance;
    host_group_id;
    kubelet_disk_type;
    max_count;
    max_pods;
    message_of_the_day;
    min_count;
    name;
    node_count;
    node_labels;
    node_public_ip_prefix_id;
    node_taints;
    only_critical_addons_enabled;
    orchestrator_version;
    os_disk_size_gb;
    os_disk_type;
    os_sku;
    pod_subnet_id;
    proximity_placement_group_id;
    scale_down_mode;
    snapshot_id;
    tags;
    temporary_name_for_rotation;
    type_;
    ultra_ssd_enabled;
    vm_size;
    vnet_subnet_id;
    workload_runtime;
    zones;
    kubelet_config;
    linux_os_config;
    node_network_profile;
    upgrade_settings;
  }

let http_proxy_config ?http_proxy ?https_proxy ?no_proxy ?trusted_ca
    () : http_proxy_config =
  { http_proxy; https_proxy; no_proxy; trusted_ca }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ingress_application_gateway ?gateway_id ?gateway_name
    ?subnet_cidr ?subnet_id () : ingress_application_gateway =
  { gateway_id; gateway_name; subnet_cidr; subnet_id }

let key_management_service ?key_vault_network_access
    ~key_vault_key_id () : key_management_service =
  { key_vault_key_id; key_vault_network_access }

let key_vault_secrets_provider ?secret_rotation_enabled
    ?secret_rotation_interval () : key_vault_secrets_provider =
  { secret_rotation_enabled; secret_rotation_interval }

let kubelet_identity ?client_id ?object_id ?user_assigned_identity_id
    () : kubelet_identity =
  { client_id; object_id; user_assigned_identity_id }

let linux_profile__ssh_key ~key_data () : linux_profile__ssh_key =
  { key_data }

let linux_profile ~admin_username ~ssh_key () : linux_profile =
  { admin_username; ssh_key }

let maintenance_window__allowed ~day ~hours () :
    maintenance_window__allowed =
  { day; hours }

let maintenance_window__not_allowed ~end_ ~start () :
    maintenance_window__not_allowed =
  { end_; start }

let maintenance_window ~allowed ~not_allowed () : maintenance_window
    =
  { allowed; not_allowed }

let maintenance_window_auto_upgrade__not_allowed ~end_ ~start () :
    maintenance_window_auto_upgrade__not_allowed =
  { end_; start }

let maintenance_window_auto_upgrade ?day_of_month ?day_of_week
    ?start_date ?start_time ?utc_offset ?week_index ~duration
    ~frequency ~interval ~not_allowed () :
    maintenance_window_auto_upgrade =
  {
    day_of_month;
    day_of_week;
    duration;
    frequency;
    interval;
    start_date;
    start_time;
    utc_offset;
    week_index;
    not_allowed;
  }

let maintenance_window_node_os__not_allowed ~end_ ~start () :
    maintenance_window_node_os__not_allowed =
  { end_; start }

let maintenance_window_node_os ?day_of_month ?day_of_week ?start_date
    ?start_time ?utc_offset ?week_index ~duration ~frequency
    ~interval ~not_allowed () : maintenance_window_node_os =
  {
    day_of_month;
    day_of_week;
    duration;
    frequency;
    interval;
    start_date;
    start_time;
    utc_offset;
    week_index;
    not_allowed;
  }

let microsoft_defender ~log_analytics_workspace_id () :
    microsoft_defender =
  { log_analytics_workspace_id }

let monitor_metrics ?annotations_allowed ?labels_allowed () :
    monitor_metrics =
  { annotations_allowed; labels_allowed }

let network_profile__load_balancer_profile ?idle_timeout_in_minutes
    ?managed_outbound_ip_count ?managed_outbound_ipv6_count
    ?outbound_ip_address_ids ?outbound_ip_prefix_ids
    ?outbound_ports_allocated () :
    network_profile__load_balancer_profile =
  {
    idle_timeout_in_minutes;
    managed_outbound_ip_count;
    managed_outbound_ipv6_count;
    outbound_ip_address_ids;
    outbound_ip_prefix_ids;
    outbound_ports_allocated;
  }

let network_profile__nat_gateway_profile ?idle_timeout_in_minutes
    ?managed_outbound_ip_count () :
    network_profile__nat_gateway_profile =
  { idle_timeout_in_minutes; managed_outbound_ip_count }

let network_profile ?dns_service_ip ?docker_bridge_cidr
    ?ebpf_data_plane ?ip_versions ?load_balancer_sku ?network_mode
    ?network_plugin_mode ?network_policy ?outbound_type ?pod_cidr
    ?pod_cidrs ?service_cidr ?service_cidrs ~network_plugin
    ~load_balancer_profile ~nat_gateway_profile () : network_profile
    =
  {
    dns_service_ip;
    docker_bridge_cidr;
    ebpf_data_plane;
    ip_versions;
    load_balancer_sku;
    network_mode;
    network_plugin;
    network_plugin_mode;
    network_policy;
    outbound_type;
    pod_cidr;
    pod_cidrs;
    service_cidr;
    service_cidrs;
    load_balancer_profile;
    nat_gateway_profile;
  }

let oms_agent ?msi_auth_for_monitoring_enabled
    ~log_analytics_workspace_id () : oms_agent =
  { log_analytics_workspace_id; msi_auth_for_monitoring_enabled }

let service_mesh_profile ?external_ingress_gateway_enabled
    ?internal_ingress_gateway_enabled ~mode () : service_mesh_profile
    =
  {
    external_ingress_gateway_enabled;
    internal_ingress_gateway_enabled;
    mode;
  }

let service_principal ~client_id ~client_secret () :
    service_principal =
  { client_id; client_secret }

let storage_profile ?blob_driver_enabled ?disk_driver_enabled
    ?disk_driver_version ?file_driver_enabled
    ?snapshot_controller_enabled () : storage_profile =
  {
    blob_driver_enabled;
    disk_driver_enabled;
    disk_driver_version;
    file_driver_enabled;
    snapshot_controller_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let web_app_routing ~dns_zone_id () : web_app_routing =
  { dns_zone_id }

let windows_profile__gmsa ~dns_server ~root_domain () :
    windows_profile__gmsa =
  { dns_server; root_domain }

let windows_profile ?admin_password ?license ~admin_username ~gmsa ()
    : windows_profile =
  { admin_password; admin_username; license; gmsa }

let workload_autoscaler_profile ?keda_enabled
    ?vertical_pod_autoscaler_enabled () : workload_autoscaler_profile
    =
  { keda_enabled; vertical_pod_autoscaler_enabled }

let azurerm_kubernetes_cluster ?api_server_authorized_ip_ranges
    ?automatic_channel_upgrade ?azure_policy_enabled
    ?custom_ca_trust_certificates_base64 ?disk_encryption_set_id
    ?dns_prefix ?dns_prefix_private_cluster ?edge_zone
    ?enable_pod_security_policy ?http_application_routing_enabled ?id
    ?image_cleaner_enabled ?image_cleaner_interval_hours
    ?kubernetes_version ?local_account_disabled
    ?node_os_channel_upgrade ?node_resource_group
    ?oidc_issuer_enabled ?open_service_mesh_enabled
    ?private_cluster_enabled ?private_cluster_public_fqdn_enabled
    ?private_dns_zone_id ?public_network_access_enabled
    ?role_based_access_control_enabled ?run_command_enabled ?sku_tier
    ?support_plan ?tags ?workload_identity_enabled ?timeouts
    ~location ~name ~resource_group_name ~aci_connector_linux
    ~api_server_access_profile ~auto_scaler_profile
    ~azure_active_directory_role_based_access_control
    ~confidential_computing ~default_node_pool ~http_proxy_config
    ~identity ~ingress_application_gateway ~key_management_service
    ~key_vault_secrets_provider ~kubelet_identity ~linux_profile
    ~maintenance_window ~maintenance_window_auto_upgrade
    ~maintenance_window_node_os ~microsoft_defender ~monitor_metrics
    ~network_profile ~oms_agent ~service_mesh_profile
    ~service_principal ~storage_profile ~web_app_routing
    ~windows_profile ~workload_autoscaler_profile () :
    azurerm_kubernetes_cluster =
  {
    api_server_authorized_ip_ranges;
    automatic_channel_upgrade;
    azure_policy_enabled;
    custom_ca_trust_certificates_base64;
    disk_encryption_set_id;
    dns_prefix;
    dns_prefix_private_cluster;
    edge_zone;
    enable_pod_security_policy;
    http_application_routing_enabled;
    id;
    image_cleaner_enabled;
    image_cleaner_interval_hours;
    kubernetes_version;
    local_account_disabled;
    location;
    name;
    node_os_channel_upgrade;
    node_resource_group;
    oidc_issuer_enabled;
    open_service_mesh_enabled;
    private_cluster_enabled;
    private_cluster_public_fqdn_enabled;
    private_dns_zone_id;
    public_network_access_enabled;
    resource_group_name;
    role_based_access_control_enabled;
    run_command_enabled;
    sku_tier;
    support_plan;
    tags;
    workload_identity_enabled;
    aci_connector_linux;
    api_server_access_profile;
    auto_scaler_profile;
    azure_active_directory_role_based_access_control;
    confidential_computing;
    default_node_pool;
    http_proxy_config;
    identity;
    ingress_application_gateway;
    key_management_service;
    key_vault_secrets_provider;
    kubelet_identity;
    linux_profile;
    maintenance_window;
    maintenance_window_auto_upgrade;
    maintenance_window_node_os;
    microsoft_defender;
    monitor_metrics;
    network_profile;
    oms_agent;
    service_mesh_profile;
    service_principal;
    storage_profile;
    timeouts;
    web_app_routing;
    windows_profile;
    workload_autoscaler_profile;
  }

type t = {
  api_server_authorized_ip_ranges : string list prop;
  automatic_channel_upgrade : string prop;
  azure_policy_enabled : bool prop;
  current_kubernetes_version : string prop;
  custom_ca_trust_certificates_base64 : string list prop;
  disk_encryption_set_id : string prop;
  dns_prefix : string prop;
  dns_prefix_private_cluster : string prop;
  edge_zone : string prop;
  enable_pod_security_policy : bool prop;
  fqdn : string prop;
  http_application_routing_enabled : bool prop;
  http_application_routing_zone_name : string prop;
  id : string prop;
  image_cleaner_enabled : bool prop;
  image_cleaner_interval_hours : float prop;
  kube_admin_config : kube_admin_config list prop;
  kube_admin_config_raw : string prop;
  kube_config : kube_config list prop;
  kube_config_raw : string prop;
  kubernetes_version : string prop;
  local_account_disabled : bool prop;
  location : string prop;
  name : string prop;
  node_os_channel_upgrade : string prop;
  node_resource_group : string prop;
  node_resource_group_id : string prop;
  oidc_issuer_enabled : bool prop;
  oidc_issuer_url : string prop;
  open_service_mesh_enabled : bool prop;
  portal_fqdn : string prop;
  private_cluster_enabled : bool prop;
  private_cluster_public_fqdn_enabled : bool prop;
  private_dns_zone_id : string prop;
  private_fqdn : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  role_based_access_control_enabled : bool prop;
  run_command_enabled : bool prop;
  sku_tier : string prop;
  support_plan : string prop;
  tags : (string * string) list prop;
  workload_identity_enabled : bool prop;
}

let make ?api_server_authorized_ip_ranges ?automatic_channel_upgrade
    ?azure_policy_enabled ?custom_ca_trust_certificates_base64
    ?disk_encryption_set_id ?dns_prefix ?dns_prefix_private_cluster
    ?edge_zone ?enable_pod_security_policy
    ?http_application_routing_enabled ?id ?image_cleaner_enabled
    ?image_cleaner_interval_hours ?kubernetes_version
    ?local_account_disabled ?node_os_channel_upgrade
    ?node_resource_group ?oidc_issuer_enabled
    ?open_service_mesh_enabled ?private_cluster_enabled
    ?private_cluster_public_fqdn_enabled ?private_dns_zone_id
    ?public_network_access_enabled ?role_based_access_control_enabled
    ?run_command_enabled ?sku_tier ?support_plan ?tags
    ?workload_identity_enabled ?timeouts ~location ~name
    ~resource_group_name ~aci_connector_linux
    ~api_server_access_profile ~auto_scaler_profile
    ~azure_active_directory_role_based_access_control
    ~confidential_computing ~default_node_pool ~http_proxy_config
    ~identity ~ingress_application_gateway ~key_management_service
    ~key_vault_secrets_provider ~kubelet_identity ~linux_profile
    ~maintenance_window ~maintenance_window_auto_upgrade
    ~maintenance_window_node_os ~microsoft_defender ~monitor_metrics
    ~network_profile ~oms_agent ~service_mesh_profile
    ~service_principal ~storage_profile ~web_app_routing
    ~windows_profile ~workload_autoscaler_profile __id =
  let __type = "azurerm_kubernetes_cluster" in
  let __attrs =
    ({
       api_server_authorized_ip_ranges =
         Prop.computed __type __id "api_server_authorized_ip_ranges";
       automatic_channel_upgrade =
         Prop.computed __type __id "automatic_channel_upgrade";
       azure_policy_enabled =
         Prop.computed __type __id "azure_policy_enabled";
       current_kubernetes_version =
         Prop.computed __type __id "current_kubernetes_version";
       custom_ca_trust_certificates_base64 =
         Prop.computed __type __id
           "custom_ca_trust_certificates_base64";
       disk_encryption_set_id =
         Prop.computed __type __id "disk_encryption_set_id";
       dns_prefix = Prop.computed __type __id "dns_prefix";
       dns_prefix_private_cluster =
         Prop.computed __type __id "dns_prefix_private_cluster";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_pod_security_policy =
         Prop.computed __type __id "enable_pod_security_policy";
       fqdn = Prop.computed __type __id "fqdn";
       http_application_routing_enabled =
         Prop.computed __type __id "http_application_routing_enabled";
       http_application_routing_zone_name =
         Prop.computed __type __id
           "http_application_routing_zone_name";
       id = Prop.computed __type __id "id";
       image_cleaner_enabled =
         Prop.computed __type __id "image_cleaner_enabled";
       image_cleaner_interval_hours =
         Prop.computed __type __id "image_cleaner_interval_hours";
       kube_admin_config =
         Prop.computed __type __id "kube_admin_config";
       kube_admin_config_raw =
         Prop.computed __type __id "kube_admin_config_raw";
       kube_config = Prop.computed __type __id "kube_config";
       kube_config_raw = Prop.computed __type __id "kube_config_raw";
       kubernetes_version =
         Prop.computed __type __id "kubernetes_version";
       local_account_disabled =
         Prop.computed __type __id "local_account_disabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       node_os_channel_upgrade =
         Prop.computed __type __id "node_os_channel_upgrade";
       node_resource_group =
         Prop.computed __type __id "node_resource_group";
       node_resource_group_id =
         Prop.computed __type __id "node_resource_group_id";
       oidc_issuer_enabled =
         Prop.computed __type __id "oidc_issuer_enabled";
       oidc_issuer_url = Prop.computed __type __id "oidc_issuer_url";
       open_service_mesh_enabled =
         Prop.computed __type __id "open_service_mesh_enabled";
       portal_fqdn = Prop.computed __type __id "portal_fqdn";
       private_cluster_enabled =
         Prop.computed __type __id "private_cluster_enabled";
       private_cluster_public_fqdn_enabled =
         Prop.computed __type __id
           "private_cluster_public_fqdn_enabled";
       private_dns_zone_id =
         Prop.computed __type __id "private_dns_zone_id";
       private_fqdn = Prop.computed __type __id "private_fqdn";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role_based_access_control_enabled =
         Prop.computed __type __id
           "role_based_access_control_enabled";
       run_command_enabled =
         Prop.computed __type __id "run_command_enabled";
       sku_tier = Prop.computed __type __id "sku_tier";
       support_plan = Prop.computed __type __id "support_plan";
       tags = Prop.computed __type __id "tags";
       workload_identity_enabled =
         Prop.computed __type __id "workload_identity_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_cluster
        (azurerm_kubernetes_cluster ?api_server_authorized_ip_ranges
           ?automatic_channel_upgrade ?azure_policy_enabled
           ?custom_ca_trust_certificates_base64
           ?disk_encryption_set_id ?dns_prefix
           ?dns_prefix_private_cluster ?edge_zone
           ?enable_pod_security_policy
           ?http_application_routing_enabled ?id
           ?image_cleaner_enabled ?image_cleaner_interval_hours
           ?kubernetes_version ?local_account_disabled
           ?node_os_channel_upgrade ?node_resource_group
           ?oidc_issuer_enabled ?open_service_mesh_enabled
           ?private_cluster_enabled
           ?private_cluster_public_fqdn_enabled ?private_dns_zone_id
           ?public_network_access_enabled
           ?role_based_access_control_enabled ?run_command_enabled
           ?sku_tier ?support_plan ?tags ?workload_identity_enabled
           ?timeouts ~location ~name ~resource_group_name
           ~aci_connector_linux ~api_server_access_profile
           ~auto_scaler_profile
           ~azure_active_directory_role_based_access_control
           ~confidential_computing ~default_node_pool
           ~http_proxy_config ~identity ~ingress_application_gateway
           ~key_management_service ~key_vault_secrets_provider
           ~kubelet_identity ~linux_profile ~maintenance_window
           ~maintenance_window_auto_upgrade
           ~maintenance_window_node_os ~microsoft_defender
           ~monitor_metrics ~network_profile ~oms_agent
           ~service_mesh_profile ~service_principal ~storage_profile
           ~web_app_routing ~windows_profile
           ~workload_autoscaler_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?api_server_authorized_ip_ranges
    ?automatic_channel_upgrade ?azure_policy_enabled
    ?custom_ca_trust_certificates_base64 ?disk_encryption_set_id
    ?dns_prefix ?dns_prefix_private_cluster ?edge_zone
    ?enable_pod_security_policy ?http_application_routing_enabled ?id
    ?image_cleaner_enabled ?image_cleaner_interval_hours
    ?kubernetes_version ?local_account_disabled
    ?node_os_channel_upgrade ?node_resource_group
    ?oidc_issuer_enabled ?open_service_mesh_enabled
    ?private_cluster_enabled ?private_cluster_public_fqdn_enabled
    ?private_dns_zone_id ?public_network_access_enabled
    ?role_based_access_control_enabled ?run_command_enabled ?sku_tier
    ?support_plan ?tags ?workload_identity_enabled ?timeouts
    ~location ~name ~resource_group_name ~aci_connector_linux
    ~api_server_access_profile ~auto_scaler_profile
    ~azure_active_directory_role_based_access_control
    ~confidential_computing ~default_node_pool ~http_proxy_config
    ~identity ~ingress_application_gateway ~key_management_service
    ~key_vault_secrets_provider ~kubelet_identity ~linux_profile
    ~maintenance_window ~maintenance_window_auto_upgrade
    ~maintenance_window_node_os ~microsoft_defender ~monitor_metrics
    ~network_profile ~oms_agent ~service_mesh_profile
    ~service_principal ~storage_profile ~web_app_routing
    ~windows_profile ~workload_autoscaler_profile __id =
  let (r : _ Tf_core.resource) =
    make ?api_server_authorized_ip_ranges ?automatic_channel_upgrade
      ?azure_policy_enabled ?custom_ca_trust_certificates_base64
      ?disk_encryption_set_id ?dns_prefix ?dns_prefix_private_cluster
      ?edge_zone ?enable_pod_security_policy
      ?http_application_routing_enabled ?id ?image_cleaner_enabled
      ?image_cleaner_interval_hours ?kubernetes_version
      ?local_account_disabled ?node_os_channel_upgrade
      ?node_resource_group ?oidc_issuer_enabled
      ?open_service_mesh_enabled ?private_cluster_enabled
      ?private_cluster_public_fqdn_enabled ?private_dns_zone_id
      ?public_network_access_enabled
      ?role_based_access_control_enabled ?run_command_enabled
      ?sku_tier ?support_plan ?tags ?workload_identity_enabled
      ?timeouts ~location ~name ~resource_group_name
      ~aci_connector_linux ~api_server_access_profile
      ~auto_scaler_profile
      ~azure_active_directory_role_based_access_control
      ~confidential_computing ~default_node_pool ~http_proxy_config
      ~identity ~ingress_application_gateway ~key_management_service
      ~key_vault_secrets_provider ~kubelet_identity ~linux_profile
      ~maintenance_window ~maintenance_window_auto_upgrade
      ~maintenance_window_node_os ~microsoft_defender
      ~monitor_metrics ~network_profile ~oms_agent
      ~service_mesh_profile ~service_principal ~storage_profile
      ~web_app_routing ~windows_profile ~workload_autoscaler_profile
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
