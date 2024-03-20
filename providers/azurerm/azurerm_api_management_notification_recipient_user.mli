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

type azurerm_api_management_notification_recipient_user

val azurerm_api_management_notification_recipient_user :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  notification_type:string prop ->
  user_id:string prop ->
  unit ->
  azurerm_api_management_notification_recipient_user

val yojson_of_azurerm_api_management_notification_recipient_user :
  azurerm_api_management_notification_recipient_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_id : string prop;
  id : string prop;
  notification_type : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  notification_type:string prop ->
  user_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  notification_type:string prop ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
