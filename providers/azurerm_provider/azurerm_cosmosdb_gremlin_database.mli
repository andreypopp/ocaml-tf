(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_gremlin_database__autoscale_settings
type azurerm_cosmosdb_gremlin_database__timeouts
type azurerm_cosmosdb_gremlin_database

val azurerm_cosmosdb_gremlin_database :
  ?timeouts:azurerm_cosmosdb_gremlin_database__timeouts ->
  account_name:string ->
  name:string ->
  resource_group_name:string ->
  autoscale_settings:
    azurerm_cosmosdb_gremlin_database__autoscale_settings list ->
  string ->
  unit
