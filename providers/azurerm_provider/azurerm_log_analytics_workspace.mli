(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_workspace__identity
type azurerm_log_analytics_workspace__timeouts
type azurerm_log_analytics_workspace

val azurerm_log_analytics_workspace :
  ?allow_resource_only_permissions:bool prop ->
  ?cmk_for_query_forced:bool prop ->
  ?daily_quota_gb:float prop ->
  ?data_collection_rule_id:string prop ->
  ?id:string prop ->
  ?immediate_data_purge_on_30_days_enabled:bool prop ->
  ?internet_ingestion_enabled:bool prop ->
  ?internet_query_enabled:bool prop ->
  ?local_authentication_disabled:bool prop ->
  ?reservation_capacity_in_gb_per_day:float prop ->
  ?retention_in_days:float prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_log_analytics_workspace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_log_analytics_workspace__identity list ->
  string ->
  unit
