(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type retention_rule__criteria

val retention_rule__criteria :
  ?absolute_criteria:string prop -> unit -> retention_rule__criteria

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

type azurerm_data_protection_backup_policy_disk

val azurerm_data_protection_backup_policy_disk :
  ?id:string prop ->
  ?time_zone:string prop ->
  ?timeouts:timeouts ->
  backup_repeating_time_intervals:string prop list ->
  default_retention_duration:string prop ->
  name:string prop ->
  vault_id:string prop ->
  retention_rule:retention_rule list ->
  unit ->
  azurerm_data_protection_backup_policy_disk

val yojson_of_azurerm_data_protection_backup_policy_disk :
  azurerm_data_protection_backup_policy_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_repeating_time_intervals : string list prop;
  default_retention_duration : string prop;
  id : string prop;
  name : string prop;
  time_zone : string prop;
  vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?time_zone:string prop ->
  ?timeouts:timeouts ->
  backup_repeating_time_intervals:string prop list ->
  default_retention_duration:string prop ->
  name:string prop ->
  vault_id:string prop ->
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
  vault_id:string prop ->
  retention_rule:retention_rule list ->
  string ->
  t Tf_core.resource
