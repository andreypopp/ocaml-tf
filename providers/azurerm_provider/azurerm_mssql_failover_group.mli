(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_failover_group__partner_server
type azurerm_mssql_failover_group__read_write_endpoint_failover_policy
type azurerm_mssql_failover_group__timeouts
type azurerm_mssql_failover_group

val azurerm_mssql_failover_group :
  ?databases:string list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mssql_failover_group__timeouts ->
  name:string ->
  server_id:string ->
  partner_server:azurerm_mssql_failover_group__partner_server list ->
  read_write_endpoint_failover_policy:
    azurerm_mssql_failover_group__read_write_endpoint_failover_policy
    list ->
  string ->
  unit
