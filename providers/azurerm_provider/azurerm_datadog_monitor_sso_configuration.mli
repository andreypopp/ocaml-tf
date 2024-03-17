(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_datadog_monitor_sso_configuration__timeouts
type azurerm_datadog_monitor_sso_configuration

val azurerm_datadog_monitor_sso_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:azurerm_datadog_monitor_sso_configuration__timeouts ->
  datadog_monitor_id:string prop ->
  enterprise_application_id:string prop ->
  single_sign_on_enabled:string prop ->
  string ->
  unit
