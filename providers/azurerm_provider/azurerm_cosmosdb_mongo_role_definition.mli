(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_mongo_role_definition__privilege__resource
type azurerm_cosmosdb_mongo_role_definition__privilege
type azurerm_cosmosdb_mongo_role_definition__timeouts
type azurerm_cosmosdb_mongo_role_definition

type t = private {
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  role_name : string prop;
}

val azurerm_cosmosdb_mongo_role_definition :
  ?id:string prop ->
  ?inherited_role_names:string prop list ->
  ?timeouts:azurerm_cosmosdb_mongo_role_definition__timeouts ->
  cosmos_mongo_database_id:string prop ->
  role_name:string prop ->
  privilege:azurerm_cosmosdb_mongo_role_definition__privilege list ->
  string ->
  t
