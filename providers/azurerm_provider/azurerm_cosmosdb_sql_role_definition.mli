(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_role_definition__permissions
type azurerm_cosmosdb_sql_role_definition__timeouts
type azurerm_cosmosdb_sql_role_definition

val azurerm_cosmosdb_sql_role_definition :
  ?id:string prop ->
  ?role_definition_id:string prop ->
  ?type_:string prop ->
  ?timeouts:azurerm_cosmosdb_sql_role_definition__timeouts ->
  account_name:string prop ->
  assignable_scopes:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  permissions:azurerm_cosmosdb_sql_role_definition__permissions list ->
  string ->
  unit
