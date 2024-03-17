(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kubernetes_cluster__aci_connector_linux__connector_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__aci_connector_linux = {
  connector_identity :
    azurerm_kubernetes_cluster__aci_connector_linux__connector_identity
    list;
      (** connector_identity *)
  subnet_name : string;  (** subnet_name *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__aci_connector_linux *)

type azurerm_kubernetes_cluster__api_server_access_profile = {
  authorized_ip_ranges : string list option; [@option]
      (** authorized_ip_ranges *)
  subnet_id : string option; [@option]  (** subnet_id *)
  vnet_integration_enabled : bool option; [@option]
      (** vnet_integration_enabled *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__api_server_access_profile *)

type azurerm_kubernetes_cluster__auto_scaler_profile = {
  balance_similar_node_groups : bool option; [@option]
      (** balance_similar_node_groups *)
  empty_bulk_delete_max : string option; [@option]
      (** empty_bulk_delete_max *)
  expander : string option; [@option]  (** expander *)
  max_graceful_termination_sec : string option; [@option]
      (** max_graceful_termination_sec *)
  max_node_provisioning_time : string option; [@option]
      (** max_node_provisioning_time *)
  max_unready_nodes : float option; [@option]
      (** max_unready_nodes *)
  max_unready_percentage : float option; [@option]
      (** max_unready_percentage *)
  new_pod_scale_up_delay : string option; [@option]
      (** new_pod_scale_up_delay *)
  scale_down_delay_after_add : string option; [@option]
      (** scale_down_delay_after_add *)
  scale_down_delay_after_delete : string option; [@option]
      (** scale_down_delay_after_delete *)
  scale_down_delay_after_failure : string option; [@option]
      (** scale_down_delay_after_failure *)
  scale_down_unneeded : string option; [@option]
      (** scale_down_unneeded *)
  scale_down_unready : string option; [@option]
      (** scale_down_unready *)
  scale_down_utilization_threshold : string option; [@option]
      (** scale_down_utilization_threshold *)
  scan_interval : string option; [@option]  (** scan_interval *)
  skip_nodes_with_local_storage : bool option; [@option]
      (** skip_nodes_with_local_storage *)
  skip_nodes_with_system_pods : bool option; [@option]
      (** skip_nodes_with_system_pods *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__auto_scaler_profile *)

type azurerm_kubernetes_cluster__azure_active_directory_role_based_access_control = {
  admin_group_object_ids : string list option; [@option]
      (** admin_group_object_ids *)
  azure_rbac_enabled : bool option; [@option]
      (** azure_rbac_enabled *)
  client_app_id : string option; [@option]  (** client_app_id *)
  managed : bool option; [@option]  (** managed *)
  server_app_id : string option; [@option]  (** server_app_id *)
  server_app_secret : string option; [@option]
      (** server_app_secret *)
  tenant_id : string option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__azure_active_directory_role_based_access_control *)

type azurerm_kubernetes_cluster__confidential_computing = {
  sgx_quote_helper_enabled : bool;  (** sgx_quote_helper_enabled *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__confidential_computing *)

type azurerm_kubernetes_cluster__default_node_pool__kubelet_config = {
  allowed_unsafe_sysctls : string list option; [@option]
      (** allowed_unsafe_sysctls *)
  container_log_max_line : float option; [@option]
      (** container_log_max_line *)
  container_log_max_size_mb : float option; [@option]
      (** container_log_max_size_mb *)
  cpu_cfs_quota_enabled : bool option; [@option]
      (** cpu_cfs_quota_enabled *)
  cpu_cfs_quota_period : string option; [@option]
      (** cpu_cfs_quota_period *)
  cpu_manager_policy : string option; [@option]
      (** cpu_manager_policy *)
  image_gc_high_threshold : float option; [@option]
      (** image_gc_high_threshold *)
  image_gc_low_threshold : float option; [@option]
      (** image_gc_low_threshold *)
  pod_max_pid : float option; [@option]  (** pod_max_pid *)
  topology_manager_policy : string option; [@option]
      (** topology_manager_policy *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__default_node_pool__kubelet_config *)

type azurerm_kubernetes_cluster__default_node_pool__linux_os_config__sysctl_config = {
  fs_aio_max_nr : float option; [@option]  (** fs_aio_max_nr *)
  fs_file_max : float option; [@option]  (** fs_file_max *)
  fs_inotify_max_user_watches : float option; [@option]
      (** fs_inotify_max_user_watches *)
  fs_nr_open : float option; [@option]  (** fs_nr_open *)
  kernel_threads_max : float option; [@option]
      (** kernel_threads_max *)
  net_core_netdev_max_backlog : float option; [@option]
      (** net_core_netdev_max_backlog *)
  net_core_optmem_max : float option; [@option]
      (** net_core_optmem_max *)
  net_core_rmem_default : float option; [@option]
      (** net_core_rmem_default *)
  net_core_rmem_max : float option; [@option]
      (** net_core_rmem_max *)
  net_core_somaxconn : float option; [@option]
      (** net_core_somaxconn *)
  net_core_wmem_default : float option; [@option]
      (** net_core_wmem_default *)
  net_core_wmem_max : float option; [@option]
      (** net_core_wmem_max *)
  net_ipv4_ip_local_port_range_max : float option; [@option]
      (** net_ipv4_ip_local_port_range_max *)
  net_ipv4_ip_local_port_range_min : float option; [@option]
      (** net_ipv4_ip_local_port_range_min *)
  net_ipv4_neigh_default_gc_thresh1 : float option; [@option]
      (** net_ipv4_neigh_default_gc_thresh1 *)
  net_ipv4_neigh_default_gc_thresh2 : float option; [@option]
      (** net_ipv4_neigh_default_gc_thresh2 *)
  net_ipv4_neigh_default_gc_thresh3 : float option; [@option]
      (** net_ipv4_neigh_default_gc_thresh3 *)
  net_ipv4_tcp_fin_timeout : float option; [@option]
      (** net_ipv4_tcp_fin_timeout *)
  net_ipv4_tcp_keepalive_intvl : float option; [@option]
      (** net_ipv4_tcp_keepalive_intvl *)
  net_ipv4_tcp_keepalive_probes : float option; [@option]
      (** net_ipv4_tcp_keepalive_probes *)
  net_ipv4_tcp_keepalive_time : float option; [@option]
      (** net_ipv4_tcp_keepalive_time *)
  net_ipv4_tcp_max_syn_backlog : float option; [@option]
      (** net_ipv4_tcp_max_syn_backlog *)
  net_ipv4_tcp_max_tw_buckets : float option; [@option]
      (** net_ipv4_tcp_max_tw_buckets *)
  net_ipv4_tcp_tw_reuse : bool option; [@option]
      (** net_ipv4_tcp_tw_reuse *)
  net_netfilter_nf_conntrack_buckets : float option; [@option]
      (** net_netfilter_nf_conntrack_buckets *)
  net_netfilter_nf_conntrack_max : float option; [@option]
      (** net_netfilter_nf_conntrack_max *)
  vm_max_map_count : float option; [@option]  (** vm_max_map_count *)
  vm_swappiness : float option; [@option]  (** vm_swappiness *)
  vm_vfs_cache_pressure : float option; [@option]
      (** vm_vfs_cache_pressure *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__default_node_pool__linux_os_config__sysctl_config *)

type azurerm_kubernetes_cluster__default_node_pool__linux_os_config = {
  swap_file_size_mb : float option; [@option]
      (** swap_file_size_mb *)
  transparent_huge_page_defrag : string option; [@option]
      (** transparent_huge_page_defrag *)
  transparent_huge_page_enabled : string option; [@option]
      (** transparent_huge_page_enabled *)
  sysctl_config :
    azurerm_kubernetes_cluster__default_node_pool__linux_os_config__sysctl_config
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__default_node_pool__linux_os_config *)

type azurerm_kubernetes_cluster__default_node_pool__node_network_profile__allowed_host_ports = {
  port_end : float option; [@option]  (** port_end *)
  port_start : float option; [@option]  (** port_start *)
  protocol : string option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__default_node_pool__node_network_profile__allowed_host_ports *)

type azurerm_kubernetes_cluster__default_node_pool__node_network_profile = {
  application_security_group_ids : string list option; [@option]
      (** application_security_group_ids *)
  node_public_ip_tags : (string * string) list option; [@option]
      (** node_public_ip_tags *)
  allowed_host_ports :
    azurerm_kubernetes_cluster__default_node_pool__node_network_profile__allowed_host_ports
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__default_node_pool__node_network_profile *)

type azurerm_kubernetes_cluster__default_node_pool__upgrade_settings = {
  max_surge : string;  (** max_surge *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__default_node_pool__upgrade_settings *)

type azurerm_kubernetes_cluster__default_node_pool = {
  capacity_reservation_group_id : string option; [@option]
      (** capacity_reservation_group_id *)
  custom_ca_trust_enabled : bool option; [@option]
      (** custom_ca_trust_enabled *)
  enable_auto_scaling : bool option; [@option]
      (** enable_auto_scaling *)
  enable_host_encryption : bool option; [@option]
      (** enable_host_encryption *)
  enable_node_public_ip : bool option; [@option]
      (** enable_node_public_ip *)
  fips_enabled : bool option; [@option]  (** fips_enabled *)
  gpu_instance : string option; [@option]  (** gpu_instance *)
  host_group_id : string option; [@option]  (** host_group_id *)
  kubelet_disk_type : string option; [@option]
      (** kubelet_disk_type *)
  max_count : float option; [@option]  (** max_count *)
  max_pods : float option; [@option]  (** max_pods *)
  message_of_the_day : string option; [@option]
      (** message_of_the_day *)
  min_count : float option; [@option]  (** min_count *)
  name : string;  (** name *)
  node_count : float option; [@option]  (** node_count *)
  node_labels : (string * string) list option; [@option]
      (** node_labels *)
  node_public_ip_prefix_id : string option; [@option]
      (** node_public_ip_prefix_id *)
  node_taints : string list option; [@option]  (** node_taints *)
  only_critical_addons_enabled : bool option; [@option]
      (** only_critical_addons_enabled *)
  orchestrator_version : string option; [@option]
      (** orchestrator_version *)
  os_disk_size_gb : float option; [@option]  (** os_disk_size_gb *)
  os_disk_type : string option; [@option]  (** os_disk_type *)
  os_sku : string option; [@option]  (** os_sku *)
  pod_subnet_id : string option; [@option]  (** pod_subnet_id *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  scale_down_mode : string option; [@option]  (** scale_down_mode *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  temporary_name_for_rotation : string option; [@option]
      (** temporary_name_for_rotation *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  ultra_ssd_enabled : bool option; [@option]
      (** ultra_ssd_enabled *)
  vm_size : string;  (** vm_size *)
  vnet_subnet_id : string option; [@option]  (** vnet_subnet_id *)
  workload_runtime : string option; [@option]
      (** workload_runtime *)
  zones : string list option; [@option]  (** zones *)
  kubelet_config :
    azurerm_kubernetes_cluster__default_node_pool__kubelet_config
    list;
  linux_os_config :
    azurerm_kubernetes_cluster__default_node_pool__linux_os_config
    list;
  node_network_profile :
    azurerm_kubernetes_cluster__default_node_pool__node_network_profile
    list;
  upgrade_settings :
    azurerm_kubernetes_cluster__default_node_pool__upgrade_settings
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__default_node_pool *)

type azurerm_kubernetes_cluster__http_proxy_config = {
  http_proxy : string option; [@option]  (** http_proxy *)
  https_proxy : string option; [@option]  (** https_proxy *)
  no_proxy : string list option; [@option]  (** no_proxy *)
  trusted_ca : string option; [@option]  (** trusted_ca *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__http_proxy_config *)

type azurerm_kubernetes_cluster__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__identity *)

type azurerm_kubernetes_cluster__ingress_application_gateway__ingress_application_gateway_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__ingress_application_gateway = {
  effective_gateway_id : string;  (** effective_gateway_id *)
  gateway_id : string option; [@option]  (** gateway_id *)
  gateway_name : string option; [@option]  (** gateway_name *)
  ingress_application_gateway_identity :
    azurerm_kubernetes_cluster__ingress_application_gateway__ingress_application_gateway_identity
    list;
      (** ingress_application_gateway_identity *)
  subnet_cidr : string option; [@option]  (** subnet_cidr *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__ingress_application_gateway *)

type azurerm_kubernetes_cluster__key_management_service = {
  key_vault_key_id : string;  (** key_vault_key_id *)
  key_vault_network_access : string option; [@option]
      (** key_vault_network_access *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__key_management_service *)

type azurerm_kubernetes_cluster__key_vault_secrets_provider__secret_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__key_vault_secrets_provider = {
  secret_identity :
    azurerm_kubernetes_cluster__key_vault_secrets_provider__secret_identity
    list;
      (** secret_identity *)
  secret_rotation_enabled : bool option; [@option]
      (** secret_rotation_enabled *)
  secret_rotation_interval : string option; [@option]
      (** secret_rotation_interval *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__key_vault_secrets_provider *)

type azurerm_kubernetes_cluster__kubelet_identity = {
  client_id : string option; [@option]  (** client_id *)
  object_id : string option; [@option]  (** object_id *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__kubelet_identity *)

type azurerm_kubernetes_cluster__linux_profile__ssh_key = {
  key_data : string;  (** key_data *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__linux_profile__ssh_key *)

type azurerm_kubernetes_cluster__linux_profile = {
  admin_username : string;  (** admin_username *)
  ssh_key : azurerm_kubernetes_cluster__linux_profile__ssh_key list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__linux_profile *)

type azurerm_kubernetes_cluster__maintenance_window__allowed = {
  day : string;  (** day *)
  hours : float list;  (** hours *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__maintenance_window__allowed *)

type azurerm_kubernetes_cluster__maintenance_window__not_allowed = {
  end_ : string; [@key "end"]  (** end *)
  start : string;  (** start *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__maintenance_window__not_allowed *)

type azurerm_kubernetes_cluster__maintenance_window = {
  allowed :
    azurerm_kubernetes_cluster__maintenance_window__allowed list;
  not_allowed :
    azurerm_kubernetes_cluster__maintenance_window__not_allowed list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__maintenance_window *)

type azurerm_kubernetes_cluster__maintenance_window_auto_upgrade__not_allowed = {
  end_ : string; [@key "end"]  (** end *)
  start : string;  (** start *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__maintenance_window_auto_upgrade__not_allowed *)

type azurerm_kubernetes_cluster__maintenance_window_auto_upgrade = {
  day_of_month : float option; [@option]  (** day_of_month *)
  day_of_week : string option; [@option]  (** day_of_week *)
  duration : float;  (** duration *)
  frequency : string;  (** frequency *)
  interval : float;  (** interval *)
  start_date : string option; [@option]  (** start_date *)
  start_time : string option; [@option]  (** start_time *)
  utc_offset : string option; [@option]  (** utc_offset *)
  week_index : string option; [@option]  (** week_index *)
  not_allowed :
    azurerm_kubernetes_cluster__maintenance_window_auto_upgrade__not_allowed
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__maintenance_window_auto_upgrade *)

type azurerm_kubernetes_cluster__maintenance_window_node_os__not_allowed = {
  end_ : string; [@key "end"]  (** end *)
  start : string;  (** start *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__maintenance_window_node_os__not_allowed *)

type azurerm_kubernetes_cluster__maintenance_window_node_os = {
  day_of_month : float option; [@option]  (** day_of_month *)
  day_of_week : string option; [@option]  (** day_of_week *)
  duration : float;  (** duration *)
  frequency : string;  (** frequency *)
  interval : float;  (** interval *)
  start_date : string option; [@option]  (** start_date *)
  start_time : string option; [@option]  (** start_time *)
  utc_offset : string option; [@option]  (** utc_offset *)
  week_index : string option; [@option]  (** week_index *)
  not_allowed :
    azurerm_kubernetes_cluster__maintenance_window_node_os__not_allowed
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__maintenance_window_node_os *)

type azurerm_kubernetes_cluster__microsoft_defender = {
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__microsoft_defender *)

type azurerm_kubernetes_cluster__monitor_metrics = {
  annotations_allowed : string option; [@option]
      (** annotations_allowed *)
  labels_allowed : string option; [@option]  (** labels_allowed *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__monitor_metrics *)

type azurerm_kubernetes_cluster__network_profile__load_balancer_profile = {
  effective_outbound_ips : string list;
      (** effective_outbound_ips *)
  idle_timeout_in_minutes : float option; [@option]
      (** idle_timeout_in_minutes *)
  managed_outbound_ip_count : float option; [@option]
      (** managed_outbound_ip_count *)
  managed_outbound_ipv6_count : float option; [@option]
      (** managed_outbound_ipv6_count *)
  outbound_ip_address_ids : string list option; [@option]
      (** outbound_ip_address_ids *)
  outbound_ip_prefix_ids : string list option; [@option]
      (** outbound_ip_prefix_ids *)
  outbound_ports_allocated : float option; [@option]
      (** outbound_ports_allocated *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__network_profile__load_balancer_profile *)

type azurerm_kubernetes_cluster__network_profile__nat_gateway_profile = {
  effective_outbound_ips : string list;
      (** effective_outbound_ips *)
  idle_timeout_in_minutes : float option; [@option]
      (** idle_timeout_in_minutes *)
  managed_outbound_ip_count : float option; [@option]
      (** managed_outbound_ip_count *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__network_profile__nat_gateway_profile *)

type azurerm_kubernetes_cluster__network_profile = {
  dns_service_ip : string option; [@option]  (** dns_service_ip *)
  docker_bridge_cidr : string option; [@option]
      (** docker_bridge_cidr *)
  ebpf_data_plane : string option; [@option]  (** ebpf_data_plane *)
  ip_versions : string list option; [@option]  (** ip_versions *)
  load_balancer_sku : string option; [@option]
      (** load_balancer_sku *)
  network_mode : string option; [@option]  (** network_mode *)
  network_plugin : string;  (** network_plugin *)
  network_plugin_mode : string option; [@option]
      (** network_plugin_mode *)
  network_policy : string option; [@option]  (** network_policy *)
  outbound_type : string option; [@option]  (** outbound_type *)
  pod_cidr : string option; [@option]  (** pod_cidr *)
  pod_cidrs : string list option; [@option]  (** pod_cidrs *)
  service_cidr : string option; [@option]  (** service_cidr *)
  service_cidrs : string list option; [@option]  (** service_cidrs *)
  load_balancer_profile :
    azurerm_kubernetes_cluster__network_profile__load_balancer_profile
    list;
  nat_gateway_profile :
    azurerm_kubernetes_cluster__network_profile__nat_gateway_profile
    list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__network_profile *)

type azurerm_kubernetes_cluster__oms_agent__oms_agent_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__oms_agent = {
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  msi_auth_for_monitoring_enabled : bool option; [@option]
      (** msi_auth_for_monitoring_enabled *)
  oms_agent_identity :
    azurerm_kubernetes_cluster__oms_agent__oms_agent_identity list;
      (** oms_agent_identity *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__oms_agent *)

type azurerm_kubernetes_cluster__service_mesh_profile = {
  external_ingress_gateway_enabled : bool option; [@option]
      (** external_ingress_gateway_enabled *)
  internal_ingress_gateway_enabled : bool option; [@option]
      (** internal_ingress_gateway_enabled *)
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__service_mesh_profile *)

type azurerm_kubernetes_cluster__service_principal = {
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__service_principal *)

type azurerm_kubernetes_cluster__storage_profile = {
  blob_driver_enabled : bool option; [@option]
      (** blob_driver_enabled *)
  disk_driver_enabled : bool option; [@option]
      (** disk_driver_enabled *)
  disk_driver_version : string option; [@option]
      (** disk_driver_version *)
  file_driver_enabled : bool option; [@option]
      (** file_driver_enabled *)
  snapshot_controller_enabled : bool option; [@option]
      (** snapshot_controller_enabled *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__storage_profile *)

type azurerm_kubernetes_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__timeouts *)

type azurerm_kubernetes_cluster__web_app_routing__web_app_routing_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__web_app_routing = {
  dns_zone_id : string;  (** dns_zone_id *)
  web_app_routing_identity :
    azurerm_kubernetes_cluster__web_app_routing__web_app_routing_identity
    list;
      (** web_app_routing_identity *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__web_app_routing *)

type azurerm_kubernetes_cluster__windows_profile__gmsa = {
  dns_server : string;  (** dns_server *)
  root_domain : string;  (** root_domain *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__windows_profile__gmsa *)

type azurerm_kubernetes_cluster__windows_profile = {
  admin_password : string option; [@option]  (** admin_password *)
  admin_username : string;  (** admin_username *)
  license : string option; [@option]  (** license *)
  gmsa : azurerm_kubernetes_cluster__windows_profile__gmsa list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__windows_profile *)

type azurerm_kubernetes_cluster__workload_autoscaler_profile = {
  keda_enabled : bool option; [@option]  (** keda_enabled *)
  vertical_pod_autoscaler_controlled_values : string;
      (** vertical_pod_autoscaler_controlled_values *)
  vertical_pod_autoscaler_enabled : bool option; [@option]
      (** vertical_pod_autoscaler_enabled *)
  vertical_pod_autoscaler_update_mode : string;
      (** vertical_pod_autoscaler_update_mode *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster__workload_autoscaler_profile *)

type azurerm_kubernetes_cluster__kube_admin_config = {
  client_certificate : string;  (** client_certificate *)
  client_key : string;  (** client_key *)
  cluster_ca_certificate : string;  (** cluster_ca_certificate *)
  host : string;  (** host *)
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__kube_config = {
  client_certificate : string;  (** client_certificate *)
  client_key : string;  (** client_key *)
  cluster_ca_certificate : string;  (** cluster_ca_certificate *)
  host : string;  (** host *)
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster = {
  automatic_channel_upgrade : string option; [@option]
      (** automatic_channel_upgrade *)
  azure_policy_enabled : bool option; [@option]
      (** azure_policy_enabled *)
  custom_ca_trust_certificates_base64 : string list option; [@option]
      (** custom_ca_trust_certificates_base64 *)
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  dns_prefix : string option; [@option]  (** dns_prefix *)
  dns_prefix_private_cluster : string option; [@option]
      (** dns_prefix_private_cluster *)
  edge_zone : string option; [@option]  (** edge_zone *)
  enable_pod_security_policy : bool option; [@option]
      (** enable_pod_security_policy *)
  http_application_routing_enabled : bool option; [@option]
      (** http_application_routing_enabled *)
  image_cleaner_enabled : bool option; [@option]
      (** image_cleaner_enabled *)
  image_cleaner_interval_hours : float option; [@option]
      (** image_cleaner_interval_hours *)
  local_account_disabled : bool option; [@option]
      (** local_account_disabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  node_os_channel_upgrade : string option; [@option]
      (** node_os_channel_upgrade *)
  oidc_issuer_enabled : bool option; [@option]
      (** oidc_issuer_enabled *)
  open_service_mesh_enabled : bool option; [@option]
      (** open_service_mesh_enabled *)
  private_cluster_enabled : bool option; [@option]
      (** private_cluster_enabled *)
  private_cluster_public_fqdn_enabled : bool option; [@option]
      (** private_cluster_public_fqdn_enabled *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  role_based_access_control_enabled : bool option; [@option]
      (** role_based_access_control_enabled *)
  run_command_enabled : bool option; [@option]
      (** run_command_enabled *)
  sku_tier : string option; [@option]  (** sku_tier *)
  support_plan : string option; [@option]  (** support_plan *)
  tags : (string * string) list option; [@option]  (** tags *)
  workload_identity_enabled : bool option; [@option]
      (** workload_identity_enabled *)
  aci_connector_linux :
    azurerm_kubernetes_cluster__aci_connector_linux list;
  api_server_access_profile :
    azurerm_kubernetes_cluster__api_server_access_profile list;
  auto_scaler_profile :
    azurerm_kubernetes_cluster__auto_scaler_profile list;
  azure_active_directory_role_based_access_control :
    azurerm_kubernetes_cluster__azure_active_directory_role_based_access_control
    list;
  confidential_computing :
    azurerm_kubernetes_cluster__confidential_computing list;
  default_node_pool :
    azurerm_kubernetes_cluster__default_node_pool list;
  http_proxy_config :
    azurerm_kubernetes_cluster__http_proxy_config list;
  identity : azurerm_kubernetes_cluster__identity list;
  ingress_application_gateway :
    azurerm_kubernetes_cluster__ingress_application_gateway list;
  key_management_service :
    azurerm_kubernetes_cluster__key_management_service list;
  key_vault_secrets_provider :
    azurerm_kubernetes_cluster__key_vault_secrets_provider list;
  kubelet_identity :
    azurerm_kubernetes_cluster__kubelet_identity list;
  linux_profile : azurerm_kubernetes_cluster__linux_profile list;
  maintenance_window :
    azurerm_kubernetes_cluster__maintenance_window list;
  maintenance_window_auto_upgrade :
    azurerm_kubernetes_cluster__maintenance_window_auto_upgrade list;
  maintenance_window_node_os :
    azurerm_kubernetes_cluster__maintenance_window_node_os list;
  microsoft_defender :
    azurerm_kubernetes_cluster__microsoft_defender list;
  monitor_metrics : azurerm_kubernetes_cluster__monitor_metrics list;
  network_profile : azurerm_kubernetes_cluster__network_profile list;
  oms_agent : azurerm_kubernetes_cluster__oms_agent list;
  service_mesh_profile :
    azurerm_kubernetes_cluster__service_mesh_profile list;
  service_principal :
    azurerm_kubernetes_cluster__service_principal list;
  storage_profile : azurerm_kubernetes_cluster__storage_profile list;
  timeouts : azurerm_kubernetes_cluster__timeouts option;
  web_app_routing : azurerm_kubernetes_cluster__web_app_routing list;
  windows_profile : azurerm_kubernetes_cluster__windows_profile list;
  workload_autoscaler_profile :
    azurerm_kubernetes_cluster__workload_autoscaler_profile list;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster *)

let azurerm_kubernetes_cluster ?automatic_channel_upgrade
    ?azure_policy_enabled ?custom_ca_trust_certificates_base64
    ?disk_encryption_set_id ?dns_prefix ?dns_prefix_private_cluster
    ?edge_zone ?enable_pod_security_policy
    ?http_application_routing_enabled ?image_cleaner_enabled
    ?image_cleaner_interval_hours ?local_account_disabled
    ?node_os_channel_upgrade ?oidc_issuer_enabled
    ?open_service_mesh_enabled ?private_cluster_enabled
    ?private_cluster_public_fqdn_enabled
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
    ~windows_profile ~workload_autoscaler_profile __resource_id =
  let __resource_type = "azurerm_kubernetes_cluster" in
  let __resource =
    {
      automatic_channel_upgrade;
      azure_policy_enabled;
      custom_ca_trust_certificates_base64;
      disk_encryption_set_id;
      dns_prefix;
      dns_prefix_private_cluster;
      edge_zone;
      enable_pod_security_policy;
      http_application_routing_enabled;
      image_cleaner_enabled;
      image_cleaner_interval_hours;
      local_account_disabled;
      location;
      name;
      node_os_channel_upgrade;
      oidc_issuer_enabled;
      open_service_mesh_enabled;
      private_cluster_enabled;
      private_cluster_public_fqdn_enabled;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_cluster __resource);
  ()
