(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_slo__basic_sli__availability
type google_monitoring_slo__basic_sli__latency
type google_monitoring_slo__basic_sli
type google_monitoring_slo__request_based_sli__distribution_cut__range
type google_monitoring_slo__request_based_sli__distribution_cut
type google_monitoring_slo__request_based_sli__good_total_ratio
type google_monitoring_slo__request_based_sli
type google_monitoring_slo__timeouts

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__distribution_cut

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold

type google_monitoring_slo__windows_based_sli__metric_mean_in_range__range

type google_monitoring_slo__windows_based_sli__metric_mean_in_range

type google_monitoring_slo__windows_based_sli__metric_sum_in_range__range

type google_monitoring_slo__windows_based_sli__metric_sum_in_range
type google_monitoring_slo__windows_based_sli
type google_monitoring_slo

type t = private {
  calendar_period : string prop;
  display_name : string prop;
  goal : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  rolling_period_days : float prop;
  service : string prop;
  slo_id : string prop;
  user_labels : (string * string) list prop;
}

val google_monitoring_slo :
  ?calendar_period:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?rolling_period_days:float prop ->
  ?slo_id:string prop ->
  ?user_labels:(string * string prop) list ->
  ?timeouts:google_monitoring_slo__timeouts ->
  goal:float prop ->
  service:string prop ->
  basic_sli:google_monitoring_slo__basic_sli list ->
  request_based_sli:google_monitoring_slo__request_based_sli list ->
  windows_based_sli:google_monitoring_slo__windows_based_sli list ->
  string ->
  t
