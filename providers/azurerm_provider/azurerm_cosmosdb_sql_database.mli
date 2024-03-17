(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_database__autoscale_settings
type azurerm_cosmosdb_sql_database__timeouts
type azurerm_cosmosdb_sql_database

type t = private {
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  throughput : float prop;
}

val azurerm_cosmosdb_sql_database :
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:azurerm_cosmosdb_sql_database__timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:
    azurerm_cosmosdb_sql_database__autoscale_settings list ->
  string ->
  t
