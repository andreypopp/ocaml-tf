(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__action

val rule__action :
  ?action_properties:(string * string prop) list ->
  action_group_id:string prop ->
  unit ->
  rule__action

type rule__alert_resolution

val rule__alert_resolution :
  ?auto_resolved:bool prop ->
  ?time_to_resolve:string prop ->
  unit ->
  rule__alert_resolution

type rule

val rule :
  ?alert:string prop ->
  ?annotations:(string * string prop) list ->
  ?enabled:bool prop ->
  ?for_:string prop ->
  ?labels:(string * string prop) list ->
  ?record:string prop ->
  ?severity:float prop ->
  ?action:rule__action list ->
  ?alert_resolution:rule__alert_resolution list ->
  expression:string prop ->
  unit ->
  rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_alert_prometheus_rule_group

val azurerm_monitor_alert_prometheus_rule_group :
  ?cluster_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?interval:string prop ->
  ?rule_group_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  rule:rule list ->
  unit ->
  azurerm_monitor_alert_prometheus_rule_group

val yojson_of_azurerm_monitor_alert_prometheus_rule_group :
  azurerm_monitor_alert_prometheus_rule_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_name : string prop;
  description : string prop;
  id : string prop;
  interval : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  rule_group_enabled : bool prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cluster_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?interval:string prop ->
  ?rule_group_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  rule:rule list ->
  string ->
  t

val make :
  ?cluster_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?interval:string prop ->
  ?rule_group_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  rule:rule list ->
  string ->
  t Tf_core.resource
