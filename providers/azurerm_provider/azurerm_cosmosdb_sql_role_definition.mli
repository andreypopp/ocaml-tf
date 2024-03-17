(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_role_definition__permissions
type azurerm_cosmosdb_sql_role_definition__timeouts
type azurerm_cosmosdb_sql_role_definition

val azurerm_cosmosdb_sql_role_definition :
  ?id:string ->
  ?role_definition_id:string ->
  ?type_:string ->
  ?timeouts:azurerm_cosmosdb_sql_role_definition__timeouts ->
  account_name:string ->
  assignable_scopes:string list ->
  name:string ->
  resource_group_name:string ->
  permissions:azurerm_cosmosdb_sql_role_definition__permissions list ->
  string ->
  unit
