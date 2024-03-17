(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_alert_policy__alert_strategy__notification_channel_strategy

type google_monitoring_alert_policy__alert_strategy__notification_rate_limit

type google_monitoring_alert_policy__alert_strategy

type google_monitoring_alert_policy__conditions__condition_absent__aggregations

type google_monitoring_alert_policy__conditions__condition_absent__trigger

type google_monitoring_alert_policy__conditions__condition_absent
type google_monitoring_alert_policy__conditions__condition_matched_log

type google_monitoring_alert_policy__conditions__condition_monitoring_query_language__trigger

type google_monitoring_alert_policy__conditions__condition_monitoring_query_language

type google_monitoring_alert_policy__conditions__condition_prometheus_query_language

type google_monitoring_alert_policy__conditions__condition_threshold__aggregations

type google_monitoring_alert_policy__conditions__condition_threshold__denominator_aggregations

type google_monitoring_alert_policy__conditions__condition_threshold__forecast_options

type google_monitoring_alert_policy__conditions__condition_threshold__trigger

type google_monitoring_alert_policy__conditions__condition_threshold
type google_monitoring_alert_policy__conditions
type google_monitoring_alert_policy__documentation
type google_monitoring_alert_policy__timeouts

type google_monitoring_alert_policy__creation_record = {
  mutate_time : string;  (** mutate_time *)
  mutated_by : string;  (** mutated_by *)
}

type google_monitoring_alert_policy

val google_monitoring_alert_policy :
  ?enabled:bool ->
  ?id:string ->
  ?notification_channels:string list ->
  ?project:string ->
  ?severity:string ->
  ?user_labels:(string * string) list ->
  ?timeouts:google_monitoring_alert_policy__timeouts ->
  combiner:string ->
  display_name:string ->
  alert_strategy:google_monitoring_alert_policy__alert_strategy list ->
  conditions:google_monitoring_alert_policy__conditions list ->
  documentation:google_monitoring_alert_policy__documentation list ->
  string ->
  unit
