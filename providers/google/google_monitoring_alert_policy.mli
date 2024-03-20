(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type creation_record = {
  mutate_time : string prop;  (** mutate_time *)
  mutated_by : string prop;  (** mutated_by *)
}

type alert_strategy__notification_channel_strategy

val alert_strategy__notification_channel_strategy :
  ?notification_channel_names:string prop list ->
  ?renotify_interval:string prop ->
  unit ->
  alert_strategy__notification_channel_strategy

type alert_strategy__notification_rate_limit

val alert_strategy__notification_rate_limit :
  ?period:string prop ->
  unit ->
  alert_strategy__notification_rate_limit

type alert_strategy

val alert_strategy :
  ?auto_close:string prop ->
  notification_channel_strategy:
    alert_strategy__notification_channel_strategy list ->
  notification_rate_limit:
    alert_strategy__notification_rate_limit list ->
  unit ->
  alert_strategy

type conditions__condition_absent__aggregations

val conditions__condition_absent__aggregations :
  ?alignment_period:string prop ->
  ?cross_series_reducer:string prop ->
  ?group_by_fields:string prop list ->
  ?per_series_aligner:string prop ->
  unit ->
  conditions__condition_absent__aggregations

type conditions__condition_absent__trigger

val conditions__condition_absent__trigger :
  ?count:float prop ->
  ?percent:float prop ->
  unit ->
  conditions__condition_absent__trigger

type conditions__condition_absent

val conditions__condition_absent :
  ?filter:string prop ->
  duration:string prop ->
  aggregations:conditions__condition_absent__aggregations list ->
  trigger:conditions__condition_absent__trigger list ->
  unit ->
  conditions__condition_absent

type conditions__condition_matched_log

val conditions__condition_matched_log :
  ?label_extractors:(string * string prop) list ->
  filter:string prop ->
  unit ->
  conditions__condition_matched_log

type conditions__condition_monitoring_query_language__trigger

val conditions__condition_monitoring_query_language__trigger :
  ?count:float prop ->
  ?percent:float prop ->
  unit ->
  conditions__condition_monitoring_query_language__trigger

type conditions__condition_monitoring_query_language

val conditions__condition_monitoring_query_language :
  ?evaluation_missing_data:string prop ->
  duration:string prop ->
  query:string prop ->
  trigger:
    conditions__condition_monitoring_query_language__trigger list ->
  unit ->
  conditions__condition_monitoring_query_language

type conditions__condition_prometheus_query_language

val conditions__condition_prometheus_query_language :
  ?alert_rule:string prop ->
  ?duration:string prop ->
  ?evaluation_interval:string prop ->
  ?labels:(string * string prop) list ->
  ?rule_group:string prop ->
  query:string prop ->
  unit ->
  conditions__condition_prometheus_query_language

type conditions__condition_threshold__aggregations

val conditions__condition_threshold__aggregations :
  ?alignment_period:string prop ->
  ?cross_series_reducer:string prop ->
  ?group_by_fields:string prop list ->
  ?per_series_aligner:string prop ->
  unit ->
  conditions__condition_threshold__aggregations

type conditions__condition_threshold__denominator_aggregations

val conditions__condition_threshold__denominator_aggregations :
  ?alignment_period:string prop ->
  ?cross_series_reducer:string prop ->
  ?group_by_fields:string prop list ->
  ?per_series_aligner:string prop ->
  unit ->
  conditions__condition_threshold__denominator_aggregations

type conditions__condition_threshold__forecast_options

val conditions__condition_threshold__forecast_options :
  forecast_horizon:string prop ->
  unit ->
  conditions__condition_threshold__forecast_options

type conditions__condition_threshold__trigger

val conditions__condition_threshold__trigger :
  ?count:float prop ->
  ?percent:float prop ->
  unit ->
  conditions__condition_threshold__trigger

type conditions__condition_threshold

val conditions__condition_threshold :
  ?denominator_filter:string prop ->
  ?evaluation_missing_data:string prop ->
  ?filter:string prop ->
  ?threshold_value:float prop ->
  comparison:string prop ->
  duration:string prop ->
  aggregations:conditions__condition_threshold__aggregations list ->
  denominator_aggregations:
    conditions__condition_threshold__denominator_aggregations list ->
  forecast_options:
    conditions__condition_threshold__forecast_options list ->
  trigger:conditions__condition_threshold__trigger list ->
  unit ->
  conditions__condition_threshold

type conditions

val conditions :
  display_name:string prop ->
  condition_absent:conditions__condition_absent list ->
  condition_matched_log:conditions__condition_matched_log list ->
  condition_monitoring_query_language:
    conditions__condition_monitoring_query_language list ->
  condition_prometheus_query_language:
    conditions__condition_prometheus_query_language list ->
  condition_threshold:conditions__condition_threshold list ->
  unit ->
  conditions

type documentation

val documentation :
  ?content:string prop ->
  ?mime_type:string prop ->
  ?subject:string prop ->
  unit ->
  documentation

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_monitoring_alert_policy

val google_monitoring_alert_policy :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?notification_channels:string prop list ->
  ?project:string prop ->
  ?severity:string prop ->
  ?user_labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  combiner:string prop ->
  display_name:string prop ->
  alert_strategy:alert_strategy list ->
  conditions:conditions list ->
  documentation:documentation list ->
  unit ->
  google_monitoring_alert_policy

val yojson_of_google_monitoring_alert_policy :
  google_monitoring_alert_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  combiner : string prop;
  creation_record : creation_record list prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  notification_channels : string list prop;
  project : string prop;
  severity : string prop;
  user_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?notification_channels:string prop list ->
  ?project:string prop ->
  ?severity:string prop ->
  ?user_labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  combiner:string prop ->
  display_name:string prop ->
  alert_strategy:alert_strategy list ->
  conditions:conditions list ->
  documentation:documentation list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?notification_channels:string prop list ->
  ?project:string prop ->
  ?severity:string prop ->
  ?user_labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  combiner:string prop ->
  display_name:string prop ->
  alert_strategy:alert_strategy list ->
  conditions:conditions list ->
  documentation:documentation list ->
  string ->
  t Tf_core.resource
