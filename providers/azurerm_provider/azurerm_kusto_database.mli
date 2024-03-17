(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_database__timeouts
type azurerm_kusto_database

val azurerm_kusto_database :
  ?hot_cache_period:string ->
  ?soft_delete_period:string ->
  ?timeouts:azurerm_kusto_database__timeouts ->
  cluster_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
