(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_monitor_data_collection_endpoint

val azurerm_monitor_data_collection_endpoint :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_monitor_data_collection_endpoint

val yojson_of_azurerm_monitor_data_collection_endpoint :
  azurerm_monitor_data_collection_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  configuration_access_endpoint : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  logs_ingestion_endpoint : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
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
