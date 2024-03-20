(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type kube_admin_config = {
  client_certificate : string prop;  (** client_certificate *)
  client_key : string prop;  (** client_key *)
  cluster_ca_certificate : string prop;
      (** cluster_ca_certificate *)
  host : string prop;  (** host *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type kube_config = {
  client_certificate : string prop;  (** client_certificate *)
  client_key : string prop;  (** client_key *)
  cluster_ca_certificate : string prop;
      (** cluster_ca_certificate *)
  host : string prop;  (** host *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type aci_connector_linux__connector_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type aci_connector_linux

val aci_connector_linux :
  subnet_name:string prop -> unit -> aci_connector_linux

type api_server_access_profile

val api_server_access_profile :
  ?authorized_ip_ranges:string prop list ->
  ?subnet_id:string prop ->
  ?vnet_integration_enabled:bool prop ->
  unit ->
  api_server_access_profile

type auto_scaler_profile

val auto_scaler_profile :
  ?balance_similar_node_groups:bool prop ->
  ?empty_bulk_delete_max:string prop ->
  ?expander:string prop ->
  ?max_graceful_termination_sec:string prop ->
  ?max_node_provisioning_time:string prop ->
  ?max_unready_nodes:float prop ->
  ?max_unready_percentage:float prop ->
  ?new_pod_scale_up_delay:string prop ->
  ?scale_down_delay_after_add:string prop ->
  ?scale_down_delay_after_delete:string prop ->
  ?scale_down_delay_after_failure:string prop ->
  ?scale_down_unneeded:string prop ->
  ?scale_down_unready:string prop ->
  ?scale_down_utilization_threshold:string prop ->
  ?scan_interval:string prop ->
  ?skip_nodes_with_local_storage:bool prop ->
  ?skip_nodes_with_system_pods:bool prop ->
  unit ->
  auto_scaler_profile

type azure_active_directory_role_based_access_control

val azure_active_directory_role_based_access_control :
  ?admin_group_object_ids:string prop list ->
  ?azure_rbac_enabled:bool prop ->
  ?client_app_id:string prop ->
  ?managed:bool prop ->
  ?server_app_id:string prop ->
  ?server_app_secret:string prop ->
  ?tenant_id:string prop ->
  unit ->
  azure_active_directory_role_based_access_control

type confidential_computing

val confidential_computing :
  sgx_quote_helper_enabled:bool prop ->
  unit ->
  confidential_computing

type default_node_pool__kubelet_config

val default_node_pool__kubelet_config :
  ?allowed_unsafe_sysctls:string prop list ->
  ?container_log_max_line:float prop ->
  ?container_log_max_size_mb:float prop ->
  ?cpu_cfs_quota_enabled:bool prop ->
  ?cpu_cfs_quota_period:string prop ->
  ?cpu_manager_policy:string prop ->
  ?image_gc_high_threshold:float prop ->
  ?image_gc_low_threshold:float prop ->
  ?pod_max_pid:float prop ->
  ?topology_manager_policy:string prop ->
  unit ->
  default_node_pool__kubelet_config

type default_node_pool__linux_os_config__sysctl_config

val default_node_pool__linux_os_config__sysctl_config :
  ?fs_aio_max_nr:float prop ->
  ?fs_file_max:float prop ->
  ?fs_inotify_max_user_watches:float prop ->
  ?fs_nr_open:float prop ->
  ?kernel_threads_max:float prop ->
  ?net_core_netdev_max_backlog:float prop ->
  ?net_core_optmem_max:float prop ->
  ?net_core_rmem_default:float prop ->
  ?net_core_rmem_max:float prop ->
  ?net_core_somaxconn:float prop ->
  ?net_core_wmem_default:float prop ->
  ?net_core_wmem_max:float prop ->
  ?net_ipv4_ip_local_port_range_max:float prop ->
  ?net_ipv4_ip_local_port_range_min:float prop ->
  ?net_ipv4_neigh_default_gc_thresh1:float prop ->
  ?net_ipv4_neigh_default_gc_thresh2:float prop ->
  ?net_ipv4_neigh_default_gc_thresh3:float prop ->
  ?net_ipv4_tcp_fin_timeout:float prop ->
  ?net_ipv4_tcp_keepalive_intvl:float prop ->
  ?net_ipv4_tcp_keepalive_probes:float prop ->
  ?net_ipv4_tcp_keepalive_time:float prop ->
  ?net_ipv4_tcp_max_syn_backlog:float prop ->
  ?net_ipv4_tcp_max_tw_buckets:float prop ->
  ?net_ipv4_tcp_tw_reuse:bool prop ->
  ?net_netfilter_nf_conntrack_buckets:float prop ->
  ?net_netfilter_nf_conntrack_max:float prop ->
  ?vm_max_map_count:float prop ->
  ?vm_swappiness:float prop ->
  ?vm_vfs_cache_pressure:float prop ->
  unit ->
  default_node_pool__linux_os_config__sysctl_config

type default_node_pool__linux_os_config

val default_node_pool__linux_os_config :
  ?swap_file_size_mb:float prop ->
  ?transparent_huge_page_defrag:string prop ->
  ?transparent_huge_page_enabled:string prop ->
  sysctl_config:
    default_node_pool__linux_os_config__sysctl_config list ->
  unit ->
  default_node_pool__linux_os_config

type default_node_pool__node_network_profile__allowed_host_ports

val default_node_pool__node_network_profile__allowed_host_ports :
  ?port_end:float prop ->
  ?port_start:float prop ->
  ?protocol:string prop ->
  unit ->
  default_node_pool__node_network_profile__allowed_host_ports

type default_node_pool__node_network_profile

val default_node_pool__node_network_profile :
  ?application_security_group_ids:string prop list ->
  ?node_public_ip_tags:(string * string prop) list ->
  allowed_host_ports:
    default_node_pool__node_network_profile__allowed_host_ports list ->
  unit ->
  default_node_pool__node_network_profile

type default_node_pool__upgrade_settings

val default_node_pool__upgrade_settings :
  max_surge:string prop ->
  unit ->
  default_node_pool__upgrade_settings

type default_node_pool

val default_node_pool :
  ?capacity_reservation_group_id:string prop ->
  ?custom_ca_trust_enabled:bool prop ->
  ?enable_auto_scaling:bool prop ->
  ?enable_host_encryption:bool prop ->
  ?enable_node_public_ip:bool prop ->
  ?fips_enabled:bool prop ->
  ?gpu_instance:string prop ->
  ?host_group_id:string prop ->
  ?kubelet_disk_type:string prop ->
  ?max_count:float prop ->
  ?max_pods:float prop ->
  ?message_of_the_day:string prop ->
  ?min_count:float prop ->
  ?node_count:float prop ->
  ?node_labels:(string * string prop) list ->
  ?node_public_ip_prefix_id:string prop ->
  ?node_taints:string prop list ->
  ?only_critical_addons_enabled:bool prop ->
  ?orchestrator_version:string prop ->
  ?os_disk_size_gb:float prop ->
  ?os_disk_type:string prop ->
  ?os_sku:string prop ->
  ?pod_subnet_id:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?scale_down_mode:string prop ->
  ?snapshot_id:string prop ->
  ?tags:(string * string prop) list ->
  ?temporary_name_for_rotation:string prop ->
  ?type_:string prop ->
  ?ultra_ssd_enabled:bool prop ->
  ?vnet_subnet_id:string prop ->
  ?workload_runtime:string prop ->
  ?zones:string prop list ->
  name:string prop ->
  vm_size:string prop ->
  kubelet_config:default_node_pool__kubelet_config list ->
  linux_os_config:default_node_pool__linux_os_config list ->
  node_network_profile:default_node_pool__node_network_profile list ->
  upgrade_settings:default_node_pool__upgrade_settings list ->
  unit ->
  default_node_pool

type http_proxy_config

val http_proxy_config :
  ?http_proxy:string prop ->
  ?https_proxy:string prop ->
  ?no_proxy:string prop list ->
  ?trusted_ca:string prop ->
  unit ->
  http_proxy_config

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type ingress_application_gateway__ingress_application_gateway_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type ingress_application_gateway

val ingress_application_gateway :
  ?gateway_id:string prop ->
  ?gateway_name:string prop ->
  ?subnet_cidr:string prop ->
  ?subnet_id:string prop ->
  unit ->
  ingress_application_gateway

type key_management_service

val key_management_service :
  ?key_vault_network_access:string prop ->
  key_vault_key_id:string prop ->
  unit ->
  key_management_service

type key_vault_secrets_provider__secret_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type key_vault_secrets_provider

val key_vault_secrets_provider :
  ?secret_rotation_enabled:bool prop ->
  ?secret_rotation_interval:string prop ->
  unit ->
  key_vault_secrets_provider

type kubelet_identity

val kubelet_identity :
  ?client_id:string prop ->
  ?object_id:string prop ->
  ?user_assigned_identity_id:string prop ->
  unit ->
  kubelet_identity

type linux_profile__ssh_key

val linux_profile__ssh_key :
  key_data:string prop -> unit -> linux_profile__ssh_key

type linux_profile

val linux_profile :
  admin_username:string prop ->
  ssh_key:linux_profile__ssh_key list ->
  unit ->
  linux_profile

type maintenance_window__allowed

val maintenance_window__allowed :
  day:string prop ->
  hours:float prop list ->
  unit ->
  maintenance_window__allowed

type maintenance_window__not_allowed

val maintenance_window__not_allowed :
  end_:string prop ->
  start:string prop ->
  unit ->
  maintenance_window__not_allowed

type maintenance_window

val maintenance_window :
  allowed:maintenance_window__allowed list ->
  not_allowed:maintenance_window__not_allowed list ->
  unit ->
  maintenance_window

type maintenance_window_auto_upgrade__not_allowed

val maintenance_window_auto_upgrade__not_allowed :
  end_:string prop ->
  start:string prop ->
  unit ->
  maintenance_window_auto_upgrade__not_allowed

type maintenance_window_auto_upgrade

val maintenance_window_auto_upgrade :
  ?day_of_month:float prop ->
  ?day_of_week:string prop ->
  ?start_date:string prop ->
  ?start_time:string prop ->
  ?utc_offset:string prop ->
  ?week_index:string prop ->
  duration:float prop ->
  frequency:string prop ->
  interval:float prop ->
  not_allowed:maintenance_window_auto_upgrade__not_allowed list ->
  unit ->
  maintenance_window_auto_upgrade

type maintenance_window_node_os__not_allowed

val maintenance_window_node_os__not_allowed :
  end_:string prop ->
  start:string prop ->
  unit ->
  maintenance_window_node_os__not_allowed

type maintenance_window_node_os

val maintenance_window_node_os :
  ?day_of_month:float prop ->
  ?day_of_week:string prop ->
  ?start_date:string prop ->
  ?start_time:string prop ->
  ?utc_offset:string prop ->
  ?week_index:string prop ->
  duration:float prop ->
  frequency:string prop ->
  interval:float prop ->
  not_allowed:maintenance_window_node_os__not_allowed list ->
  unit ->
  maintenance_window_node_os

type microsoft_defender

val microsoft_defender :
  log_analytics_workspace_id:string prop ->
  unit ->
  microsoft_defender

type monitor_metrics

val monitor_metrics :
  ?annotations_allowed:string prop ->
  ?labels_allowed:string prop ->
  unit ->
  monitor_metrics

type network_profile__load_balancer_profile

val network_profile__load_balancer_profile :
  ?idle_timeout_in_minutes:float prop ->
  ?managed_outbound_ip_count:float prop ->
  ?managed_outbound_ipv6_count:float prop ->
  ?outbound_ip_address_ids:string prop list ->
  ?outbound_ip_prefix_ids:string prop list ->
  ?outbound_ports_allocated:float prop ->
  unit ->
  network_profile__load_balancer_profile

type network_profile__nat_gateway_profile

val network_profile__nat_gateway_profile :
  ?idle_timeout_in_minutes:float prop ->
  ?managed_outbound_ip_count:float prop ->
  unit ->
  network_profile__nat_gateway_profile

type network_profile

val network_profile :
  ?dns_service_ip:string prop ->
  ?docker_bridge_cidr:string prop ->
  ?ebpf_data_plane:string prop ->
  ?ip_versions:string prop list ->
  ?load_balancer_sku:string prop ->
  ?network_mode:string prop ->
  ?network_plugin_mode:string prop ->
  ?network_policy:string prop ->
  ?outbound_type:string prop ->
  ?pod_cidr:string prop ->
  ?pod_cidrs:string prop list ->
  ?service_cidr:string prop ->
  ?service_cidrs:string prop list ->
  network_plugin:string prop ->
  load_balancer_profile:network_profile__load_balancer_profile list ->
  nat_gateway_profile:network_profile__nat_gateway_profile list ->
  unit ->
  network_profile

type oms_agent__oms_agent_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type oms_agent

val oms_agent :
  ?msi_auth_for_monitoring_enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  unit ->
  oms_agent

type service_mesh_profile

val service_mesh_profile :
  ?external_ingress_gateway_enabled:bool prop ->
  ?internal_ingress_gateway_enabled:bool prop ->
  mode:string prop ->
  unit ->
  service_mesh_profile

type service_principal

val service_principal :
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  service_principal

type storage_profile

val storage_profile :
  ?blob_driver_enabled:bool prop ->
  ?disk_driver_enabled:bool prop ->
  ?disk_driver_version:string prop ->
  ?file_driver_enabled:bool prop ->
  ?snapshot_controller_enabled:bool prop ->
  unit ->
  storage_profile

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type web_app_routing__web_app_routing_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type web_app_routing

val web_app_routing :
  dns_zone_id:string prop -> unit -> web_app_routing

type windows_profile__gmsa

val windows_profile__gmsa :
  dns_server:string prop ->
  root_domain:string prop ->
  unit ->
  windows_profile__gmsa

type windows_profile

val windows_profile :
  ?admin_password:string prop ->
  ?license:string prop ->
  admin_username:string prop ->
  gmsa:windows_profile__gmsa list ->
  unit ->
  windows_profile

type workload_autoscaler_profile

val workload_autoscaler_profile :
  ?keda_enabled:bool prop ->
  ?vertical_pod_autoscaler_enabled:bool prop ->
  unit ->
  workload_autoscaler_profile

type azurerm_kubernetes_cluster

val azurerm_kubernetes_cluster :
  ?api_server_authorized_ip_ranges:string prop list ->
  ?automatic_channel_upgrade:string prop ->
  ?azure_policy_enabled:bool prop ->
  ?custom_ca_trust_certificates_base64:string prop list ->
  ?disk_encryption_set_id:string prop ->
  ?dns_prefix:string prop ->
  ?dns_prefix_private_cluster:string prop ->
  ?edge_zone:string prop ->
  ?enable_pod_security_policy:bool prop ->
  ?http_application_routing_enabled:bool prop ->
  ?id:string prop ->
  ?image_cleaner_enabled:bool prop ->
  ?image_cleaner_interval_hours:float prop ->
  ?kubernetes_version:string prop ->
  ?local_account_disabled:bool prop ->
  ?node_os_channel_upgrade:string prop ->
  ?node_resource_group:string prop ->
  ?oidc_issuer_enabled:bool prop ->
  ?open_service_mesh_enabled:bool prop ->
  ?private_cluster_enabled:bool prop ->
  ?private_cluster_public_fqdn_enabled:bool prop ->
  ?private_dns_zone_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?role_based_access_control_enabled:bool prop ->
  ?run_command_enabled:bool prop ->
  ?sku_tier:string prop ->
  ?support_plan:string prop ->
  ?tags:(string * string prop) list ->
  ?workload_identity_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  aci_connector_linux:aci_connector_linux list ->
  api_server_access_profile:api_server_access_profile list ->
  auto_scaler_profile:auto_scaler_profile list ->
  azure_active_directory_role_based_access_control:
    azure_active_directory_role_based_access_control list ->
  confidential_computing:confidential_computing list ->
  default_node_pool:default_node_pool list ->
  http_proxy_config:http_proxy_config list ->
  identity:identity list ->
  ingress_application_gateway:ingress_application_gateway list ->
  key_management_service:key_management_service list ->
  key_vault_secrets_provider:key_vault_secrets_provider list ->
  kubelet_identity:kubelet_identity list ->
  linux_profile:linux_profile list ->
  maintenance_window:maintenance_window list ->
  maintenance_window_auto_upgrade:
    maintenance_window_auto_upgrade list ->
  maintenance_window_node_os:maintenance_window_node_os list ->
  microsoft_defender:microsoft_defender list ->
  monitor_metrics:monitor_metrics list ->
  network_profile:network_profile list ->
  oms_agent:oms_agent list ->
  service_mesh_profile:service_mesh_profile list ->
  service_principal:service_principal list ->
  storage_profile:storage_profile list ->
  web_app_routing:web_app_routing list ->
  windows_profile:windows_profile list ->
  workload_autoscaler_profile:workload_autoscaler_profile list ->
  unit ->
  azurerm_kubernetes_cluster

val yojson_of_azurerm_kubernetes_cluster :
  azurerm_kubernetes_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?api_server_authorized_ip_ranges:string prop list ->
  ?automatic_channel_upgrade:string prop ->
  ?azure_policy_enabled:bool prop ->
  ?custom_ca_trust_certificates_base64:string prop list ->
  ?disk_encryption_set_id:string prop ->
  ?dns_prefix:string prop ->
  ?dns_prefix_private_cluster:string prop ->
  ?edge_zone:string prop ->
  ?enable_pod_security_policy:bool prop ->
  ?http_application_routing_enabled:bool prop ->
  ?id:string prop ->
  ?image_cleaner_enabled:bool prop ->
  ?image_cleaner_interval_hours:float prop ->
  ?kubernetes_version:string prop ->
  ?local_account_disabled:bool prop ->
  ?node_os_channel_upgrade:string prop ->
  ?node_resource_group:string prop ->
  ?oidc_issuer_enabled:bool prop ->
  ?open_service_mesh_enabled:bool prop ->
  ?private_cluster_enabled:bool prop ->
  ?private_cluster_public_fqdn_enabled:bool prop ->
  ?private_dns_zone_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?role_based_access_control_enabled:bool prop ->
  ?run_command_enabled:bool prop ->
  ?sku_tier:string prop ->
  ?support_plan:string prop ->
  ?tags:(string * string prop) list ->
  ?workload_identity_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  aci_connector_linux:aci_connector_linux list ->
  api_server_access_profile:api_server_access_profile list ->
  auto_scaler_profile:auto_scaler_profile list ->
  azure_active_directory_role_based_access_control:
    azure_active_directory_role_based_access_control list ->
  confidential_computing:confidential_computing list ->
  default_node_pool:default_node_pool list ->
  http_proxy_config:http_proxy_config list ->
  identity:identity list ->
  ingress_application_gateway:ingress_application_gateway list ->
  key_management_service:key_management_service list ->
  key_vault_secrets_provider:key_vault_secrets_provider list ->
  kubelet_identity:kubelet_identity list ->
  linux_profile:linux_profile list ->
  maintenance_window:maintenance_window list ->
  maintenance_window_auto_upgrade:
    maintenance_window_auto_upgrade list ->
  maintenance_window_node_os:maintenance_window_node_os list ->
  microsoft_defender:microsoft_defender list ->
  monitor_metrics:monitor_metrics list ->
  network_profile:network_profile list ->
  oms_agent:oms_agent list ->
  service_mesh_profile:service_mesh_profile list ->
  service_principal:service_principal list ->
  storage_profile:storage_profile list ->
  web_app_routing:web_app_routing list ->
  windows_profile:windows_profile list ->
  workload_autoscaler_profile:workload_autoscaler_profile list ->
  string ->
  t

val make :
  ?api_server_authorized_ip_ranges:string prop list ->
  ?automatic_channel_upgrade:string prop ->
  ?azure_policy_enabled:bool prop ->
  ?custom_ca_trust_certificates_base64:string prop list ->
  ?disk_encryption_set_id:string prop ->
  ?dns_prefix:string prop ->
  ?dns_prefix_private_cluster:string prop ->
  ?edge_zone:string prop ->
  ?enable_pod_security_policy:bool prop ->
  ?http_application_routing_enabled:bool prop ->
  ?id:string prop ->
  ?image_cleaner_enabled:bool prop ->
  ?image_cleaner_interval_hours:float prop ->
  ?kubernetes_version:string prop ->
  ?local_account_disabled:bool prop ->
  ?node_os_channel_upgrade:string prop ->
  ?node_resource_group:string prop ->
  ?oidc_issuer_enabled:bool prop ->
  ?open_service_mesh_enabled:bool prop ->
  ?private_cluster_enabled:bool prop ->
  ?private_cluster_public_fqdn_enabled:bool prop ->
  ?private_dns_zone_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?role_based_access_control_enabled:bool prop ->
  ?run_command_enabled:bool prop ->
  ?sku_tier:string prop ->
  ?support_plan:string prop ->
  ?tags:(string * string prop) list ->
  ?workload_identity_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  aci_connector_linux:aci_connector_linux list ->
  api_server_access_profile:api_server_access_profile list ->
  auto_scaler_profile:auto_scaler_profile list ->
  azure_active_directory_role_based_access_control:
    azure_active_directory_role_based_access_control list ->
  confidential_computing:confidential_computing list ->
  default_node_pool:default_node_pool list ->
  http_proxy_config:http_proxy_config list ->
  identity:identity list ->
  ingress_application_gateway:ingress_application_gateway list ->
  key_management_service:key_management_service list ->
  key_vault_secrets_provider:key_vault_secrets_provider list ->
  kubelet_identity:kubelet_identity list ->
  linux_profile:linux_profile list ->
  maintenance_window:maintenance_window list ->
  maintenance_window_auto_upgrade:
    maintenance_window_auto_upgrade list ->
  maintenance_window_node_os:maintenance_window_node_os list ->
  microsoft_defender:microsoft_defender list ->
  monitor_metrics:monitor_metrics list ->
  network_profile:network_profile list ->
  oms_agent:oms_agent list ->
  service_mesh_profile:service_mesh_profile list ->
  service_principal:service_principal list ->
  storage_profile:storage_profile list ->
  web_app_routing:web_app_routing list ->
  windows_profile:windows_profile list ->
  workload_autoscaler_profile:workload_autoscaler_profile list ->
  string ->
  t Tf_core.resource
