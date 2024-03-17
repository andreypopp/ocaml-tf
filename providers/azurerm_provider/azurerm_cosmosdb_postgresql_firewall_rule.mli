(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_firewall_rule__timeouts
type azurerm_cosmosdb_postgresql_firewall_rule

val azurerm_cosmosdb_postgresql_firewall_rule :
  ?id:string prop ->
  ?timeouts:azurerm_cosmosdb_postgresql_firewall_rule__timeouts ->
  cluster_id:string prop ->
  end_ip_address:string prop ->
  name:string prop ->
  start_ip_address:string prop ->
  string ->
  unit
