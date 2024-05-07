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

type azurerm_mariadb_virtual_network_rule

val azurerm_mariadb_virtual_network_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_mariadb_virtual_network_rule

val yojson_of_azurerm_mariadb_virtual_network_rule :
  azurerm_mariadb_virtual_network_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
