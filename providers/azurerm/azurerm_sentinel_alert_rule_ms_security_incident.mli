(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_ms_security_incident__timeouts
type azurerm_sentinel_alert_rule_ms_security_incident

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

val azurerm_sentinel_alert_rule_ms_security_incident :
  ?alert_rule_template_guid:string prop ->
  ?description:string prop ->
  ?display_name_exclude_filter:string prop list ->
  ?display_name_filter:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_sentinel_alert_rule_ms_security_incident__timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  product_filter:string prop ->
  severity_filter:string prop list ->
  string ->
  t
