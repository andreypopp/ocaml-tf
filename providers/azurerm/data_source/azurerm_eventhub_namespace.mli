(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_eventhub_namespace

val azurerm_eventhub_namespace :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventhub_namespace

val yojson_of_azurerm_eventhub_namespace :
  azurerm_eventhub_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_inflate_enabled : bool prop;
  capacity : float prop;
  dedicated_cluster_id : string prop;
  default_primary_connection_string : string prop;
  default_primary_connection_string_alias : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_connection_string_alias : string prop;
  default_secondary_key : string prop;
  id : string prop;
  kafka_enabled : bool prop;
  location : string prop;
  maximum_throughput_units : float prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
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
