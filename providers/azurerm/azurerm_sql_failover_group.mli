(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_failover_group__partner_servers
type azurerm_sql_failover_group__read_write_endpoint_failover_policy
type azurerm_sql_failover_group__readonly_endpoint_failover_policy
type azurerm_sql_failover_group__timeouts
type azurerm_sql_failover_group

type t = private {
  databases : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  role : string prop;
  server_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_sql_failover_group :
  ?databases:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_sql_failover_group__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  partner_servers:azurerm_sql_failover_group__partner_servers list ->
  read_write_endpoint_failover_policy:
    azurerm_sql_failover_group__read_write_endpoint_failover_policy
    list ->
  readonly_endpoint_failover_policy:
    azurerm_sql_failover_group__readonly_endpoint_failover_policy
    list ->
  string ->
  t
