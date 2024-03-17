(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_function_collector_policy__ipfx_emission
type azurerm_network_function_collector_policy__ipfx_ingestion
type azurerm_network_function_collector_policy__timeouts
type azurerm_network_function_collector_policy

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  traffic_collector_id : string prop;
}

val azurerm_network_function_collector_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_network_function_collector_policy__timeouts ->
  location:string prop ->
  name:string prop ->
  traffic_collector_id:string prop ->
  ipfx_emission:
    azurerm_network_function_collector_policy__ipfx_emission list ->
  ipfx_ingestion:
    azurerm_network_function_collector_policy__ipfx_ingestion list ->
  string ->
  t
