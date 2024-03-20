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

type azurerm_logic_app_integration_account_schema

val azurerm_logic_app_integration_account_schema :
  ?file_name:string prop ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?timeouts:timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_logic_app_integration_account_schema

val yojson_of_azurerm_logic_app_integration_account_schema :
  azurerm_logic_app_integration_account_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  content : string prop;
  file_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?file_name:string prop ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?timeouts:timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?file_name:string prop ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?timeouts:timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
