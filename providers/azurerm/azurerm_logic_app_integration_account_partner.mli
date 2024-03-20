(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type business_identity

val business_identity :
  qualifier:string prop ->
  value:string prop ->
  unit ->
  business_identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_integration_account_partner

val azurerm_logic_app_integration_account_partner :
  ?id:string prop ->
  ?metadata:string prop ->
  ?timeouts:timeouts ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  business_identity:business_identity list ->
  unit ->
  azurerm_logic_app_integration_account_partner

val yojson_of_azurerm_logic_app_integration_account_partner :
  azurerm_logic_app_integration_account_partner -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?timeouts:timeouts ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  business_identity:business_identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:string prop ->
  ?timeouts:timeouts ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  business_identity:business_identity list ->
  string ->
  t Tf_core.resource
