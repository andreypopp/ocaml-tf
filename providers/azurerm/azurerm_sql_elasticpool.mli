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

type azurerm_sql_elasticpool

val azurerm_sql_elasticpool :
  ?db_dtu_max:float prop ->
  ?db_dtu_min:float prop ->
  ?id:string prop ->
  ?pool_size:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  dtu:float prop ->
  edition:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  unit ->
  azurerm_sql_elasticpool

val yojson_of_azurerm_sql_elasticpool :
  azurerm_sql_elasticpool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_date : string prop;
  db_dtu_max : float prop;
  db_dtu_min : float prop;
  dtu : float prop;
  edition : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_size : float prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?db_dtu_max:float prop ->
  ?db_dtu_min:float prop ->
  ?id:string prop ->
  ?pool_size:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  dtu:float prop ->
  edition:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t

val make :
  ?db_dtu_max:float prop ->
  ?db_dtu_min:float prop ->
  ?id:string prop ->
  ?pool_size:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  dtu:float prop ->
  edition:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t Tf_core.resource
