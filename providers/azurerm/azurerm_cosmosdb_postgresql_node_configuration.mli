(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_postgresql_node_configuration

val azurerm_cosmosdb_postgresql_node_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  azurerm_cosmosdb_postgresql_node_configuration

val yojson_of_azurerm_cosmosdb_postgresql_node_configuration :
  azurerm_cosmosdb_postgresql_node_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t
