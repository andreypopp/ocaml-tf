(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type module_link__hash

val module_link__hash :
  algorithm:string prop ->
  value:string prop ->
  unit ->
  module_link__hash

type module_link

val module_link :
  uri:string prop ->
  hash:module_link__hash list ->
  unit ->
  module_link

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_module

val azurerm_automation_module :
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  module_link:module_link list ->
  unit ->
  azurerm_automation_module

val yojson_of_azurerm_automation_module :
  azurerm_automation_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automation_account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  module_link:module_link list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  module_link:module_link list ->
  string ->
  t Tf_core.resource
