(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_function__timeouts
type azurerm_cosmosdb_sql_function

type t = private {
  body : string prop;
  container_id : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_cosmosdb_sql_function :
  ?id:string prop ->
  ?timeouts:azurerm_cosmosdb_sql_function__timeouts ->
  body:string prop ->
  container_id:string prop ->
  name:string prop ->
  string ->
  t
