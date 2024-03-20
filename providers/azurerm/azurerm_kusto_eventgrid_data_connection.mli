(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  database_name:string prop ->
  eventhub_consumer_group_name:string prop ->
  eventhub_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  unit ->
  azurerm_kusto_eventgrid_data_connection

val yojson_of_azurerm_kusto_eventgrid_data_connection :
  azurerm_kusto_eventgrid_data_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  blob_storage_event_type : string prop;
  cluster_name : string prop;
  data_format : string prop;
  database_name : string prop;
  database_routing_type : string prop;
  eventgrid_resource_id : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_id : string prop;
  id : string prop;
  location : string prop;
  managed_identity_resource_id : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  skip_first_record : bool prop;
  storage_account_id : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?blob_storage_event_type:string prop ->
  ?data_format:string prop ->
  ?database_routing_type:string prop ->
  ?eventgrid_resource_id:string prop ->
  ?id:string prop ->
  ?managed_identity_resource_id:string prop ->
  ?mapping_rule_name:string prop ->
  ?skip_first_record:bool prop ->
  ?table_name:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  database_name:string prop ->
  eventhub_consumer_group_name:string prop ->
  eventhub_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  string ->
  t

val make :
  ?blob_storage_event_type:string prop ->
  ?data_format:string prop ->
  ?database_routing_type:string prop ->
  ?eventgrid_resource_id:string prop ->
  ?id:string prop ->
  ?managed_identity_resource_id:string prop ->
  ?mapping_rule_name:string prop ->
  ?skip_first_record:bool prop ->
  ?table_name:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  database_name:string prop ->
  eventhub_consumer_group_name:string prop ->
  eventhub_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  string ->
  t Tf_core.resource
