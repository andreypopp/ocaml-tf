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

type azurerm_postgresql_firewall_rule

val azurerm_postgresql_firewall_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  end_ip_address:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  start_ip_address:string prop ->
  unit ->
  azurerm_postgresql_firewall_rule

val yojson_of_azurerm_postgresql_firewall_rule :
  azurerm_postgresql_firewall_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  start_ip_address : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  end_ip_address:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  start_ip_address:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  end_ip_address:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  start_ip_address:string prop ->
  string ->
  t Tf_core.resource
