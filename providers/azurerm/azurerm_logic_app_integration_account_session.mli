(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_integration_account_session

val azurerm_logic_app_integration_account_session :
  ?id:string prop ->
  ?timeouts:timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_logic_app_integration_account_session

val yojson_of_azurerm_logic_app_integration_account_session :
  azurerm_logic_app_integration_account_session -> json

(** RESOURCE REGISTRATION *)

type t = private {
  content : string prop;
  id : string prop;
  integration_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
