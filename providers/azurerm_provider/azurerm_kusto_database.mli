(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_database__timeouts
type azurerm_kusto_database

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

val azurerm_kusto_database :
  ?hot_cache_period:string prop ->
  ?id:string prop ->
  ?soft_delete_period:string prop ->
  ?timeouts:azurerm_kusto_database__timeouts ->
  cluster_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
