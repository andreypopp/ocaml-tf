(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_role_assignment__timeouts
type azurerm_cosmosdb_sql_role_assignment

val azurerm_cosmosdb_sql_role_assignment :
  ?id:string ->
  ?name:string ->
  ?timeouts:azurerm_cosmosdb_sql_role_assignment__timeouts ->
  account_name:string ->
  principal_id:string ->
  resource_group_name:string ->
  role_definition_id:string ->
  scope:string ->
  string ->
  unit
