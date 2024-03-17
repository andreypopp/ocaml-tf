(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_mongo_role_definition__privilege__resource
type azurerm_cosmosdb_mongo_role_definition__privilege
type azurerm_cosmosdb_mongo_role_definition__timeouts
type azurerm_cosmosdb_mongo_role_definition

val azurerm_cosmosdb_mongo_role_definition :
  ?id:string ->
  ?inherited_role_names:string list ->
  ?timeouts:azurerm_cosmosdb_mongo_role_definition__timeouts ->
  cosmos_mongo_database_id:string ->
  role_name:string ->
  privilege:azurerm_cosmosdb_mongo_role_definition__privilege list ->
  string ->
  unit
