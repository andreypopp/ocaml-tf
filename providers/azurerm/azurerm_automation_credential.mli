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

type azurerm_automation_credential

val azurerm_automation_credential :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  username:string prop ->
  unit ->
  azurerm_automation_credential

val yojson_of_azurerm_automation_credential :
  azurerm_automation_credential -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automation_account_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
