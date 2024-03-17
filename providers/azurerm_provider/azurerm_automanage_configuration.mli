(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automanage_configuration__antimalware__exclusions
type azurerm_automanage_configuration__antimalware
type azurerm_automanage_configuration__azure_security_baseline

type azurerm_automanage_configuration__backup__retention_policy__daily_schedule__retention_duration

type azurerm_automanage_configuration__backup__retention_policy__daily_schedule

type azurerm_automanage_configuration__backup__retention_policy__weekly_schedule__retention_duration

type azurerm_automanage_configuration__backup__retention_policy__weekly_schedule

type azurerm_automanage_configuration__backup__retention_policy
type azurerm_automanage_configuration__backup__schedule_policy
type azurerm_automanage_configuration__backup
type azurerm_automanage_configuration__timeouts
type azurerm_automanage_configuration

val azurerm_automanage_configuration :
  ?automation_account_enabled:bool ->
  ?boot_diagnostics_enabled:bool ->
  ?defender_for_cloud_enabled:bool ->
  ?guest_configuration_enabled:bool ->
  ?id:string ->
  ?log_analytics_enabled:bool ->
  ?status_change_alert_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_automanage_configuration__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  antimalware:azurerm_automanage_configuration__antimalware list ->
  azure_security_baseline:
    azurerm_automanage_configuration__azure_security_baseline list ->
  backup:azurerm_automanage_configuration__backup list ->
  string ->
  unit
