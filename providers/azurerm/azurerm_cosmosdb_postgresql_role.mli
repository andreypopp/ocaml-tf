(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_role__timeouts
type azurerm_cosmosdb_postgresql_role

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
}

val azurerm_cosmosdb_postgresql_role :
  ?id:string prop ->
  ?timeouts:azurerm_cosmosdb_postgresql_role__timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  password:string prop ->
  string ->
  t
