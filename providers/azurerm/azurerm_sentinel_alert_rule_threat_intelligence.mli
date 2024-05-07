(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_alert_rule_threat_intelligence

val azurerm_sentinel_alert_rule_threat_intelligence :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  alert_rule_template_guid:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_sentinel_alert_rule_threat_intelligence

val yojson_of_azurerm_sentinel_alert_rule_threat_intelligence :
  azurerm_sentinel_alert_rule_threat_intelligence -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alert_rule_template_guid : string prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  alert_rule_template_guid:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  alert_rule_template_guid:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
