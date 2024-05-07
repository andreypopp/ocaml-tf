(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ipfx_emission

val ipfx_emission :
  destination_types:string prop list -> unit -> ipfx_emission

type ipfx_ingestion

val ipfx_ingestion :
  source_resource_ids:string prop list -> unit -> ipfx_ingestion

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_function_collector_policy

val azurerm_network_function_collector_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  traffic_collector_id:string prop ->
  ipfx_emission:ipfx_emission list ->
  ipfx_ingestion:ipfx_ingestion list ->
  unit ->
  azurerm_network_function_collector_policy

val yojson_of_azurerm_network_function_collector_policy :
  azurerm_network_function_collector_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  traffic_collector_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  traffic_collector_id:string prop ->
  ipfx_emission:ipfx_emission list ->
  ipfx_ingestion:ipfx_ingestion list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  traffic_collector_id:string prop ->
  ipfx_emission:ipfx_emission list ->
  ipfx_ingestion:ipfx_ingestion list ->
  string ->
  t Tf_core.resource
