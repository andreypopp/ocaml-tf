(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscale_settings = {
  max_throughput : float prop;  (** max_throughput *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cosmosdb_sql_database

val azurerm_cosmosdb_sql_database :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cosmosdb_sql_database

val yojson_of_azurerm_cosmosdb_sql_database :
  azurerm_cosmosdb_sql_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  autoscale_settings : autoscale_settings list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  throughput : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
