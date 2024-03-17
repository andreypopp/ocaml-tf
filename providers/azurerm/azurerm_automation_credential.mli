(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_credential__timeouts
type azurerm_automation_credential

type t = private {
  automation_account_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  username : string prop;
}

val azurerm_automation_credential :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_automation_credential__timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  username:string prop ->
  string ->
  t
