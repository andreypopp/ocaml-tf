(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_datadog_monitor_sso_configuration__timeouts
type azurerm_datadog_monitor_sso_configuration

val azurerm_datadog_monitor_sso_configuration :
  ?id:string ->
  ?name:string ->
  ?timeouts:azurerm_datadog_monitor_sso_configuration__timeouts ->
  datadog_monitor_id:string ->
  enterprise_application_id:string ->
  single_sign_on_enabled:string ->
  string ->
  unit
