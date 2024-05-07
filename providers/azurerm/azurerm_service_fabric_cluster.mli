(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_active_directory

val azure_active_directory :
  client_application_id:string prop ->
  cluster_application_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azure_active_directory

type certificate

val certificate :
  ?thumbprint_secondary:string prop ->
  thumbprint:string prop ->
  x509_store_name:string prop ->
  unit ->
  certificate

type certificate_common_names__common_names

val certificate_common_names__common_names :
  ?certificate_issuer_thumbprint:string prop ->
  certificate_common_name:string prop ->
  unit ->
  certificate_common_names__common_names

type certificate_common_names

val certificate_common_names :
  x509_store_name:string prop ->
  common_names:certificate_common_names__common_names list ->
  unit ->
  certificate_common_names

type client_certificate_common_name

val client_certificate_common_name :
  ?issuer_thumbprint:string prop ->
  common_name:string prop ->
  is_admin:bool prop ->
  unit ->
  client_certificate_common_name

type client_certificate_thumbprint

val client_certificate_thumbprint :
  is_admin:bool prop ->
  thumbprint:string prop ->
  unit ->
  client_certificate_thumbprint

type diagnostics_config

val diagnostics_config :
  blob_endpoint:string prop ->
  protected_account_key_name:string prop ->
  queue_endpoint:string prop ->
  storage_account_name:string prop ->
  table_endpoint:string prop ->
  unit ->
  diagnostics_config

type fabric_settings

val fabric_settings :
  ?parameters:(string * string prop) list ->
  name:string prop ->
  unit ->
  fabric_settings

type node_type__application_ports

val node_type__application_ports :
  end_port:float prop ->
  start_port:float prop ->
  unit ->
  node_type__application_ports

type node_type__ephemeral_ports

val node_type__ephemeral_ports :
  end_port:float prop ->
  start_port:float prop ->
  unit ->
  node_type__ephemeral_ports

type node_type

val node_type :
  ?capacities:(string * string prop) list ->
  ?durability_level:string prop ->
  ?is_stateless:bool prop ->
  ?multiple_availability_zones:bool prop ->
  ?placement_properties:(string * string prop) list ->
  ?reverse_proxy_endpoint_port:float prop ->
  ?application_ports:node_type__application_ports list ->
  ?ephemeral_ports:node_type__ephemeral_ports list ->
  client_endpoint_port:float prop ->
  http_endpoint_port:float prop ->
  instance_count:float prop ->
  is_primary:bool prop ->
  name:string prop ->
  unit ->
  node_type

type reverse_proxy_certificate

val reverse_proxy_certificate :
  ?thumbprint_secondary:string prop ->
  thumbprint:string prop ->
  x509_store_name:string prop ->
  unit ->
  reverse_proxy_certificate

type reverse_proxy_certificate_common_names__common_names

val reverse_proxy_certificate_common_names__common_names :
  ?certificate_issuer_thumbprint:string prop ->
  certificate_common_name:string prop ->
  unit ->
  reverse_proxy_certificate_common_names__common_names

type reverse_proxy_certificate_common_names

val reverse_proxy_certificate_common_names :
  x509_store_name:string prop ->
  common_names:
    reverse_proxy_certificate_common_names__common_names list ->
  unit ->
  reverse_proxy_certificate_common_names

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type upgrade_policy__delta_health_policy

val upgrade_policy__delta_health_policy :
  ?max_delta_unhealthy_applications_percent:float prop ->
  ?max_delta_unhealthy_nodes_percent:float prop ->
  ?max_upgrade_domain_delta_unhealthy_nodes_percent:float prop ->
  unit ->
  upgrade_policy__delta_health_policy

type upgrade_policy__health_policy

val upgrade_policy__health_policy :
  ?max_unhealthy_applications_percent:float prop ->
  ?max_unhealthy_nodes_percent:float prop ->
  unit ->
  upgrade_policy__health_policy

type upgrade_policy

val upgrade_policy :
  ?force_restart_enabled:bool prop ->
  ?health_check_retry_timeout:string prop ->
  ?health_check_stable_duration:string prop ->
  ?health_check_wait_duration:string prop ->
  ?upgrade_domain_timeout:string prop ->
  ?upgrade_replica_set_check_timeout:string prop ->
  ?upgrade_timeout:string prop ->
  ?delta_health_policy:upgrade_policy__delta_health_policy list ->
  ?health_policy:upgrade_policy__health_policy list ->
  unit ->
  upgrade_policy

type azurerm_service_fabric_cluster

val azurerm_service_fabric_cluster :
  ?add_on_features:string prop list ->
  ?cluster_code_version:string prop ->
  ?id:string prop ->
  ?service_fabric_zonal_upgrade_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?vmss_zonal_upgrade_mode:string prop ->
  ?azure_active_directory:azure_active_directory list ->
  ?certificate:certificate list ->
  ?certificate_common_names:certificate_common_names list ->
  ?client_certificate_common_name:client_certificate_common_name list ->
  ?client_certificate_thumbprint:client_certificate_thumbprint list ->
  ?diagnostics_config:diagnostics_config list ->
  ?fabric_settings:fabric_settings list ->
  ?reverse_proxy_certificate:reverse_proxy_certificate list ->
  ?reverse_proxy_certificate_common_names:
    reverse_proxy_certificate_common_names list ->
  ?timeouts:timeouts ->
  ?upgrade_policy:upgrade_policy list ->
  location:string prop ->
  management_endpoint:string prop ->
  name:string prop ->
  reliability_level:string prop ->
  resource_group_name:string prop ->
  upgrade_mode:string prop ->
  vm_image:string prop ->
  node_type:node_type list ->
  unit ->
  azurerm_service_fabric_cluster

val yojson_of_azurerm_service_fabric_cluster :
  azurerm_service_fabric_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  add_on_features : string list prop;
  cluster_code_version : string prop;
  cluster_endpoint : string prop;
  id : string prop;
  location : string prop;
  management_endpoint : string prop;
  name : string prop;
  reliability_level : string prop;
  resource_group_name : string prop;
  service_fabric_zonal_upgrade_mode : string prop;
  tags : (string * string) list prop;
  upgrade_mode : string prop;
  vm_image : string prop;
  vmss_zonal_upgrade_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?add_on_features:string prop list ->
  ?cluster_code_version:string prop ->
  ?id:string prop ->
  ?service_fabric_zonal_upgrade_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?vmss_zonal_upgrade_mode:string prop ->
  ?azure_active_directory:azure_active_directory list ->
  ?certificate:certificate list ->
  ?certificate_common_names:certificate_common_names list ->
  ?client_certificate_common_name:client_certificate_common_name list ->
  ?client_certificate_thumbprint:client_certificate_thumbprint list ->
  ?diagnostics_config:diagnostics_config list ->
  ?fabric_settings:fabric_settings list ->
  ?reverse_proxy_certificate:reverse_proxy_certificate list ->
  ?reverse_proxy_certificate_common_names:
    reverse_proxy_certificate_common_names list ->
  ?timeouts:timeouts ->
  ?upgrade_policy:upgrade_policy list ->
  location:string prop ->
  management_endpoint:string prop ->
  name:string prop ->
  reliability_level:string prop ->
  resource_group_name:string prop ->
  upgrade_mode:string prop ->
  vm_image:string prop ->
  node_type:node_type list ->
  string ->
  t

val make :
  ?add_on_features:string prop list ->
  ?cluster_code_version:string prop ->
  ?id:string prop ->
  ?service_fabric_zonal_upgrade_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?vmss_zonal_upgrade_mode:string prop ->
  ?azure_active_directory:azure_active_directory list ->
  ?certificate:certificate list ->
  ?certificate_common_names:certificate_common_names list ->
  ?client_certificate_common_name:client_certificate_common_name list ->
  ?client_certificate_thumbprint:client_certificate_thumbprint list ->
  ?diagnostics_config:diagnostics_config list ->
  ?fabric_settings:fabric_settings list ->
  ?reverse_proxy_certificate:reverse_proxy_certificate list ->
  ?reverse_proxy_certificate_common_names:
    reverse_proxy_certificate_common_names list ->
  ?timeouts:timeouts ->
  ?upgrade_policy:upgrade_policy list ->
  location:string prop ->
  management_endpoint:string prop ->
  name:string prop ->
  reliability_level:string prop ->
  resource_group_name:string prop ->
  upgrade_mode:string prop ->
  vm_image:string prop ->
  node_type:node_type list ->
  string ->
  t Tf_core.resource
