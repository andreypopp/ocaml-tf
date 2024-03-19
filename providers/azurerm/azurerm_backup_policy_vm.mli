(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type backup

val backup :
  ?hour_duration:float prop ->
  ?hour_interval:float prop ->
  ?weekdays:string prop list ->
  frequency:string prop ->
  time:string prop ->
  unit ->
  backup

type instant_restore_resource_group

val instant_restore_resource_group :
  ?suffix:string prop ->
  prefix:string prop ->
  unit ->
  instant_restore_resource_group

type retention_daily

val retention_daily : count:float prop -> unit -> retention_daily

type retention_monthly

val retention_monthly :
  ?days:float prop list ->
  ?include_last_days:bool prop ->
  ?weekdays:string prop list ->
  ?weeks:string prop list ->
  count:float prop ->
  unit ->
  retention_monthly

type retention_weekly

val retention_weekly :
  count:float prop ->
  weekdays:string prop list ->
  unit ->
  retention_weekly

type retention_yearly

val retention_yearly :
  ?days:float prop list ->
  ?include_last_days:bool prop ->
  ?weekdays:string prop list ->
  ?weeks:string prop list ->
  count:float prop ->
  months:string prop list ->
  unit ->
  retention_yearly

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_backup_policy_vm

val azurerm_backup_policy_vm :
  ?id:string prop ->
  ?instant_restore_retention_days:float prop ->
  ?policy_type:string prop ->
  ?timezone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  backup:backup list ->
  instant_restore_resource_group:instant_restore_resource_group list ->
  retention_daily:retention_daily list ->
  retention_monthly:retention_monthly list ->
  retention_weekly:retention_weekly list ->
  retention_yearly:retention_yearly list ->
  unit ->
  azurerm_backup_policy_vm

val yojson_of_azurerm_backup_policy_vm :
  azurerm_backup_policy_vm -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instant_restore_retention_days : float prop;
  name : string prop;
  policy_type : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timezone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?instant_restore_retention_days:float prop ->
  ?policy_type:string prop ->
  ?timezone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  backup:backup list ->
  instant_restore_resource_group:instant_restore_resource_group list ->
  retention_daily:retention_daily list ->
  retention_monthly:retention_monthly list ->
  retention_weekly:retention_weekly list ->
  retention_yearly:retention_yearly list ->
  string ->
  t
