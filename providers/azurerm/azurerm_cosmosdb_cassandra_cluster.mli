(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_cluster__identity
type azurerm_cosmosdb_cassandra_cluster__timeouts
type azurerm_cosmosdb_cassandra_cluster

type t = private {
  authentication_method : string prop;
  client_certificate_pems : string list prop;
  default_admin_password : string prop;
  delegated_management_subnet_id : string prop;
  external_gossip_certificate_pems : string list prop;
  external_seed_node_ip_addresses : string list prop;
  hours_between_backups : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  repair_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

val azurerm_cosmosdb_cassandra_cluster :
  ?authentication_method:string prop ->
  ?client_certificate_pems:string prop list ->
  ?external_gossip_certificate_pems:string prop list ->
  ?external_seed_node_ip_addresses:string prop list ->
  ?hours_between_backups:float prop ->
  ?id:string prop ->
  ?repair_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?version:string prop ->
  ?timeouts:azurerm_cosmosdb_cassandra_cluster__timeouts ->
  default_admin_password:string prop ->
  delegated_management_subnet_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_cosmosdb_cassandra_cluster__identity list ->
  string ->
  t
