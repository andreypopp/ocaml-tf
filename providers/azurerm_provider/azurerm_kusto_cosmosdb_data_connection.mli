(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cosmosdb_data_connection__timeouts
type azurerm_kusto_cosmosdb_data_connection

val azurerm_kusto_cosmosdb_data_connection :
  ?mapping_rule_name:string ->
  ?retrieval_start_date:string ->
  ?timeouts:azurerm_kusto_cosmosdb_data_connection__timeouts ->
  cosmosdb_container_id:string ->
  kusto_database_id:string ->
  location:string ->
  managed_identity_id:string ->
  name:string ->
  table_name:string ->
  string ->
  unit
