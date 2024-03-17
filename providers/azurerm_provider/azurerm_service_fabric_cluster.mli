(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_service_fabric_cluster__azure_active_directory
type azurerm_service_fabric_cluster__certificate

type azurerm_service_fabric_cluster__certificate_common_names__common_names

type azurerm_service_fabric_cluster__certificate_common_names
type azurerm_service_fabric_cluster__client_certificate_common_name
type azurerm_service_fabric_cluster__client_certificate_thumbprint
type azurerm_service_fabric_cluster__diagnostics_config
type azurerm_service_fabric_cluster__fabric_settings
type azurerm_service_fabric_cluster__node_type__application_ports
type azurerm_service_fabric_cluster__node_type__ephemeral_ports
type azurerm_service_fabric_cluster__node_type
type azurerm_service_fabric_cluster__reverse_proxy_certificate

type azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names__common_names

type azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names

type azurerm_service_fabric_cluster__timeouts

type azurerm_service_fabric_cluster__upgrade_policy__delta_health_policy

type azurerm_service_fabric_cluster__upgrade_policy__health_policy
type azurerm_service_fabric_cluster__upgrade_policy
type azurerm_service_fabric_cluster

val azurerm_service_fabric_cluster :
  ?add_on_features:string list ->
  ?service_fabric_zonal_upgrade_mode:string ->
  ?tags:(string * string) list ->
  ?vmss_zonal_upgrade_mode:string ->
  ?timeouts:azurerm_service_fabric_cluster__timeouts ->
  location:string ->
  management_endpoint:string ->
  name:string ->
  reliability_level:string ->
  resource_group_name:string ->
  upgrade_mode:string ->
  vm_image:string ->
  azure_active_directory:
    azurerm_service_fabric_cluster__azure_active_directory list ->
  certificate:azurerm_service_fabric_cluster__certificate list ->
  certificate_common_names:
    azurerm_service_fabric_cluster__certificate_common_names list ->
  client_certificate_common_name:
    azurerm_service_fabric_cluster__client_certificate_common_name
    list ->
  client_certificate_thumbprint:
    azurerm_service_fabric_cluster__client_certificate_thumbprint
    list ->
  diagnostics_config:
    azurerm_service_fabric_cluster__diagnostics_config list ->
  fabric_settings:
    azurerm_service_fabric_cluster__fabric_settings list ->
  node_type:azurerm_service_fabric_cluster__node_type list ->
  reverse_proxy_certificate:
    azurerm_service_fabric_cluster__reverse_proxy_certificate list ->
  reverse_proxy_certificate_common_names:
    azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names
    list ->
  upgrade_policy:azurerm_service_fabric_cluster__upgrade_policy list ->
  string ->
  unit
