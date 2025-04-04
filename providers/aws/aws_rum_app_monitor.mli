(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type app_monitor_configuration

val app_monitor_configuration :
  ?allow_cookies:bool prop ->
  ?enable_xray:bool prop ->
  ?excluded_pages:string prop list ->
  ?favorite_pages:string prop list ->
  ?guest_role_arn:string prop ->
  ?identity_pool_id:string prop ->
  ?included_pages:string prop list ->
  ?session_sample_rate:float prop ->
  ?telemetries:string prop list ->
  unit ->
  app_monitor_configuration

type custom_events

val custom_events : ?status:string prop -> unit -> custom_events

type aws_rum_app_monitor

val aws_rum_app_monitor :
  ?cw_log_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?app_monitor_configuration:app_monitor_configuration list ->
  ?custom_events:custom_events list ->
  domain:string prop ->
  name:string prop ->
  unit ->
  aws_rum_app_monitor

val yojson_of_aws_rum_app_monitor : aws_rum_app_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_monitor_id : string prop;
  arn : string prop;
  cw_log_enabled : bool prop;
  cw_log_group : string prop;
  domain : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?cw_log_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?app_monitor_configuration:app_monitor_configuration list ->
  ?custom_events:custom_events list ->
  domain:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?cw_log_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?app_monitor_configuration:app_monitor_configuration list ->
  ?custom_events:custom_events list ->
  domain:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
