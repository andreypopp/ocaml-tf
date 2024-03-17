(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_table__autoscale_settings
type azurerm_cosmosdb_table__timeouts
type azurerm_cosmosdb_table

type t = private {
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  throughput : float prop;
}

val azurerm_cosmosdb_table :
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:azurerm_cosmosdb_table__timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:azurerm_cosmosdb_table__autoscale_settings list ->
  string ->
  t
