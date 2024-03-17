(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_firewall_rule__timeouts
type azurerm_sql_firewall_rule

val azurerm_sql_firewall_rule :
  ?id:string prop ->
  ?timeouts:azurerm_sql_firewall_rule__timeouts ->
  end_ip_address:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  start_ip_address:string prop ->
  string ->
  unit
