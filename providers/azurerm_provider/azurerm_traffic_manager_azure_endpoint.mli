(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_traffic_manager_azure_endpoint__custom_header
type azurerm_traffic_manager_azure_endpoint__subnet
type azurerm_traffic_manager_azure_endpoint__timeouts
type azurerm_traffic_manager_azure_endpoint

val azurerm_traffic_manager_azure_endpoint :
  ?always_serve_enabled:bool ->
  ?enabled:bool ->
  ?geo_mappings:string list ->
  ?timeouts:azurerm_traffic_manager_azure_endpoint__timeouts ->
  name:string ->
  profile_id:string ->
  target_resource_id:string ->
  custom_header:
    azurerm_traffic_manager_azure_endpoint__custom_header list ->
  subnet:azurerm_traffic_manager_azure_endpoint__subnet list ->
  string ->
  unit
