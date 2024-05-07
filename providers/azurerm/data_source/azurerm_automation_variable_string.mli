(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_automation_variable_string

val azurerm_automation_variable_string :
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_variable_string

val yojson_of_azurerm_automation_variable_string :
  azurerm_automation_variable_string -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_name : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
