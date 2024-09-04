(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_sql_database

val azurerm_sql_database :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  unit ->
  azurerm_sql_database

val yojson_of_azurerm_sql_database : azurerm_sql_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  collation : string prop;
  default_secondary_location : string prop;
  edition : string prop;
  elastic_pool_name : string prop;
  failover_group_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  read_scale : bool prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t Tf_core.resource
