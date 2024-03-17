(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_workloads_sap_single_node_virtual_instance__identity

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__disk_volume_configuration

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__image

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__os_profile

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names__data_disk

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration

type azurerm_workloads_sap_single_node_virtual_instance__timeouts
type azurerm_workloads_sap_single_node_virtual_instance

type t = private {
  app_location : string prop;
  environment : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sap_fqdn : string prop;
  sap_product : string prop;
  tags : (string * string) list prop;
}

val azurerm_workloads_sap_single_node_virtual_instance :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_workloads_sap_single_node_virtual_instance__timeouts ->
  app_location:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_fqdn:string prop ->
  sap_product:string prop ->
  identity:
    azurerm_workloads_sap_single_node_virtual_instance__identity list ->
  single_server_configuration:
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration
    list ->
  string ->
  t
