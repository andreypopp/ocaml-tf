(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type antimalware__exclusions

val antimalware__exclusions :
  ?extensions:string prop ->
  ?paths:string prop ->
  ?processes:string prop ->
  unit ->
  antimalware__exclusions

type antimalware

val antimalware :
  ?real_time_protection_enabled:bool prop ->
  ?scheduled_scan_day:float prop ->
  ?scheduled_scan_enabled:bool prop ->
  ?scheduled_scan_time_in_minutes:float prop ->
  ?scheduled_scan_type:string prop ->
  ?exclusions:antimalware__exclusions list ->
  unit ->
  antimalware

type azure_security_baseline

val azure_security_baseline :
  ?assignment_type:string prop -> unit -> azure_security_baseline

type backup__retention_policy__daily_schedule__retention_duration

val backup__retention_policy__daily_schedule__retention_duration :
  ?count:float prop ->
  ?duration_type:string prop ->
  unit ->
  backup__retention_policy__daily_schedule__retention_duration

type backup__retention_policy__daily_schedule

val backup__retention_policy__daily_schedule :
  ?retention_times:string prop list ->
  ?retention_duration:
    backup__retention_policy__daily_schedule__retention_duration list ->
  unit ->
  backup__retention_policy__daily_schedule

type backup__retention_policy__weekly_schedule__retention_duration

val backup__retention_policy__weekly_schedule__retention_duration :
  ?count:float prop ->
  ?duration_type:string prop ->
  unit ->
  backup__retention_policy__weekly_schedule__retention_duration

type backup__retention_policy__weekly_schedule

val backup__retention_policy__weekly_schedule :
  ?retention_times:string prop list ->
  ?retention_duration:
    backup__retention_policy__weekly_schedule__retention_duration
    list ->
  unit ->
  backup__retention_policy__weekly_schedule

type backup__retention_policy

val backup__retention_policy :
  ?retention_policy_type:string prop ->
  ?daily_schedule:backup__retention_policy__daily_schedule list ->
  ?weekly_schedule:backup__retention_policy__weekly_schedule list ->
  unit ->
  backup__retention_policy

type backup__schedule_policy

val backup__schedule_policy :
  ?schedule_policy_type:string prop ->
  ?schedule_run_days:string prop list ->
  ?schedule_run_frequency:string prop ->
  ?schedule_run_times:string prop list ->
  unit ->
  backup__schedule_policy

type backup

val backup :
  ?instant_rp_retention_range_in_days:float prop ->
  ?policy_name:string prop ->
  ?time_zone:string prop ->
  ?retention_policy:backup__retention_policy list ->
  ?schedule_policy:backup__schedule_policy list ->
  unit ->
  backup

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automanage_configuration

val azurerm_automanage_configuration :
  ?automation_account_enabled:bool prop ->
  ?boot_diagnostics_enabled:bool prop ->
  ?defender_for_cloud_enabled:bool prop ->
  ?guest_configuration_enabled:bool prop ->
  ?id:string prop ->
  ?log_analytics_enabled:bool prop ->
  ?status_change_alert_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?antimalware:antimalware list ->
  ?azure_security_baseline:azure_security_baseline list ->
  ?backup:backup list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automanage_configuration

val yojson_of_azurerm_automanage_configuration :
  azurerm_automanage_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_enabled : bool prop;
  boot_diagnostics_enabled : bool prop;
  defender_for_cloud_enabled : bool prop;
  guest_configuration_enabled : bool prop;
  id : string prop;
  location : string prop;
  log_analytics_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  status_change_alert_enabled : bool prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?automation_account_enabled:bool prop ->
  ?boot_diagnostics_enabled:bool prop ->
  ?defender_for_cloud_enabled:bool prop ->
  ?guest_configuration_enabled:bool prop ->
  ?id:string prop ->
  ?log_analytics_enabled:bool prop ->
  ?status_change_alert_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?antimalware:antimalware list ->
  ?azure_security_baseline:azure_security_baseline list ->
  ?backup:backup list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?automation_account_enabled:bool prop ->
  ?boot_diagnostics_enabled:bool prop ->
  ?defender_for_cloud_enabled:bool prop ->
  ?guest_configuration_enabled:bool prop ->
  ?id:string prop ->
  ?log_analytics_enabled:bool prop ->
  ?status_change_alert_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?antimalware:antimalware list ->
  ?azure_security_baseline:azure_security_baseline list ->
  ?backup:backup list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
