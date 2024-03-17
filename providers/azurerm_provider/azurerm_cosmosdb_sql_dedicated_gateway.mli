(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_dedicated_gateway__timeouts
type azurerm_cosmosdb_sql_dedicated_gateway

type t = private {
  cosmosdb_account_id : string prop;
  id : string prop;
  instance_count : float prop;
  instance_size : string prop;
}

val azurerm_cosmosdb_sql_dedicated_gateway :
  ?id:string prop ->
  ?timeouts:azurerm_cosmosdb_sql_dedicated_gateway__timeouts ->
  cosmosdb_account_id:string prop ->
  instance_count:float prop ->
  instance_size:string prop ->
  string ->
  t
