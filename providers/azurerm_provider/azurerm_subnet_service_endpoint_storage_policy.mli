(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet_service_endpoint_storage_policy__definition
type azurerm_subnet_service_endpoint_storage_policy__timeouts
type azurerm_subnet_service_endpoint_storage_policy

val azurerm_subnet_service_endpoint_storage_policy :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_subnet_service_endpoint_storage_policy__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  definition:
    azurerm_subnet_service_endpoint_storage_policy__definition list ->
  string ->
  unit
