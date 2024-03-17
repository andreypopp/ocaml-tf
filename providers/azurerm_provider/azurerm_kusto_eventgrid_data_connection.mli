(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_eventgrid_data_connection__timeouts
type azurerm_kusto_eventgrid_data_connection

val azurerm_kusto_eventgrid_data_connection :
  ?blob_storage_event_type:string ->
  ?data_format:string ->
  ?database_routing_type:string ->
  ?eventgrid_resource_id:string ->
  ?managed_identity_resource_id:string ->
  ?mapping_rule_name:string ->
  ?skip_first_record:bool ->
  ?table_name:string ->
  ?timeouts:azurerm_kusto_eventgrid_data_connection__timeouts ->
  cluster_name:string ->
  database_name:string ->
  eventhub_consumer_group_name:string ->
  eventhub_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  storage_account_id:string ->
  string ->
  unit
