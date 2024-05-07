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

type azurerm_mssql_server_dns_alias

val azurerm_mssql_server_dns_alias :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mssql_server_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mssql_server_dns_alias

val yojson_of_azurerm_mssql_server_dns_alias :
  azurerm_mssql_server_dns_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_record : string prop;
  id : string prop;
  mssql_server_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  mssql_server_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mssql_server_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
