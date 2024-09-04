(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition__alert_context

val condition__alert_context :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__alert_context

type condition__alert_rule_id

val condition__alert_rule_id :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__alert_rule_id

type condition__alert_rule_name

val condition__alert_rule_name :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__alert_rule_name

type condition__description

val condition__description :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__description

type condition__monitor_condition

val condition__monitor_condition :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__monitor_condition

type condition__monitor_service

val condition__monitor_service :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__monitor_service

type condition__severity

val condition__severity :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__severity

type condition__signal_type

val condition__signal_type :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__signal_type

type condition__target_resource

val condition__target_resource :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__target_resource

type condition__target_resource_group

val condition__target_resource_group :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__target_resource_group

type condition__target_resource_type

val condition__target_resource_type :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__target_resource_type

type condition

val condition :
  ?alert_context:condition__alert_context list ->
  ?alert_rule_id:condition__alert_rule_id list ->
  ?alert_rule_name:condition__alert_rule_name list ->
  ?description:condition__description list ->
  ?monitor_condition:condition__monitor_condition list ->
  ?monitor_service:condition__monitor_service list ->
  ?severity:condition__severity list ->
  ?signal_type:condition__signal_type list ->
  ?target_resource:condition__target_resource list ->
  ?target_resource_group:condition__target_resource_group list ->
  ?target_resource_type:condition__target_resource_type list ->
  unit ->
  condition

type schedule__recurrence__daily

val schedule__recurrence__daily :
  end_time:string prop ->
  start_time:string prop ->
  unit ->
  schedule__recurrence__daily

type schedule__recurrence__monthly

val schedule__recurrence__monthly :
  ?end_time:string prop ->
  ?start_time:string prop ->
  days_of_month:float prop list ->
  unit ->
  schedule__recurrence__monthly

type schedule__recurrence__weekly

val schedule__recurrence__weekly :
  ?end_time:string prop ->
  ?start_time:string prop ->
  days_of_week:string prop list ->
  unit ->
  schedule__recurrence__weekly

type schedule__recurrence

val schedule__recurrence :
  ?daily:schedule__recurrence__daily list ->
  ?monthly:schedule__recurrence__monthly list ->
  ?weekly:schedule__recurrence__weekly list ->
  unit ->
  schedule__recurrence

type schedule

val schedule :
  ?effective_from:string prop ->
  ?effective_until:string prop ->
  ?time_zone:string prop ->
  ?recurrence:schedule__recurrence list ->
  unit ->
  schedule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_alert_processing_rule_suppression

val azurerm_monitor_alert_processing_rule_suppression :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?condition:condition list ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  unit ->
  azurerm_monitor_alert_processing_rule_suppression

val yojson_of_azurerm_monitor_alert_processing_rule_suppression :
  azurerm_monitor_alert_processing_rule_suppression -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?condition:condition list ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?condition:condition list ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  string ->
  t Tf_core.resource
