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

type azurerm_cosmosdb_sql_function

val azurerm_cosmosdb_sql_function :
  ?id:string prop ->
  ?timeouts:timeouts ->
  body:string prop ->
  container_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_cosmosdb_sql_function

val yojson_of_azurerm_cosmosdb_sql_function :
  azurerm_cosmosdb_sql_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  container_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  body:string prop ->
  container_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  body:string prop ->
  container_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
