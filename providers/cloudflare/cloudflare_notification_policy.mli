(** Provides a resource, that manages a notification policy for
Cloudflare's products. The delivery mechanisms supported are email,
webhooks, and PagerDuty.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type email_integration

val email_integration :
  ?name:string prop -> id:string prop -> unit -> email_integration

type filters

val filters :
  ?actions:string prop list ->
  ?affected_components:string prop list ->
  ?alert_trigger_preferences:string prop list ->
  ?enabled:string prop list ->
  ?environment:string prop list ->
  ?event:string prop list ->
  ?event_source:string prop list ->
  ?event_type:string prop list ->
  ?group_by:string prop list ->
  ?health_check_id:string prop list ->
  ?incident_impact:string prop list ->
  ?input_id:string prop list ->
  ?limit:string prop list ->
  ?megabits_per_second:string prop list ->
  ?new_health:string prop list ->
  ?new_status:string prop list ->
  ?packets_per_second:string prop list ->
  ?pool_id:string prop list ->
  ?product:string prop list ->
  ?project_id:string prop list ->
  ?protocol:string prop list ->
  ?requests_per_second:string prop list ->
  ?selectors:string prop list ->
  ?services:string prop list ->
  ?slo:string prop list ->
  ?status:string prop list ->
  ?target_hostname:string prop list ->
  ?target_zone_name:string prop list ->
  ?tunnel_id:string prop list ->
  ?where:string prop list ->
  ?zones:string prop list ->
  unit ->
  filters

type pagerduty_integration

val pagerduty_integration :
  ?name:string prop ->
  id:string prop ->
  unit ->
  pagerduty_integration

type webhooks_integration

val webhooks_integration :
  ?name:string prop -> id:string prop -> unit -> webhooks_integration

type cloudflare_notification_policy

val cloudflare_notification_policy :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  alert_type:string prop ->
  enabled:bool prop ->
  name:string prop ->
  email_integration:email_integration list ->
  filters:filters list ->
  pagerduty_integration:pagerduty_integration list ->
  webhooks_integration:webhooks_integration list ->
  unit ->
  cloudflare_notification_policy

val yojson_of_cloudflare_notification_policy :
  cloudflare_notification_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  alert_type : string prop;
  created : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  modified : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  alert_type:string prop ->
  enabled:bool prop ->
  name:string prop ->
  email_integration:email_integration list ->
  filters:filters list ->
  pagerduty_integration:pagerduty_integration list ->
  webhooks_integration:webhooks_integration list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  alert_type:string prop ->
  enabled:bool prop ->
  name:string prop ->
  email_integration:email_integration list ->
  filters:filters list ->
  pagerduty_integration:pagerduty_integration list ->
  webhooks_integration:webhooks_integration list ->
  string ->
  t Tf_core.resource
