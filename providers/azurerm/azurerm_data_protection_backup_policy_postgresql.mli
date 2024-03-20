(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type retention_rule__criteria

val retention_rule__criteria :
  ?absolute_criteria:string prop ->
  ?days_of_week:string prop list ->
  ?months_of_year:string prop list ->
  ?scheduled_backup_times:string prop list ->
  ?weeks_of_month:string prop list ->
  unit ->
  retention_rule__criteria

type retention_rule

val retention_rule :
  duration:string prop ->
  name:string prop ->
  priority:float prop ->
  criteria:retention_rule__criteria list ->
  unit ->
  retention_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_data_protection_backup_policy_postgresql

val azurerm_data_protection_backup_policy_postgresql :
  ?id:string prop ->
  ?time_zone:string prop ->
  ?timeouts:timeouts ->
  backup_repeating_time_intervals:string prop list ->
  default_retention_duration:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  vault_name:string prop ->
  retention_rule:retention_rule list ->
  unit ->
  azurerm_data_protection_backup_policy_postgresql

val yojson_of_azurerm_data_protection_backup_policy_postgresql :
  azurerm_data_protection_backup_policy_postgresql -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_repeating_time_intervals : string list prop;
  default_retention_duration : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  time_zone : string prop;
  vault_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?time_zone:string prop ->
  ?timeouts:timeouts ->
  backup_repeating_time_intervals:string prop list ->
  default_retention_duration:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  vault_name:string prop ->
  retention_rule:retention_rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?time_zone:string prop ->
  ?timeouts:timeouts ->
  backup_repeating_time_intervals:string prop list ->
  default_retention_duration:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  vault_name:string prop ->
  retention_rule:retention_rule list ->
  string ->
  t Tf_core.resource
