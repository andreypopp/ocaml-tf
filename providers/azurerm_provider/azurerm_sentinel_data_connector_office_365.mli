(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_office_365__timeouts
type azurerm_sentinel_data_connector_office_365

type t = private {
  exchange_enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  sharepoint_enabled : bool prop;
  teams_enabled : bool prop;
  tenant_id : string prop;
}

val azurerm_sentinel_data_connector_office_365 :
  ?exchange_enabled:bool prop ->
  ?id:string prop ->
  ?sharepoint_enabled:bool prop ->
  ?teams_enabled:bool prop ->
  ?tenant_id:string prop ->
  ?timeouts:azurerm_sentinel_data_connector_office_365__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
