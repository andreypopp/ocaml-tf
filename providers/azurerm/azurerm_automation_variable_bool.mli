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

type azurerm_automation_variable_bool

val azurerm_automation_variable_bool :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?value:bool prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_variable_bool

val yojson_of_azurerm_automation_variable_bool :
  azurerm_automation_variable_bool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_name : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  value : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?value:bool prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?value:bool prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
