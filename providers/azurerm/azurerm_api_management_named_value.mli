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

type value_from_key_vault

val value_from_key_vault :
  ?identity_client_id:string prop ->
  secret_id:string prop ->
  unit ->
  value_from_key_vault

type azurerm_api_management_named_value

val azurerm_api_management_named_value :
  ?id:string prop ->
  ?secret:bool prop ->
  ?tags:string prop list ->
  ?value:string prop ->
  ?timeouts:timeouts ->
  ?value_from_key_vault:value_from_key_vault list ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_named_value

val yojson_of_azurerm_api_management_named_value :
  azurerm_api_management_named_value -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  secret : bool prop;
  tags : string list prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?secret:bool prop ->
  ?tags:string prop list ->
  ?value:string prop ->
  ?timeouts:timeouts ->
  ?value_from_key_vault:value_from_key_vault list ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?secret:bool prop ->
  ?tags:string prop list ->
  ?value:string prop ->
  ?timeouts:timeouts ->
  ?value_from_key_vault:value_from_key_vault list ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
