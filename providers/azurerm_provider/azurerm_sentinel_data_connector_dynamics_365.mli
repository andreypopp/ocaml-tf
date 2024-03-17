(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_dynamics_365__timeouts
type azurerm_sentinel_data_connector_dynamics_365

type t = private {
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  tenant_id : string prop;
}

val azurerm_sentinel_data_connector_dynamics_365 :
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:azurerm_sentinel_data_connector_dynamics_365__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
