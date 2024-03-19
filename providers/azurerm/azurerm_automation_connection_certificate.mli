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

type azurerm_automation_connection_certificate

val azurerm_automation_connection_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  automation_certificate_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  unit ->
  azurerm_automation_connection_certificate

val yojson_of_azurerm_automation_connection_certificate :
  azurerm_automation_connection_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automation_account_name : string prop;
  automation_certificate_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  automation_certificate_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  string ->
  t
