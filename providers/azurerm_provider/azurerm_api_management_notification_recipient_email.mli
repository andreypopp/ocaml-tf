(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_notification_recipient_email__timeouts
type azurerm_api_management_notification_recipient_email

type t = private {
  api_management_id : string prop;
  email : string prop;
  id : string prop;
  notification_type : string prop;
}

val azurerm_api_management_notification_recipient_email :
  ?id:string prop ->
  ?timeouts:
    azurerm_api_management_notification_recipient_email__timeouts ->
  api_management_id:string prop ->
  email:string prop ->
  notification_type:string prop ->
  string ->
  t
