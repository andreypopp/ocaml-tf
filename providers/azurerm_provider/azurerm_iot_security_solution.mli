(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_security_solution__additional_workspace
type azurerm_iot_security_solution__recommendations_enabled
type azurerm_iot_security_solution__timeouts
type azurerm_iot_security_solution

val azurerm_iot_security_solution :
  ?disabled_data_sources:string list ->
  ?enabled:bool ->
  ?events_to_export:string list ->
  ?id:string ->
  ?log_analytics_workspace_id:string ->
  ?log_unmasked_ips_enabled:bool ->
  ?query_for_resources:string ->
  ?query_subscription_ids:string list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_iot_security_solution__timeouts ->
  display_name:string ->
  iothub_ids:string list ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  additional_workspace:
    azurerm_iot_security_solution__additional_workspace list ->
  recommendations_enabled:
    azurerm_iot_security_solution__recommendations_enabled list ->
  string ->
  unit
