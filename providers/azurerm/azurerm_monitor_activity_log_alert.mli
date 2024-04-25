(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action

val action :
  ?webhook_properties:(string * string prop) list ->
  action_group_id:string prop ->
  unit ->
  action

type criteria__resource_health

val criteria__resource_health :
  ?current:string prop list ->
  ?previous:string prop list ->
  ?reason:string prop list ->
  unit ->
  criteria__resource_health

type criteria__service_health

val criteria__service_health :
  ?events:string prop list ->
  ?locations:string prop list ->
  ?services:string prop list ->
  unit ->
  criteria__service_health

type criteria

val criteria :
  ?caller:string prop ->
  ?level:string prop ->
  ?levels:string prop list ->
  ?operation_name:string prop ->
  ?recommendation_category:string prop ->
  ?recommendation_impact:string prop ->
  ?recommendation_type:string prop ->
  ?resource_group:string prop ->
  ?resource_groups:string prop list ->
  ?resource_id:string prop ->
  ?resource_ids:string prop list ->
  ?resource_provider:string prop ->
  ?resource_providers:string prop list ->
  ?resource_type:string prop ->
  ?resource_types:string prop list ->
  ?status:string prop ->
  ?statuses:string prop list ->
  ?sub_status:string prop ->
  ?sub_statuses:string prop list ->
  ?resource_health:criteria__resource_health list ->
  ?service_health:criteria__service_health list ->
  category:string prop ->
  unit ->
  criteria

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_activity_log_alert

val azurerm_monitor_activity_log_alert :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?action:action list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  criteria:criteria list ->
  unit ->
  azurerm_monitor_activity_log_alert

val yojson_of_azurerm_monitor_activity_log_alert :
  azurerm_monitor_activity_log_alert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?action:action list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  criteria:criteria list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?action:action list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  criteria:criteria list ->
  string ->
  t Tf_core.resource
