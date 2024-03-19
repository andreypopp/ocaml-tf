(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_datadog_monitor_sso_configuration

val azurerm_datadog_monitor_sso_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  datadog_monitor_id:string prop ->
  enterprise_application_id:string prop ->
  single_sign_on_enabled:string prop ->
  unit ->
  azurerm_datadog_monitor_sso_configuration

val yojson_of_azurerm_datadog_monitor_sso_configuration :
  azurerm_datadog_monitor_sso_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  datadog_monitor_id : string prop;
  enterprise_application_id : string prop;
  id : string prop;
  login_url : string prop;
  name : string prop;
  single_sign_on_enabled : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  datadog_monitor_id:string prop ->
  enterprise_application_id:string prop ->
  single_sign_on_enabled:string prop ->
  string ->
  t
