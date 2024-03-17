(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cosmosdb_data_connection__timeouts
type azurerm_kusto_cosmosdb_data_connection

val azurerm_kusto_cosmosdb_data_connection :
  ?id:string prop ->
  ?mapping_rule_name:string prop ->
  ?retrieval_start_date:string prop ->
  ?timeouts:azurerm_kusto_cosmosdb_data_connection__timeouts ->
  cosmosdb_container_id:string prop ->
  kusto_database_id:string prop ->
  location:string prop ->
  managed_identity_id:string prop ->
  name:string prop ->
  table_name:string prop ->
  string ->
  unit
