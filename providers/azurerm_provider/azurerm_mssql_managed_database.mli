(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_database__long_term_retention_policy
type azurerm_mssql_managed_database__point_in_time_restore
type azurerm_mssql_managed_database__timeouts
type azurerm_mssql_managed_database

val azurerm_mssql_managed_database :
  ?id:string ->
  ?short_term_retention_days:float ->
  ?timeouts:azurerm_mssql_managed_database__timeouts ->
  managed_instance_id:string ->
  name:string ->
  long_term_retention_policy:
    azurerm_mssql_managed_database__long_term_retention_policy list ->
  point_in_time_restore:
    azurerm_mssql_managed_database__point_in_time_restore list ->
  string ->
  unit
