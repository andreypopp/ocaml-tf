(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_function_azure_traffic_collector__timeouts
type azurerm_network_function_azure_traffic_collector

val azurerm_network_function_azure_traffic_collector :
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_network_function_azure_traffic_collector__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
