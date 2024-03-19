(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type source__sub_type

val source__sub_type :
  ?enabled:bool prop ->
  name:string prop ->
  severities_allowed:string prop list ->
  unit ->
  source__sub_type

type source

val source :
  ?enabled:bool prop ->
  name:string prop ->
  sub_type:source__sub_type list ->
  unit ->
  source

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_alert_rule_fusion

val azurerm_sentinel_alert_rule_fusion :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  alert_rule_template_guid:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  source:source list ->
  unit ->
  azurerm_sentinel_alert_rule_fusion

val yojson_of_azurerm_sentinel_alert_rule_fusion :
  azurerm_sentinel_alert_rule_fusion -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  source:source list ->
  string ->
  t
