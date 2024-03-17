(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_notification_hub_namespace__timeouts
type azurerm_notification_hub_namespace

val azurerm_notification_hub_namespace :
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_notification_hub_namespace__timeouts ->
  location:string ->
  name:string ->
  namespace_type:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
