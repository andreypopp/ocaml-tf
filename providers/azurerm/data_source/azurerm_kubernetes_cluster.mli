(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aci_connector_linux = {
  subnet_name : string prop;  (** subnet_name *)
}

type agent_pool_profile__upgrade_settings = {
  max_surge : string prop;  (** max_surge *)
}

type agent_pool_profile = {
  count : float prop;  (** count *)
  enable_auto_scaling : bool prop;  (** enable_auto_scaling *)
  enable_node_public_ip : bool prop;  (** enable_node_public_ip *)
  max_count : float prop;  (** max_count *)
  max_pods : float prop;  (** max_pods *)
  min_count : float prop;  (** min_count *)
  name : string prop;  (** name *)
  node_labels : (string * string prop) list;  (** node_labels *)
  node_public_ip_prefix_id : string prop;
      (** node_public_ip_prefix_id *)
  node_taints : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** node_taints *)
  orchestrator_version : string prop;  (** orchestrator_version *)
  os_disk_size_gb : float prop;  (** os_disk_size_gb *)
  os_type : string prop;  (** os_type *)
  tags : (string * string prop) list;  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  upgrade_settings : agent_pool_profile__upgrade_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** upgrade_settings *)
  vm_size : string prop;  (** vm_size *)
  vnet_subnet_id : string prop;  (** vnet_subnet_id *)
  zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** zones *)
}

type azure_active_directory_role_based_access_control = {
  admin_group_object_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** admin_group_object_ids *)
  azure_rbac_enabled : bool prop;  (** azure_rbac_enabled *)
  client_app_id : string prop;  (** client_app_id *)
  managed : bool prop;  (** managed *)
  server_app_id : string prop;  (** server_app_id *)
  tenant_id : string prop;  (** tenant_id *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type ingress_application_gateway__ingress_application_gateway_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type ingress_application_gateway = {
  effective_gateway_id : string prop;  (** effective_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  gateway_name : string prop;  (** gateway_name *)
  ingress_application_gateway_identity :
    ingress_application_gateway__ingress_application_gateway_identity
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ingress_application_gateway_identity *)
  subnet_cidr : string prop;  (** subnet_cidr *)
  subnet_id : string prop;  (** subnet_id *)
}

type key_management_service = {
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  key_vault_network_access : string prop;
      (** key_vault_network_access *)
}

type key_vault_secrets_provider__secret_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type key_vault_secrets_provider = {
  secret_identity : key_vault_secrets_provider__secret_identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret_identity *)
  secret_rotation_enabled : bool prop;
      (** secret_rotation_enabled *)
  secret_rotation_interval : string prop;
      (** secret_rotation_interval *)
}

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

type kubelet_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type linux_profile__ssh_key = {
  key_data : string prop;  (** key_data *)
}

type linux_profile = {
  admin_username : string prop;  (** admin_username *)
  ssh_key : linux_profile__ssh_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ssh_key *)
}

type microsoft_defender = {
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
}

type network_profile = {
  dns_service_ip : string prop;  (** dns_service_ip *)
  docker_bridge_cidr : string prop;  (** docker_bridge_cidr *)
  load_balancer_sku : string prop;  (** load_balancer_sku *)
  network_plugin : string prop;  (** network_plugin *)
  network_policy : string prop;  (** network_policy *)
  pod_cidr : string prop;  (** pod_cidr *)
  service_cidr : string prop;  (** service_cidr *)
}

type oms_agent__oms_agent_identity = {
  client_id : string prop;  (** client_id *)
  object_id : string prop;  (** object_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type oms_agent = {
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  msi_auth_for_monitoring_enabled : bool prop;
      (** msi_auth_for_monitoring_enabled *)
  oms_agent_identity : oms_agent__oms_agent_identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oms_agent_identity *)
}

type service_mesh_profile = {
  external_ingress_gateway_enabled : bool prop;
      (** external_ingress_gateway_enabled *)
  internal_ingress_gateway_enabled : bool prop;
      (** internal_ingress_gateway_enabled *)
  mode : string prop;  (** mode *)
}

type service_principal = {
  client_id : string prop;  (** client_id *)
}

type storage_profile = {
  blob_driver_enabled : bool prop;  (** blob_driver_enabled *)
  disk_driver_enabled : bool prop;  (** disk_driver_enabled *)
  disk_driver_version : string prop;  (** disk_driver_version *)
  file_driver_enabled : bool prop;  (** file_driver_enabled *)
  snapshot_controller_enabled : bool prop;
      (** snapshot_controller_enabled *)
}

type windows_profile = {
  admin_username : string prop;  (** admin_username *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_kubernetes_cluster

val azurerm_kubernetes_cluster :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_kubernetes_cluster

val yojson_of_azurerm_kubernetes_cluster :
  azurerm_kubernetes_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aci_connector_linux : aci_connector_linux list prop;
  agent_pool_profile : agent_pool_profile list prop;
  api_server_authorized_ip_ranges : string list prop;
  azure_active_directory_role_based_access_control :
    azure_active_directory_role_based_access_control list prop;
  azure_policy_enabled : bool prop;
  current_kubernetes_version : string prop;
  custom_ca_trust_certificates_base64 : string list prop;
  disk_encryption_set_id : string prop;
  dns_prefix : string prop;
  fqdn : string prop;
  http_application_routing_enabled : bool prop;
  http_application_routing_zone_name : string prop;
  id : string prop;
  identity : identity list prop;
  ingress_application_gateway :
    ingress_application_gateway list prop;
  key_management_service : key_management_service list prop;
  key_vault_secrets_provider : key_vault_secrets_provider list prop;
  kube_admin_config : kube_admin_config list prop;
  kube_admin_config_raw : string prop;
  kube_config : kube_config list prop;
  kube_config_raw : string prop;
  kubelet_identity : kubelet_identity list prop;
  kubernetes_version : string prop;
  linux_profile : linux_profile list prop;
  location : string prop;
  microsoft_defender : microsoft_defender list prop;
  name : string prop;
  network_profile : network_profile list prop;
  node_resource_group : string prop;
  node_resource_group_id : string prop;
  oidc_issuer_enabled : bool prop;
  oidc_issuer_url : string prop;
  oms_agent : oms_agent list prop;
  open_service_mesh_enabled : bool prop;
  private_cluster_enabled : bool prop;
  private_fqdn : string prop;
  resource_group_name : string prop;
  role_based_access_control_enabled : bool prop;
  service_mesh_profile : service_mesh_profile list prop;
  service_principal : service_principal list prop;
  storage_profile : storage_profile list prop;
  tags : (string * string) list prop;
  windows_profile : windows_profile list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
