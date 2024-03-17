(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_fallback_route__timeouts
type azurerm_iothub_fallback_route

val azurerm_iothub_fallback_route :
  ?condition:string ->
  ?source:string ->
  ?timeouts:azurerm_iothub_fallback_route__timeouts ->
  enabled:bool ->
  endpoint_names:string list ->
  iothub_name:string ->
  resource_group_name:string ->
  string ->
  unit
