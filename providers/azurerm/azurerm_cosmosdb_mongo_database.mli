(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscale_settings

val autoscale_settings :
  ?max_throughput:float prop -> unit -> autoscale_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_mongo_database

val azurerm_cosmosdb_mongo_database :
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:autoscale_settings list ->
  unit ->
  azurerm_cosmosdb_mongo_database

val yojson_of_azurerm_cosmosdb_mongo_database :
  azurerm_cosmosdb_mongo_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  throughput : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:autoscale_settings list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:autoscale_settings list ->
  string ->
  t Tf_core.resource
