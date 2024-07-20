(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type retention_rule__criteria

val retention_rule__criteria :
  ?absolute_criteria:string prop ->
  ?days_of_month:float prop list ->
  ?days_of_week:string prop list ->
  ?months_of_year:string prop list ->
  ?scheduled_backup_times:string prop list ->
  ?weeks_of_month:string prop list ->
  unit ->
  retention_rule__criteria

type retention_rule__life_cycle

val retention_rule__life_cycle :
  data_store_type:string prop ->
  duration:string prop ->
  unit ->
  retention_rule__life_cycle

type retention_rule

val retention_rule :
  name:string prop ->
  priority:float prop ->
  criteria:retention_rule__criteria list ->
  life_cycle:retention_rule__life_cycle list ->
  unit ->
  retention_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_data_protection_backup_policy_blob_storage

val azurerm_data_protection_backup_policy_blob_storage :
  ?backup_repeating_time_intervals:string prop list ->
  ?id:string prop ->
  ?operational_default_retention_duration:string prop ->
  ?retention_duration:string prop ->
  ?time_zone:string prop ->
  ?vault_default_retention_duration:string prop ->
  ?retention_rule:retention_rule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_id:string prop ->
  unit ->
  azurerm_data_protection_backup_policy_blob_storage

val yojson_of_azurerm_data_protection_backup_policy_blob_storage :
  azurerm_data_protection_backup_policy_blob_storage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backup_repeating_time_intervals : string list prop;
  id : string prop;
  name : string prop;
  operational_default_retention_duration : string prop;
  retention_duration : string prop;
  time_zone : string prop;
  vault_default_retention_duration : string prop;
  vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backup_repeating_time_intervals:string prop list ->
  ?id:string prop ->
  ?operational_default_retention_duration:string prop ->
  ?retention_duration:string prop ->
  ?time_zone:string prop ->
  ?vault_default_retention_duration:string prop ->
  ?retention_rule:retention_rule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_id:string prop ->
  string ->
  t

val make :
  ?backup_repeating_time_intervals:string prop list ->
  ?id:string prop ->
  ?operational_default_retention_duration:string prop ->
  ?retention_duration:string prop ->
  ?time_zone:string prop ->
  ?vault_default_retention_duration:string prop ->
  ?retention_rule:retention_rule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  vault_id:string prop ->
  string ->
  t Tf_core.resource
