(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_alert__action
type azurerm_monitor_scheduled_query_rules_alert__timeouts

type azurerm_monitor_scheduled_query_rules_alert__trigger__metric_trigger

type azurerm_monitor_scheduled_query_rules_alert__trigger
type azurerm_monitor_scheduled_query_rules_alert

type t = private {
  authorized_resource_ids : string list prop;
  auto_mitigation_enabled : bool prop;
  data_source_id : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  query : string prop;
  query_type : string prop;
  resource_group_name : string prop;
  severity : float prop;
  tags : (string * string) list prop;
  throttling : float prop;
  time_window : float prop;
}

val azurerm_monitor_scheduled_query_rules_alert :
  ?authorized_resource_ids:string prop list ->
  ?auto_mitigation_enabled:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?query_type:string prop ->
  ?severity:float prop ->
  ?tags:(string * string prop) list ->
  ?throttling:float prop ->
  ?timeouts:azurerm_monitor_scheduled_query_rules_alert__timeouts ->
  data_source_id:string prop ->
  frequency:float prop ->
  location:string prop ->
  name:string prop ->
  query:string prop ->
  resource_group_name:string prop ->
  time_window:float prop ->
  action:azurerm_monitor_scheduled_query_rules_alert__action list ->
  trigger:azurerm_monitor_scheduled_query_rules_alert__trigger list ->
  string ->
  t
