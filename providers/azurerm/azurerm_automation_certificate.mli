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

type azurerm_automation_certificate

val azurerm_automation_certificate :
  ?description:string prop ->
  ?exportable:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  base64:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_certificate

val yojson_of_azurerm_automation_certificate :
  azurerm_automation_certificate -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?exportable:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  base64:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
