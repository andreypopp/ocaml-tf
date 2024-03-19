(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kusto_eventhub_data_connection

val azurerm_kusto_eventhub_data_connection :
  ?compression:string prop ->
  ?data_format:string prop ->
  ?database_routing_type:string prop ->
  ?event_system_properties:string prop list ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?mapping_rule_name:string prop ->
  ?table_name:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  consumer_group:string prop ->
  database_name:string prop ->
  eventhub_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_kusto_eventhub_data_connection

val yojson_of_azurerm_kusto_eventhub_data_connection :
  azurerm_kusto_eventhub_data_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_name : string prop;
  compression : string prop;
  consumer_group : string prop;
  data_format : string prop;
  database_name : string prop;
  database_routing_type : string prop;
  event_system_properties : string list prop;
  eventhub_id : string prop;
  id : string prop;
  identity_id : string prop;
  location : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?compression:string prop ->
  ?data_format:string prop ->
  ?database_routing_type:string prop ->
  ?event_system_properties:string prop list ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?mapping_rule_name:string prop ->
  ?table_name:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  consumer_group:string prop ->
  database_name:string prop ->
  eventhub_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
