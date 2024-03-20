(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku = { name : string prop  (** name *) }
type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_notification_hub_namespace

val azurerm_notification_hub_namespace :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_notification_hub_namespace

val yojson_of_azurerm_notification_hub_namespace :
  azurerm_notification_hub_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_type : string prop;
  resource_group_name : string prop;
  servicebus_endpoint : string prop;
  sku : sku list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
