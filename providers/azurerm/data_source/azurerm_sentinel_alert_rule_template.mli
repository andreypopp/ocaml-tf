(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type nrt_template = {
  description : string prop;  (** description *)
  query : string prop;  (** query *)
  severity : string prop;  (** severity *)
  tactics : string prop list;  (** tactics *)
}

type scheduled_template = {
  description : string prop;  (** description *)
  query : string prop;  (** query *)
  query_frequency : string prop;  (** query_frequency *)
  query_period : string prop;  (** query_period *)
  severity : string prop;  (** severity *)
  tactics : string prop list;  (** tactics *)
  trigger_operator : string prop;  (** trigger_operator *)
  trigger_threshold : float prop;  (** trigger_threshold *)
}

type security_incident_template = {
  description : string prop;  (** description *)
  product_filter : string prop;  (** product_filter *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_sentinel_alert_rule_template

val azurerm_sentinel_alert_rule_template :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  unit ->
  azurerm_sentinel_alert_rule_template

val yojson_of_azurerm_sentinel_alert_rule_template :
  azurerm_sentinel_alert_rule_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  nrt_template : nrt_template list prop;
  scheduled_template : scheduled_template list prop;
  security_incident_template : security_incident_template list prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  string ->
  t Tf_core.resource
