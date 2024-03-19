(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type default_retention_rule__life_cycle

val default_retention_rule__life_cycle :
  data_store_type:string prop ->
  duration:string prop ->
  unit ->
  default_retention_rule__life_cycle

type default_retention_rule

val default_retention_rule :
  life_cycle:default_retention_rule__life_cycle list ->
  unit ->
  default_retention_rule

type retention_rule__criteria

val retention_rule__criteria :
  ?absolute_criteria:string prop ->
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

type azurerm_data_protection_backup_policy_kubernetes_cluster

val azurerm_data_protection_backup_policy_kubernetes_cluster :
  ?id:string prop ->
  ?time_zone:string prop ->
  ?timeouts:timeouts ->
  backup_repeating_time_intervals:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  vault_name:string prop ->
  default_retention_rule:default_retention_rule list ->
  retention_rule:retention_rule list ->
  unit ->
  azurerm_data_protection_backup_policy_kubernetes_cluster

val yojson_of_azurerm_data_protection_backup_policy_kubernetes_cluster :
  azurerm_data_protection_backup_policy_kubernetes_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_repeating_time_intervals : string list prop;
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
  name:string prop ->
  resource_group_name:string prop ->
  vault_name:string prop ->
  default_retention_rule:default_retention_rule list ->
  retention_rule:retention_rule list ->
  string ->
  t
