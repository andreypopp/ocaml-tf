(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_notification_hub_namespace

val azurerm_notification_hub_namespace :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  namespace_type:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_notification_hub_namespace

val yojson_of_azurerm_notification_hub_namespace :
  azurerm_notification_hub_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_type : string prop;
  resource_group_name : string prop;
  servicebus_endpoint : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  namespace_type:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  namespace_type:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t Tf_core.resource
