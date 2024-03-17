(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_eventgrid_data_connection__timeouts
type azurerm_kusto_eventgrid_data_connection

val azurerm_kusto_eventgrid_data_connection :
  ?blob_storage_event_type:string prop ->
  ?data_format:string prop ->
  ?database_routing_type:string prop ->
  ?eventgrid_resource_id:string prop ->
  ?id:string prop ->
  ?managed_identity_resource_id:string prop ->
  ?mapping_rule_name:string prop ->
  ?skip_first_record:bool prop ->
  ?table_name:string prop ->
  ?timeouts:azurerm_kusto_eventgrid_data_connection__timeouts ->
  cluster_name:string prop ->
  database_name:string prop ->
  eventhub_consumer_group_name:string prop ->
  eventhub_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  string ->
  unit
