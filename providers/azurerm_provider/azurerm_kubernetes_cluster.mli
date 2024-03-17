(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_cluster__aci_connector_linux__connector_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__aci_connector_linux
type azurerm_kubernetes_cluster__api_server_access_profile
type azurerm_kubernetes_cluster__auto_scaler_profile

type azurerm_kubernetes_cluster__azure_active_directory_role_based_access_control

type azurerm_kubernetes_cluster__confidential_computing
type azurerm_kubernetes_cluster__default_node_pool__kubelet_config

type azurerm_kubernetes_cluster__default_node_pool__linux_os_config__sysctl_config

type azurerm_kubernetes_cluster__default_node_pool__linux_os_config

type azurerm_kubernetes_cluster__default_node_pool__node_network_profile__allowed_host_ports

type azurerm_kubernetes_cluster__default_node_pool__node_network_profile

type azurerm_kubernetes_cluster__default_node_pool__upgrade_settings
type azurerm_kubernetes_cluster__default_node_pool
type azurerm_kubernetes_cluster__http_proxy_config
type azurerm_kubernetes_cluster__identity

type azurerm_kubernetes_cluster__ingress_application_gateway__ingress_application_gateway_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__ingress_application_gateway
type azurerm_kubernetes_cluster__key_management_service

type azurerm_kubernetes_cluster__key_vault_secrets_provider__secret_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__key_vault_secrets_provider
type azurerm_kubernetes_cluster__kubelet_identity
type azurerm_kubernetes_cluster__linux_profile__ssh_key
type azurerm_kubernetes_cluster__linux_profile
type azurerm_kubernetes_cluster__maintenance_window__allowed
type azurerm_kubernetes_cluster__maintenance_window__not_allowed
type azurerm_kubernetes_cluster__maintenance_window

type azurerm_kubernetes_cluster__maintenance_window_auto_upgrade__not_allowed

type azurerm_kubernetes_cluster__maintenance_window_auto_upgrade

type azurerm_kubernetes_cluster__maintenance_window_node_os__not_allowed

type azurerm_kubernetes_cluster__maintenance_window_node_os
type azurerm_kubernetes_cluster__microsoft_defender
type azurerm_kubernetes_cluster__monitor_metrics

type azurerm_kubernetes_cluster__network_profile__load_balancer_profile

type azurerm_kubernetes_cluster__network_profile__nat_gateway_profile
type azurerm_kubernetes_cluster__network_profile

type azurerm_kubernetes_cluster__oms_agent__oms_agent_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__oms_agent
type azurerm_kubernetes_cluster__service_mesh_profile
type azurerm_kubernetes_cluster__service_principal
type azurerm_kubernetes_cluster__storage_profile
type azurerm_kubernetes_cluster__timeouts

type azurerm_kubernetes_cluster__web_app_routing__web_app_routing_identity = {
  client_id : string;  (** client_id *)
  object_id : string;  (** object_id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster__web_app_routing
type azurerm_kubernetes_cluster__windows_profile__gmsa
type azurerm_kubernetes_cluster__windows_profile
type azurerm_kubernetes_cluster__workload_autoscaler_profile

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

type azurerm_kubernetes_cluster

val azurerm_kubernetes_cluster :
  ?automatic_channel_upgrade:string ->
  ?azure_policy_enabled:bool ->
  ?custom_ca_trust_certificates_base64:string list ->
  ?disk_encryption_set_id:string ->
  ?dns_prefix:string ->
  ?dns_prefix_private_cluster:string ->
  ?edge_zone:string ->
  ?enable_pod_security_policy:bool ->
  ?http_application_routing_enabled:bool ->
  ?image_cleaner_enabled:bool ->
  ?image_cleaner_interval_hours:float ->
  ?local_account_disabled:bool ->
  ?node_os_channel_upgrade:string ->
  ?oidc_issuer_enabled:bool ->
  ?open_service_mesh_enabled:bool ->
  ?private_cluster_enabled:bool ->
  ?private_cluster_public_fqdn_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?role_based_access_control_enabled:bool ->
  ?run_command_enabled:bool ->
  ?sku_tier:string ->
  ?support_plan:string ->
  ?tags:(string * string) list ->
  ?workload_identity_enabled:bool ->
  ?timeouts:azurerm_kubernetes_cluster__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  aci_connector_linux:
    azurerm_kubernetes_cluster__aci_connector_linux list ->
  api_server_access_profile:
    azurerm_kubernetes_cluster__api_server_access_profile list ->
  auto_scaler_profile:
    azurerm_kubernetes_cluster__auto_scaler_profile list ->
  azure_active_directory_role_based_access_control:
    azurerm_kubernetes_cluster__azure_active_directory_role_based_access_control
    list ->
  confidential_computing:
    azurerm_kubernetes_cluster__confidential_computing list ->
  default_node_pool:
    azurerm_kubernetes_cluster__default_node_pool list ->
  http_proxy_config:
    azurerm_kubernetes_cluster__http_proxy_config list ->
  identity:azurerm_kubernetes_cluster__identity list ->
  ingress_application_gateway:
    azurerm_kubernetes_cluster__ingress_application_gateway list ->
  key_management_service:
    azurerm_kubernetes_cluster__key_management_service list ->
  key_vault_secrets_provider:
    azurerm_kubernetes_cluster__key_vault_secrets_provider list ->
  kubelet_identity:azurerm_kubernetes_cluster__kubelet_identity list ->
  linux_profile:azurerm_kubernetes_cluster__linux_profile list ->
  maintenance_window:
    azurerm_kubernetes_cluster__maintenance_window list ->
  maintenance_window_auto_upgrade:
    azurerm_kubernetes_cluster__maintenance_window_auto_upgrade list ->
  maintenance_window_node_os:
    azurerm_kubernetes_cluster__maintenance_window_node_os list ->
  microsoft_defender:
    azurerm_kubernetes_cluster__microsoft_defender list ->
  monitor_metrics:azurerm_kubernetes_cluster__monitor_metrics list ->
  network_profile:azurerm_kubernetes_cluster__network_profile list ->
  oms_agent:azurerm_kubernetes_cluster__oms_agent list ->
  service_mesh_profile:
    azurerm_kubernetes_cluster__service_mesh_profile list ->
  service_principal:
    azurerm_kubernetes_cluster__service_principal list ->
  storage_profile:azurerm_kubernetes_cluster__storage_profile list ->
  web_app_routing:azurerm_kubernetes_cluster__web_app_routing list ->
  windows_profile:azurerm_kubernetes_cluster__windows_profile list ->
  workload_autoscaler_profile:
    azurerm_kubernetes_cluster__workload_autoscaler_profile list ->
  string ->
  unit
