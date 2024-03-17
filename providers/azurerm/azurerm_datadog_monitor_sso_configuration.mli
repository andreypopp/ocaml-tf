(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_datadog_monitor_sso_configuration__timeouts
type azurerm_datadog_monitor_sso_configuration

type t = private {
  datadog_monitor_id : string prop;
  enterprise_application_id : string prop;
  id : string prop;
  login_url : string prop;
  name : string prop;
  single_sign_on_enabled : string prop;
}

val azurerm_datadog_monitor_sso_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:azurerm_datadog_monitor_sso_configuration__timeouts ->
  datadog_monitor_id:string prop ->
  enterprise_application_id:string prop ->
  single_sign_on_enabled:string prop ->
  string ->
  t
