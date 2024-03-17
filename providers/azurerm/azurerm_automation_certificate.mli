(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_certificate__timeouts
type azurerm_automation_certificate

type t = private {
  automation_account_name : string prop;
  base64 : string prop;
  description : string prop;
  exportable : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
}

val azurerm_automation_certificate :
  ?description:string prop ->
  ?exportable:bool prop ->
  ?id:string prop ->
  ?timeouts:azurerm_automation_certificate__timeouts ->
  automation_account_name:string prop ->
  base64:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
