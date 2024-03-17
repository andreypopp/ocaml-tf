(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_data_collection_endpoint__timeouts
type azurerm_monitor_data_collection_endpoint

val azurerm_monitor_data_collection_endpoint :
  ?description:string ->
  ?id:string ->
  ?kind:string ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_data_collection_endpoint__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
