(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backup__hourly

val backup__hourly :
  interval:float prop ->
  start_time:string prop ->
  window_duration:float prop ->
  unit ->
  backup__hourly

type backup

val backup :
  ?time:string prop ->
  frequency:string prop ->
  hourly:backup__hourly list ->
  unit ->
  backup

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

type azurerm_backup_policy_file_share

val azurerm_backup_policy_file_share :
  ?id:string prop ->
  ?timezone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  backup:backup list ->
  retention_daily:retention_daily list ->
  retention_monthly:retention_monthly list ->
  retention_weekly:retention_weekly list ->
  retention_yearly:retention_yearly list ->
  unit ->
  azurerm_backup_policy_file_share

val yojson_of_azurerm_backup_policy_file_share :
  azurerm_backup_policy_file_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timezone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timezone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  backup:backup list ->
  retention_daily:retention_daily list ->
  retention_monthly:retention_monthly list ->
  retention_weekly:retention_weekly list ->
  retention_yearly:retention_yearly list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timezone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  backup:backup list ->
  retention_daily:retention_daily list ->
  retention_monthly:retention_monthly list ->
  retention_weekly:retention_weekly list ->
  retention_yearly:retention_yearly list ->
  string ->
  t Tf_core.resource
