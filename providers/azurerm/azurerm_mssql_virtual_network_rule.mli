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

type azurerm_mssql_virtual_network_rule

val azurerm_mssql_virtual_network_rule :
  ?id:string prop ->
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_mssql_virtual_network_rule

val yojson_of_azurerm_mssql_virtual_network_rule :
  azurerm_mssql_virtual_network_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ignore_missing_vnet_service_endpoint : bool prop;
  name : string prop;
  server_id : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
