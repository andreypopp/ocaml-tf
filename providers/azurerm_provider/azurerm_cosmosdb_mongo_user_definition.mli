(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_mongo_user_definition__timeouts
type azurerm_cosmosdb_mongo_user_definition

type t = private {
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  password : string prop;
  username : string prop;
}

val azurerm_cosmosdb_mongo_user_definition :
  ?id:string prop ->
  ?inherited_role_names:string prop list ->
  ?timeouts:azurerm_cosmosdb_mongo_user_definition__timeouts ->
  cosmos_mongo_database_id:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t
