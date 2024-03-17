(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_workspace__identity
type azurerm_log_analytics_workspace__timeouts
type azurerm_log_analytics_workspace

val azurerm_log_analytics_workspace :
  ?allow_resource_only_permissions:bool ->
  ?cmk_for_query_forced:bool ->
  ?daily_quota_gb:float ->
  ?data_collection_rule_id:string ->
  ?immediate_data_purge_on_30_days_enabled:bool ->
  ?internet_ingestion_enabled:bool ->
  ?internet_query_enabled:bool ->
  ?local_authentication_disabled:bool ->
  ?reservation_capacity_in_gb_per_day:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_log_analytics_workspace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_log_analytics_workspace__identity list ->
  string ->
  unit
