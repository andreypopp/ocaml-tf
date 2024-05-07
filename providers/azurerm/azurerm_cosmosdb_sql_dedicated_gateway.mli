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

type azurerm_cosmosdb_sql_dedicated_gateway

val azurerm_cosmosdb_sql_dedicated_gateway :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cosmosdb_account_id:string prop ->
  instance_count:float prop ->
  instance_size:string prop ->
  unit ->
  azurerm_cosmosdb_sql_dedicated_gateway

val yojson_of_azurerm_cosmosdb_sql_dedicated_gateway :
  azurerm_cosmosdb_sql_dedicated_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cosmosdb_account_id : string prop;
  id : string prop;
  instance_count : float prop;
  instance_size : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cosmosdb_account_id:string prop ->
  instance_count:float prop ->
  instance_size:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cosmosdb_account_id:string prop ->
  instance_count:float prop ->
  instance_size:string prop ->
  string ->
  t Tf_core.resource
