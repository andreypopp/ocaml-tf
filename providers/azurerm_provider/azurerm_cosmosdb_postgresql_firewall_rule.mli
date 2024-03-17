(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_firewall_rule__timeouts
type azurerm_cosmosdb_postgresql_firewall_rule

val azurerm_cosmosdb_postgresql_firewall_rule :
  ?id:string ->
  ?timeouts:azurerm_cosmosdb_postgresql_firewall_rule__timeouts ->
  cluster_id:string ->
  end_ip_address:string ->
  name:string ->
  start_ip_address:string ->
  string ->
  unit
