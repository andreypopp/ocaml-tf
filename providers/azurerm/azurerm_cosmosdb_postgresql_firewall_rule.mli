(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_postgresql_firewall_rule

val azurerm_cosmosdb_postgresql_firewall_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  end_ip_address:string prop ->
  name:string prop ->
  start_ip_address:string prop ->
  unit ->
  azurerm_cosmosdb_postgresql_firewall_rule

val yojson_of_azurerm_cosmosdb_postgresql_firewall_rule :
  azurerm_cosmosdb_postgresql_firewall_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_id : string prop;
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  start_ip_address : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  end_ip_address:string prop ->
  name:string prop ->
  start_ip_address:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  end_ip_address:string prop ->
  name:string prop ->
  start_ip_address:string prop ->
  string ->
  t Tf_core.resource
