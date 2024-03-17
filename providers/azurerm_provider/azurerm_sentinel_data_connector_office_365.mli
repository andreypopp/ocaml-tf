(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_office_365__timeouts
type azurerm_sentinel_data_connector_office_365

val azurerm_sentinel_data_connector_office_365 :
  ?exchange_enabled:bool ->
  ?id:string ->
  ?sharepoint_enabled:bool ->
  ?teams_enabled:bool ->
  ?tenant_id:string ->
  ?timeouts:azurerm_sentinel_data_connector_office_365__timeouts ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
