(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_notification_hub__apns_credential
type azurerm_notification_hub__gcm_credential
type azurerm_notification_hub__timeouts
type azurerm_notification_hub

val azurerm_notification_hub :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_notification_hub__timeouts ->
  location:string ->
  name:string ->
  namespace_name:string ->
  resource_group_name:string ->
  apns_credential:azurerm_notification_hub__apns_credential list ->
  gcm_credential:azurerm_notification_hub__gcm_credential list ->
  string ->
  unit
