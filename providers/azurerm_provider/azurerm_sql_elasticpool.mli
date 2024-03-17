(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_elasticpool__timeouts
type azurerm_sql_elasticpool

val azurerm_sql_elasticpool :
  ?db_dtu_max:float ->
  ?db_dtu_min:float ->
  ?id:string ->
  ?pool_size:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_sql_elasticpool__timeouts ->
  dtu:float ->
  edition:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  string ->
  unit
