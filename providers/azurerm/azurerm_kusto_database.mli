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

type azurerm_kusto_database

val azurerm_kusto_database :
  ?hot_cache_period:string prop ->
  ?id:string prop ->
  ?soft_delete_period:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_kusto_database

val yojson_of_azurerm_kusto_database : azurerm_kusto_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_name : string prop;
  hot_cache_period : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  size : float prop;
  soft_delete_period : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?hot_cache_period:string prop ->
  ?id:string prop ->
  ?soft_delete_period:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?hot_cache_period:string prop ->
  ?id:string prop ->
  ?soft_delete_period:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
