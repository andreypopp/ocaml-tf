(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_office_365_project__timeouts
type azurerm_sentinel_data_connector_office_365_project

type t = private {
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  tenant_id : string prop;
}

val azurerm_sentinel_data_connector_office_365_project :
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:
    azurerm_sentinel_data_connector_office_365_project__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
