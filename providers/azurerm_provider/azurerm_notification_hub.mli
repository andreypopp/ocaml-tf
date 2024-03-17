(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_notification_hub__apns_credential
type azurerm_notification_hub__gcm_credential
type azurerm_notification_hub__timeouts
type azurerm_notification_hub

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_notification_hub :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_notification_hub__timeouts ->
  location:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  apns_credential:azurerm_notification_hub__apns_credential list ->
  gcm_credential:azurerm_notification_hub__gcm_credential list ->
  string ->
  t
