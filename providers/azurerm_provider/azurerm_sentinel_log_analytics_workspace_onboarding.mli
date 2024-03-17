(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_log_analytics_workspace_onboarding__timeouts
type azurerm_sentinel_log_analytics_workspace_onboarding

val azurerm_sentinel_log_analytics_workspace_onboarding :
  ?customer_managed_key_enabled:bool prop ->
  ?id:string prop ->
  ?resource_group_name:string prop ->
  ?workspace_id:string prop ->
  ?workspace_name:string prop ->
  ?timeouts:
    azurerm_sentinel_log_analytics_workspace_onboarding__timeouts ->
  string ->
  unit
