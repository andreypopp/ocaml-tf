(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_elasticpool__timeouts
type azurerm_sql_elasticpool

val azurerm_sql_elasticpool :
  ?db_dtu_max:float prop ->
  ?db_dtu_min:float prop ->
  ?id:string prop ->
  ?pool_size:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_sql_elasticpool__timeouts ->
  dtu:float prop ->
  edition:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  unit
