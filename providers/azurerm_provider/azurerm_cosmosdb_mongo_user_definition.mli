(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_mongo_user_definition__timeouts
type azurerm_cosmosdb_mongo_user_definition

val azurerm_cosmosdb_mongo_user_definition :
  ?inherited_role_names:string list ->
  ?timeouts:azurerm_cosmosdb_mongo_user_definition__timeouts ->
  cosmos_mongo_database_id:string ->
  password:string ->
  username:string ->
  string ->
  unit
