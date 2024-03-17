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

val azurerm_workloads_sap_single_node_virtual_instance :
  ?managed_resource_group_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_workloads_sap_single_node_virtual_instance__timeouts ->
  app_location:string ->
  environment:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sap_fqdn:string ->
  sap_product:string ->
  identity:
    azurerm_workloads_sap_single_node_virtual_instance__identity list ->
  single_server_configuration:
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration
    list ->
  string ->
  unit
