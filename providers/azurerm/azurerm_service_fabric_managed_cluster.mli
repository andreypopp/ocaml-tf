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

type t = private {
  backup_service_enabled : bool prop;
  client_connection_port : float prop;
  dns_name : string prop;
  dns_service_enabled : bool prop;
  http_gateway_port : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  upgrade_wave : string prop;
  username : string prop;
}

val azurerm_service_fabric_managed_cluster :
  ?backup_service_enabled:bool prop ->
  ?dns_name:string prop ->
  ?dns_service_enabled:bool prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?upgrade_wave:string prop ->
  ?username:string prop ->
  ?timeouts:azurerm_service_fabric_managed_cluster__timeouts ->
  client_connection_port:float prop ->
  http_gateway_port:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  authentication:
    azurerm_service_fabric_managed_cluster__authentication list ->
  custom_fabric_setting:
    azurerm_service_fabric_managed_cluster__custom_fabric_setting
    list ->
  lb_rule:azurerm_service_fabric_managed_cluster__lb_rule list ->
  node_type:azurerm_service_fabric_managed_cluster__node_type list ->
  string ->
  t
