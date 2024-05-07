(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_sql_managed_database

val azurerm_sql_managed_database :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  sql_managed_instance_id:string prop ->
  unit ->
  azurerm_sql_managed_database

val yojson_of_azurerm_sql_managed_database :
  azurerm_sql_managed_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  sql_managed_instance_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  sql_managed_instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  sql_managed_instance_id:string prop ->
  string ->
  t Tf_core.resource
