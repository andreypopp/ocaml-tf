(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_log_analytics_workspace

val yojson_of_azurerm_log_analytics_workspace :
  azurerm_log_analytics_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_resource_only_permissions : bool prop;
  cmk_for_query_forced : bool prop;
  daily_quota_gb : float prop;
  data_collection_rule_id : string prop;
  id : string prop;
  immediate_data_purge_on_30_days_enabled : bool prop;
  internet_ingestion_enabled : bool prop;
  internet_query_enabled : bool prop;
  local_authentication_disabled : bool prop;
  location : string prop;
  name : string prop;
  primary_shared_key : string prop;
  reservation_capacity_in_gb_per_day : float prop;
  resource_group_name : string prop;
  retention_in_days : float prop;
  secondary_shared_key : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t
