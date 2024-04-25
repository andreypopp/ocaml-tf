(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type protection_policy__backup

val protection_policy__backup :
  ?frequency:string prop ->
  ?frequency_in_minutes:float prop ->
  ?time:string prop ->
  ?weekdays:string prop list ->
  unit ->
  protection_policy__backup

type protection_policy__retention_daily

val protection_policy__retention_daily :
  count:float prop -> unit -> protection_policy__retention_daily

type protection_policy__retention_monthly

val protection_policy__retention_monthly :
  ?monthdays:float prop list ->
  ?weekdays:string prop list ->
  ?weeks:string prop list ->
  count:float prop ->
  format_type:string prop ->
  unit ->
  protection_policy__retention_monthly

type protection_policy__retention_weekly

val protection_policy__retention_weekly :
  count:float prop ->
  weekdays:string prop list ->
  unit ->
  protection_policy__retention_weekly

type protection_policy__retention_yearly

val protection_policy__retention_yearly :
  ?monthdays:float prop list ->
  ?weekdays:string prop list ->
  ?weeks:string prop list ->
  count:float prop ->
  format_type:string prop ->
  months:string prop list ->
  unit ->
  protection_policy__retention_yearly

type protection_policy__simple_retention

val protection_policy__simple_retention :
  count:float prop -> unit -> protection_policy__simple_retention

type protection_policy

val protection_policy :
  ?retention_daily:protection_policy__retention_daily list ->
  ?retention_monthly:protection_policy__retention_monthly list ->
  ?retention_weekly:protection_policy__retention_weekly list ->
  ?retention_yearly:protection_policy__retention_yearly list ->
  ?simple_retention:protection_policy__simple_retention list ->
  policy_type:string prop ->
  backup:protection_policy__backup list ->
  unit ->
  protection_policy

type settings

val settings :
  ?compression_enabled:bool prop ->
  time_zone:string prop ->
  unit ->
  settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_backup_policy_vm_workload

val azurerm_backup_policy_vm_workload :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  workload_type:string prop ->
  protection_policy:protection_policy list ->
  settings:settings list ->
  unit ->
  azurerm_backup_policy_vm_workload

val yojson_of_azurerm_backup_policy_vm_workload :
  azurerm_backup_policy_vm_workload -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  workload_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  workload_type:string prop ->
  protection_policy:protection_policy list ->
  settings:settings list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  workload_type:string prop ->
  protection_policy:protection_policy list ->
  settings:settings list ->
  string ->
  t Tf_core.resource
