(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_digital_twins_time_series_database_connection

val azurerm_digital_twins_time_series_database_connection :
  ?eventhub_consumer_group_name:string prop ->
  ?id:string prop ->
  ?kusto_table_name:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  eventhub_name:string prop ->
  eventhub_namespace_endpoint_uri:string prop ->
  eventhub_namespace_id:string prop ->
  kusto_cluster_id:string prop ->
  kusto_cluster_uri:string prop ->
  kusto_database_name:string prop ->
  name:string prop ->
  unit ->
  azurerm_digital_twins_time_series_database_connection

val yojson_of_azurerm_digital_twins_time_series_database_connection :
  azurerm_digital_twins_time_series_database_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  digital_twins_id : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_endpoint_uri : string prop;
  eventhub_namespace_id : string prop;
  id : string prop;
  kusto_cluster_id : string prop;
  kusto_cluster_uri : string prop;
  kusto_database_name : string prop;
  kusto_table_name : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?eventhub_consumer_group_name:string prop ->
  ?id:string prop ->
  ?kusto_table_name:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  eventhub_name:string prop ->
  eventhub_namespace_endpoint_uri:string prop ->
  eventhub_namespace_id:string prop ->
  kusto_cluster_id:string prop ->
  kusto_cluster_uri:string prop ->
  kusto_database_name:string prop ->
  name:string prop ->
  string ->
  t
