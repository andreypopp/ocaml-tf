(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_mongo_user_definition

val azurerm_cosmosdb_mongo_user_definition :
  ?id:string prop ->
  ?inherited_role_names:string prop list ->
  ?timeouts:timeouts ->
  cosmos_mongo_database_id:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  azurerm_cosmosdb_mongo_user_definition

val yojson_of_azurerm_cosmosdb_mongo_user_definition :
  azurerm_cosmosdb_mongo_user_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  password : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?inherited_role_names:string prop list ->
  ?timeouts:timeouts ->
  cosmos_mongo_database_id:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?inherited_role_names:string prop list ->
  ?timeouts:timeouts ->
  cosmos_mongo_database_id:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
