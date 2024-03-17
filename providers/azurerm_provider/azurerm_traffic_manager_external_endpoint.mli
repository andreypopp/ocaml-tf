(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_traffic_manager_external_endpoint__custom_header
type azurerm_traffic_manager_external_endpoint__subnet
type azurerm_traffic_manager_external_endpoint__timeouts
type azurerm_traffic_manager_external_endpoint

val azurerm_traffic_manager_external_endpoint :
  ?always_serve_enabled:bool ->
  ?enabled:bool ->
  ?endpoint_location:string ->
  ?geo_mappings:string list ->
  ?id:string ->
  ?priority:float ->
  ?weight:float ->
  ?timeouts:azurerm_traffic_manager_external_endpoint__timeouts ->
  name:string ->
  profile_id:string ->
  target:string ->
  custom_header:
    azurerm_traffic_manager_external_endpoint__custom_header list ->
  subnet:azurerm_traffic_manager_external_endpoint__subnet list ->
  string ->
  unit
