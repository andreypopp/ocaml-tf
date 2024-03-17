(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_notification_recipient_user__timeouts
type azurerm_api_management_notification_recipient_user

type t = private {
  api_management_id : string prop;
  id : string prop;
  notification_type : string prop;
  user_id : string prop;
}

val azurerm_api_management_notification_recipient_user :
  ?id:string prop ->
  ?timeouts:
    azurerm_api_management_notification_recipient_user__timeouts ->
  api_management_id:string prop ->
  notification_type:string prop ->
  user_id:string prop ->
  string ->
  t
