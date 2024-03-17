(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_security_solution__additional_workspace
type azurerm_iot_security_solution__recommendations_enabled
type azurerm_iot_security_solution__timeouts
type azurerm_iot_security_solution

val azurerm_iot_security_solution :
  ?disabled_data_sources:string prop list ->
  ?enabled:bool prop ->
  ?events_to_export:string prop list ->
  ?id:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?log_unmasked_ips_enabled:bool prop ->
  ?query_for_resources:string prop ->
  ?query_subscription_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_iot_security_solution__timeouts ->
  display_name:string prop ->
  iothub_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  additional_workspace:
    azurerm_iot_security_solution__additional_workspace list ->
  recommendations_enabled:
    azurerm_iot_security_solution__recommendations_enabled list ->
  string ->
  unit
