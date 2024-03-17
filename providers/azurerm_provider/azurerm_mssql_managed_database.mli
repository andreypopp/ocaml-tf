(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_database__long_term_retention_policy
type azurerm_mssql_managed_database__point_in_time_restore
type azurerm_mssql_managed_database__timeouts
type azurerm_mssql_managed_database

val azurerm_mssql_managed_database :
  ?id:string prop ->
  ?short_term_retention_days:float prop ->
  ?timeouts:azurerm_mssql_managed_database__timeouts ->
  managed_instance_id:string prop ->
  name:string prop ->
  long_term_retention_policy:
    azurerm_mssql_managed_database__long_term_retention_policy list ->
  point_in_time_restore:
    azurerm_mssql_managed_database__point_in_time_restore list ->
  string ->
  unit
