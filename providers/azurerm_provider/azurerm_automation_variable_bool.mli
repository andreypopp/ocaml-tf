(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_variable_bool__timeouts
type azurerm_automation_variable_bool

type t = private {
  automation_account_name : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  value : bool prop;
}

val azurerm_automation_variable_bool :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?value:bool prop ->
  ?timeouts:azurerm_automation_variable_bool__timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
