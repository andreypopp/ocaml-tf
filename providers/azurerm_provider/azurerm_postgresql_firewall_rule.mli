(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_firewall_rule__timeouts
type azurerm_postgresql_firewall_rule

val azurerm_postgresql_firewall_rule :
  ?timeouts:azurerm_postgresql_firewall_rule__timeouts ->
  end_ip_address:string ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  start_ip_address:string ->
  string ->
  unit
