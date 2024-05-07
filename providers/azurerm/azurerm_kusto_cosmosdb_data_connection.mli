(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_kusto_cosmosdb_data_connection

val azurerm_kusto_cosmosdb_data_connection :
  ?id:string prop ->
  ?mapping_rule_name:string prop ->
  ?retrieval_start_date:string prop ->
  ?timeouts:timeouts ->
  cosmosdb_container_id:string prop ->
  kusto_database_id:string prop ->
  location:string prop ->
  managed_identity_id:string prop ->
  name:string prop ->
  table_name:string prop ->
  unit ->
  azurerm_kusto_cosmosdb_data_connection

val yojson_of_azurerm_kusto_cosmosdb_data_connection :
  azurerm_kusto_cosmosdb_data_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cosmosdb_container_id : string prop;
  id : string prop;
  kusto_database_id : string prop;
  location : string prop;
  managed_identity_id : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  retrieval_start_date : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mapping_rule_name:string prop ->
  ?retrieval_start_date:string prop ->
  ?timeouts:timeouts ->
  cosmosdb_container_id:string prop ->
  kusto_database_id:string prop ->
  location:string prop ->
  managed_identity_id:string prop ->
  name:string prop ->
  table_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mapping_rule_name:string prop ->
  ?retrieval_start_date:string prop ->
  ?timeouts:timeouts ->
  cosmosdb_container_id:string prop ->
  kusto_database_id:string prop ->
  location:string prop ->
  managed_identity_id:string prop ->
  name:string prop ->
  table_name:string prop ->
  string ->
  t Tf_core.resource
