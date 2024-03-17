(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_route__timeouts
type azurerm_iothub_route

val azurerm_iothub_route :
  ?condition:string ->
  ?id:string ->
  ?timeouts:azurerm_iothub_route__timeouts ->
  enabled:bool ->
  endpoint_names:string list ->
  iothub_name:string ->
  name:string ->
  resource_group_name:string ->
  source:string ->
  string ->
  unit
