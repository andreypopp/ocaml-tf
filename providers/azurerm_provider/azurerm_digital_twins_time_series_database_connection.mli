(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_time_series_database_connection__timeouts
type azurerm_digital_twins_time_series_database_connection

val azurerm_digital_twins_time_series_database_connection :
  ?eventhub_consumer_group_name:string prop ->
  ?id:string prop ->
  ?kusto_table_name:string prop ->
  ?timeouts:
    azurerm_digital_twins_time_series_database_connection__timeouts ->
  digital_twins_id:string prop ->
  eventhub_name:string prop ->
  eventhub_namespace_endpoint_uri:string prop ->
  eventhub_namespace_id:string prop ->
  kusto_cluster_id:string prop ->
  kusto_cluster_uri:string prop ->
  kusto_database_name:string prop ->
  name:string prop ->
  string ->
  unit
