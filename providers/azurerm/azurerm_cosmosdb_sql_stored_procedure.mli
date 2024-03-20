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

type azurerm_cosmosdb_sql_stored_procedure

val azurerm_cosmosdb_sql_stored_procedure :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  body:string prop ->
  container_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cosmosdb_sql_stored_procedure

val yojson_of_azurerm_cosmosdb_sql_stored_procedure :
  azurerm_cosmosdb_sql_stored_procedure -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  body : string prop;
  container_name : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  body:string prop ->
  container_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  body:string prop ->
  container_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
