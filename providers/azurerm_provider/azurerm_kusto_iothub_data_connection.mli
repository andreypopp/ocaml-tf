(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_iothub_data_connection__timeouts
type azurerm_kusto_iothub_data_connection

val azurerm_kusto_iothub_data_connection :
  ?data_format:string prop ->
  ?database_routing_type:string prop ->
  ?event_system_properties:string prop list ->
  ?id:string prop ->
  ?mapping_rule_name:string prop ->
  ?table_name:string prop ->
  ?timeouts:azurerm_kusto_iothub_data_connection__timeouts ->
  cluster_name:string prop ->
  consumer_group:string prop ->
  database_name:string prop ->
  iothub_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  shared_access_policy_name:string prop ->
  string ->
  unit
