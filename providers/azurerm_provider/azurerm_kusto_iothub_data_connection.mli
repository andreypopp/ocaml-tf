(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_iothub_data_connection__timeouts
type azurerm_kusto_iothub_data_connection

val azurerm_kusto_iothub_data_connection :
  ?data_format:string ->
  ?database_routing_type:string ->
  ?event_system_properties:string list ->
  ?id:string ->
  ?mapping_rule_name:string ->
  ?table_name:string ->
  ?timeouts:azurerm_kusto_iothub_data_connection__timeouts ->
  cluster_name:string ->
  consumer_group:string ->
  database_name:string ->
  iothub_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  shared_access_policy_name:string ->
  string ->
  unit
