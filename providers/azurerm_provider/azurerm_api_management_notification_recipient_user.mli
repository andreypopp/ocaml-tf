(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_notification_recipient_user__timeouts
type azurerm_api_management_notification_recipient_user

val azurerm_api_management_notification_recipient_user :
  ?timeouts:
    azurerm_api_management_notification_recipient_user__timeouts ->
  api_management_id:string ->
  notification_type:string ->
  user_id:string ->
  string ->
  unit
