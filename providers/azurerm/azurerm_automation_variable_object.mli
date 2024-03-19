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

type azurerm_automation_variable_object

val azurerm_automation_variable_object :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?value:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_variable_object

val yojson_of_azurerm_automation_variable_object :
  azurerm_automation_variable_object -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?value:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
