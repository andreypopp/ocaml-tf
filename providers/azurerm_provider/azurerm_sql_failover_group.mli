(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_failover_group__partner_servers
type azurerm_sql_failover_group__read_write_endpoint_failover_policy
type azurerm_sql_failover_group__readonly_endpoint_failover_policy
type azurerm_sql_failover_group__timeouts
type azurerm_sql_failover_group

val azurerm_sql_failover_group :
  ?databases:string list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_sql_failover_group__timeouts ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  partner_servers:azurerm_sql_failover_group__partner_servers list ->
  read_write_endpoint_failover_policy:
    azurerm_sql_failover_group__read_write_endpoint_failover_policy
    list ->
  readonly_endpoint_failover_policy:
    azurerm_sql_failover_group__readonly_endpoint_failover_policy
    list ->
  string ->
  unit
