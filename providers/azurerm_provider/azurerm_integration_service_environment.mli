(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_integration_service_environment__timeouts
type azurerm_integration_service_environment

val azurerm_integration_service_environment :
  ?id:string ->
  ?sku_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_integration_service_environment__timeouts ->
  access_endpoint_type:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  virtual_network_subnet_ids:string list ->
  string ->
  unit
