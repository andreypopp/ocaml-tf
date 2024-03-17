(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_traffic_manager_azure_endpoint__custom_header
type azurerm_traffic_manager_azure_endpoint__subnet
type azurerm_traffic_manager_azure_endpoint__timeouts
type azurerm_traffic_manager_azure_endpoint

val azurerm_traffic_manager_azure_endpoint :
  ?always_serve_enabled:bool prop ->
  ?enabled:bool prop ->
  ?geo_mappings:string prop list ->
  ?id:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:azurerm_traffic_manager_azure_endpoint__timeouts ->
  name:string prop ->
  profile_id:string prop ->
  target_resource_id:string prop ->
  custom_header:
    azurerm_traffic_manager_azure_endpoint__custom_header list ->
  subnet:azurerm_traffic_manager_azure_endpoint__subnet list ->
  string ->
  unit
