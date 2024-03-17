(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_failover_group__partner_server
type azurerm_mssql_failover_group__read_write_endpoint_failover_policy
type azurerm_mssql_failover_group__timeouts
type azurerm_mssql_failover_group

type t = private {
  databases : string list prop;
  id : string prop;
  name : string prop;
  readonly_endpoint_failover_policy_enabled : bool prop;
  server_id : string prop;
  tags : (string * string) list prop;
}

val azurerm_mssql_failover_group :
  ?databases:string prop list ->
  ?id:string prop ->
  ?readonly_endpoint_failover_policy_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mssql_failover_group__timeouts ->
  name:string prop ->
  server_id:string prop ->
  partner_server:azurerm_mssql_failover_group__partner_server list ->
  read_write_endpoint_failover_policy:
    azurerm_mssql_failover_group__read_write_endpoint_failover_policy
    list ->
  string ->
  t
