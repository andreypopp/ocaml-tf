(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_time_series_database_connection__timeouts
type azurerm_digital_twins_time_series_database_connection

val azurerm_digital_twins_time_series_database_connection :
  ?eventhub_consumer_group_name:string ->
  ?timeouts:
    azurerm_digital_twins_time_series_database_connection__timeouts ->
  digital_twins_id:string ->
  eventhub_name:string ->
  eventhub_namespace_endpoint_uri:string ->
  eventhub_namespace_id:string ->
  kusto_cluster_id:string ->
  kusto_cluster_uri:string ->
  kusto_database_name:string ->
  name:string ->
  string ->
  unit
