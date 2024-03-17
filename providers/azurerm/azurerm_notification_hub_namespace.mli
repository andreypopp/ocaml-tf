(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_notification_hub_namespace__timeouts
type azurerm_notification_hub_namespace

type t = private {
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_type : string prop;
  resource_group_name : string prop;
  servicebus_endpoint : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_notification_hub_namespace :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_notification_hub_namespace__timeouts ->
  location:string prop ->
  name:string prop ->
  namespace_type:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
