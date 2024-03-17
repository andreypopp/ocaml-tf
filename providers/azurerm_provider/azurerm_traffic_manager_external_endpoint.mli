(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_traffic_manager_external_endpoint__custom_header
type azurerm_traffic_manager_external_endpoint__subnet
type azurerm_traffic_manager_external_endpoint__timeouts
type azurerm_traffic_manager_external_endpoint

val azurerm_traffic_manager_external_endpoint :
  ?always_serve_enabled:bool prop ->
  ?enabled:bool prop ->
  ?endpoint_location:string prop ->
  ?geo_mappings:string prop list ->
  ?id:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:azurerm_traffic_manager_external_endpoint__timeouts ->
  name:string prop ->
  profile_id:string prop ->
  target:string prop ->
  custom_header:
    azurerm_traffic_manager_external_endpoint__custom_header list ->
  subnet:azurerm_traffic_manager_external_endpoint__subnet list ->
  string ->
  unit
