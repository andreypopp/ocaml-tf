(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_servicebus_namespace

val azurerm_servicebus_namespace :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_servicebus_namespace

val yojson_of_azurerm_servicebus_namespace :
  azurerm_servicebus_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  capacity : float prop;
  default_primary_connection_string : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_key : string prop;
  endpoint : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  premium_messaging_partitions : float prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
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
