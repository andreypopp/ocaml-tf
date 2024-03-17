(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_firewall_rule__timeouts
type azurerm_mssql_firewall_rule

val azurerm_mssql_firewall_rule :
  ?timeouts:azurerm_mssql_firewall_rule__timeouts ->
  end_ip_address:string ->
  name:string ->
  server_id:string ->
  start_ip_address:string ->
  string ->
  unit
