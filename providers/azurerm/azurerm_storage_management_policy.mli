(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__actions__base_blob

val rule__actions__base_blob :
  ?auto_tier_to_hot_from_cool_enabled:bool prop ->
  ?delete_after_days_since_creation_greater_than:float prop ->
  ?delete_after_days_since_last_access_time_greater_than:float prop ->
  ?delete_after_days_since_modification_greater_than:float prop ->
  ?tier_to_archive_after_days_since_creation_greater_than:float prop ->
  ?tier_to_archive_after_days_since_last_access_time_greater_than:
    float prop ->
  ?tier_to_archive_after_days_since_last_tier_change_greater_than:
    float prop ->
  ?tier_to_archive_after_days_since_modification_greater_than:
    float prop ->
  ?tier_to_cold_after_days_since_creation_greater_than:float prop ->
  ?tier_to_cold_after_days_since_last_access_time_greater_than:
    float prop ->
  ?tier_to_cold_after_days_since_modification_greater_than:float prop ->
  ?tier_to_cool_after_days_since_creation_greater_than:float prop ->
  ?tier_to_cool_after_days_since_last_access_time_greater_than:
    float prop ->
  ?tier_to_cool_after_days_since_modification_greater_than:float prop ->
  unit ->
  rule__actions__base_blob

type rule__actions__snapshot

val rule__actions__snapshot :
  ?change_tier_to_archive_after_days_since_creation:float prop ->
  ?change_tier_to_cool_after_days_since_creation:float prop ->
  ?delete_after_days_since_creation_greater_than:float prop ->
  ?tier_to_archive_after_days_since_last_tier_change_greater_than:
    float prop ->
  ?tier_to_cold_after_days_since_creation_greater_than:float prop ->
  unit ->
  rule__actions__snapshot

type rule__actions__version

val rule__actions__version :
  ?change_tier_to_archive_after_days_since_creation:float prop ->
  ?change_tier_to_cool_after_days_since_creation:float prop ->
  ?delete_after_days_since_creation:float prop ->
  ?tier_to_archive_after_days_since_last_tier_change_greater_than:
    float prop ->
  ?tier_to_cold_after_days_since_creation_greater_than:float prop ->
  unit ->
  rule__actions__version

type rule__actions

val rule__actions :
  ?base_blob:rule__actions__base_blob list ->
  ?snapshot:rule__actions__snapshot list ->
  ?version:rule__actions__version list ->
  unit ->
  rule__actions

type rule__filters__match_blob_index_tag

val rule__filters__match_blob_index_tag :
  ?operation:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  rule__filters__match_blob_index_tag

type rule__filters

val rule__filters :
  ?prefix_match:string prop list ->
  blob_types:string prop list ->
  match_blob_index_tag:rule__filters__match_blob_index_tag list ->
  unit ->
  rule__filters

type rule

val rule :
  enabled:bool prop ->
  name:string prop ->
  actions:rule__actions list ->
  filters:rule__filters list ->
  unit ->
  rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_management_policy

val azurerm_storage_management_policy :
  ?id:string prop ->
  ?rule:rule list ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  unit ->
  azurerm_storage_management_policy

val yojson_of_azurerm_storage_management_policy :
  azurerm_storage_management_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?rule:rule list ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?rule:rule list ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  string ->
  t Tf_core.resource
