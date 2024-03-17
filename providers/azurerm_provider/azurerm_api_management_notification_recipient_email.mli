(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_notification_recipient_email__timeouts
type azurerm_api_management_notification_recipient_email

val azurerm_api_management_notification_recipient_email :
  ?timeouts:
    azurerm_api_management_notification_recipient_email__timeouts ->
  api_management_id:string ->
  email:string ->
  notification_type:string ->
  string ->
  unit
