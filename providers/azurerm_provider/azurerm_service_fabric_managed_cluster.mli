(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_service_fabric_managed_cluster__authentication__active_directory

type azurerm_service_fabric_managed_cluster__authentication__certificate

type azurerm_service_fabric_managed_cluster__authentication
type azurerm_service_fabric_managed_cluster__custom_fabric_setting
type azurerm_service_fabric_managed_cluster__lb_rule

type azurerm_service_fabric_managed_cluster__node_type__vm_secrets__certificates

type azurerm_service_fabric_managed_cluster__node_type__vm_secrets
type azurerm_service_fabric_managed_cluster__node_type
type azurerm_service_fabric_managed_cluster__timeouts
type azurerm_service_fabric_managed_cluster

val azurerm_service_fabric_managed_cluster :
  ?backup_service_enabled:bool ->
  ?dns_name:string ->
  ?dns_service_enabled:bool ->
  ?id:string ->
  ?password:string ->
  ?sku:string ->
  ?tags:(string * string) list ->
  ?upgrade_wave:string ->
  ?username:string ->
  ?timeouts:azurerm_service_fabric_managed_cluster__timeouts ->
  client_connection_port:float ->
  http_gateway_port:float ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  authentication:
    azurerm_service_fabric_managed_cluster__authentication list ->
  custom_fabric_setting:
    azurerm_service_fabric_managed_cluster__custom_fabric_setting
    list ->
  lb_rule:azurerm_service_fabric_managed_cluster__lb_rule list ->
  node_type:azurerm_service_fabric_managed_cluster__node_type list ->
  string ->
  unit
