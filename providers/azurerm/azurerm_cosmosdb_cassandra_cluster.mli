(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity : type_:string prop -> unit -> identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_cassandra_cluster

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
  ?timeouts:timeouts ->
  default_admin_password:string prop ->
  delegated_management_subnet_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_cosmosdb_cassandra_cluster

val yojson_of_azurerm_cosmosdb_cassandra_cluster :
  azurerm_cosmosdb_cassandra_cluster -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?authentication_method:string prop ->
  ?client_certificate_pems:string prop list ->
  ?external_gossip_certificate_pems:string prop list ->
  ?external_seed_node_ip_addresses:string prop list ->
  ?hours_between_backups:float prop ->
  ?id:string prop ->
  ?repair_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  default_admin_password:string prop ->
  delegated_management_subnet_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?authentication_method:string prop ->
  ?client_certificate_pems:string prop list ->
  ?external_gossip_certificate_pems:string prop list ->
  ?external_seed_node_ip_addresses:string prop list ->
  ?hours_between_backups:float prop ->
  ?id:string prop ->
  ?repair_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  default_admin_password:string prop ->
  delegated_management_subnet_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource
