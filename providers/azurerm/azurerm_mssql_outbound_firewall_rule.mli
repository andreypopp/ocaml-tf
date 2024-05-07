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

type azurerm_mssql_outbound_firewall_rule

val azurerm_mssql_outbound_firewall_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  unit ->
  azurerm_mssql_outbound_firewall_rule

val yojson_of_azurerm_mssql_outbound_firewall_rule :
  azurerm_mssql_outbound_firewall_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  server_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
