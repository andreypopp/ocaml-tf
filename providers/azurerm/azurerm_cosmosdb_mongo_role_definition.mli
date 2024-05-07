(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type privilege__resource

val privilege__resource :
  ?collection_name:string prop ->
  ?db_name:string prop ->
  unit ->
  privilege__resource

type privilege

val privilege :
  actions:string prop list ->
  resource:privilege__resource list ->
  unit ->
  privilege

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_mongo_role_definition

val azurerm_cosmosdb_mongo_role_definition :
  ?id:string prop ->
  ?inherited_role_names:string prop list ->
  ?privilege:privilege list ->
  ?timeouts:timeouts ->
  cosmos_mongo_database_id:string prop ->
  role_name:string prop ->
  unit ->
  azurerm_cosmosdb_mongo_role_definition

val yojson_of_azurerm_cosmosdb_mongo_role_definition :
  azurerm_cosmosdb_mongo_role_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  role_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?inherited_role_names:string prop list ->
  ?privilege:privilege list ->
  ?timeouts:timeouts ->
  cosmos_mongo_database_id:string prop ->
  role_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?inherited_role_names:string prop list ->
  ?privilege:privilege list ->
  ?timeouts:timeouts ->
  cosmos_mongo_database_id:string prop ->
  role_name:string prop ->
  string ->
  t Tf_core.resource
