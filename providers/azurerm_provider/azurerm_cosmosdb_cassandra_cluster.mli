(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_cluster__identity
type azurerm_cosmosdb_cassandra_cluster__timeouts
type azurerm_cosmosdb_cassandra_cluster

val azurerm_cosmosdb_cassandra_cluster :
  ?authentication_method:string ->
  ?client_certificate_pems:string list ->
  ?external_gossip_certificate_pems:string list ->
  ?external_seed_node_ip_addresses:string list ->
  ?hours_between_backups:float ->
  ?id:string ->
  ?repair_enabled:bool ->
  ?tags:(string * string) list ->
  ?version:string ->
  ?timeouts:azurerm_cosmosdb_cassandra_cluster__timeouts ->
  default_admin_password:string ->
  delegated_management_subnet_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_cosmosdb_cassandra_cluster__identity list ->
  string ->
  unit
