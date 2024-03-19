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

type azurerm_sentinel_alert_rule_ms_security_incident

val azurerm_sentinel_alert_rule_ms_security_incident :
  ?alert_rule_template_guid:string prop ->
  ?description:string prop ->
  ?display_name_exclude_filter:string prop list ->
  ?display_name_filter:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  product_filter:string prop ->
  severity_filter:string prop list ->
  unit ->
  azurerm_sentinel_alert_rule_ms_security_incident

val yojson_of_azurerm_sentinel_alert_rule_ms_security_incident :
  azurerm_sentinel_alert_rule_ms_security_incident -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alert_rule_template_guid : string prop;
  description : string prop;
  display_name : string prop;
  display_name_exclude_filter : string list prop;
  display_name_filter : string list prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  product_filter : string prop;
  severity_filter : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?alert_rule_template_guid:string prop ->
  ?description:string prop ->
  ?display_name_exclude_filter:string prop list ->
  ?display_name_filter:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  product_filter:string prop ->
  severity_filter:string prop list ->
  string ->
  t
