(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_node_configuration__timeouts
type azurerm_cosmosdb_postgresql_node_configuration

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  value : string prop;
}

val azurerm_cosmosdb_postgresql_node_configuration :
  ?id:string prop ->
  ?timeouts:azurerm_cosmosdb_postgresql_node_configuration__timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t
