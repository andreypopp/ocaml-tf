(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_function_collector_policy__ipfx_emission
type azurerm_network_function_collector_policy__ipfx_ingestion
type azurerm_network_function_collector_policy__timeouts
type azurerm_network_function_collector_policy

val azurerm_network_function_collector_policy :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_function_collector_policy__timeouts ->
  location:string ->
  name:string ->
  traffic_collector_id:string ->
  ipfx_emission:
    azurerm_network_function_collector_policy__ipfx_emission list ->
  ipfx_ingestion:
    azurerm_network_function_collector_policy__ipfx_ingestion list ->
  string ->
  unit
