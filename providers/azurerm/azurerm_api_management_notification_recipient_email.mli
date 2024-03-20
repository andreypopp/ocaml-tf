(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_api_management_notification_recipient_email

val azurerm_api_management_notification_recipient_email :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  email:string prop ->
  notification_type:string prop ->
  unit ->
  azurerm_api_management_notification_recipient_email

val yojson_of_azurerm_api_management_notification_recipient_email :
  azurerm_api_management_notification_recipient_email -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_id : string prop;
  email : string prop;
  id : string prop;
  notification_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  email:string prop ->
  notification_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  email:string prop ->
  notification_type:string prop ->
  string ->
  t Tf_core.resource
