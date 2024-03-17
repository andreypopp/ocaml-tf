(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_log_analytics_workspace_onboarding__timeouts
type azurerm_sentinel_log_analytics_workspace_onboarding

val azurerm_sentinel_log_analytics_workspace_onboarding :
  ?customer_managed_key_enabled:bool ->
  ?id:string ->
  ?resource_group_name:string ->
  ?workspace_id:string ->
  ?workspace_name:string ->
  ?timeouts:
    azurerm_sentinel_log_analytics_workspace_onboarding__timeouts ->
  string ->
  unit
