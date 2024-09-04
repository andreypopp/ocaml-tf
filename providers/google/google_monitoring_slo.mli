(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type basic_sli__availability

val basic_sli__availability :
  ?enabled:bool prop -> unit -> basic_sli__availability

type basic_sli__latency

val basic_sli__latency :
  threshold:string prop -> unit -> basic_sli__latency

type basic_sli

val basic_sli :
  ?location:string prop list ->
  ?method_:string prop list ->
  ?version:string prop list ->
  ?availability:basic_sli__availability list ->
  ?latency:basic_sli__latency list ->
  unit ->
  basic_sli

type request_based_sli__distribution_cut__range

val request_based_sli__distribution_cut__range :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  request_based_sli__distribution_cut__range

type request_based_sli__distribution_cut

val request_based_sli__distribution_cut :
  distribution_filter:string prop ->
  range:request_based_sli__distribution_cut__range list ->
  unit ->
  request_based_sli__distribution_cut

type request_based_sli__good_total_ratio

val request_based_sli__good_total_ratio :
  ?bad_service_filter:string prop ->
  ?good_service_filter:string prop ->
  ?total_service_filter:string prop ->
  unit ->
  request_based_sli__good_total_ratio

type request_based_sli

val request_based_sli :
  ?distribution_cut:request_based_sli__distribution_cut list ->
  ?good_total_ratio:request_based_sli__good_total_ratio list ->
  unit ->
  request_based_sli

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability

val windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability :
  ?enabled:bool prop ->
  unit ->
  windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability

type windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency

val windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency :
  threshold:string prop ->
  unit ->
  windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency

type windows_based_sli__good_total_ratio_threshold__basic_sli_performance

val windows_based_sli__good_total_ratio_threshold__basic_sli_performance :
  ?location:string prop list ->
  ?method_:string prop list ->
  ?version:string prop list ->
  ?availability:
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability
    list ->
  ?latency:
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency
    list ->
  unit ->
  windows_based_sli__good_total_ratio_threshold__basic_sli_performance

type windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range

val windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range

type windows_based_sli__good_total_ratio_threshold__performance__distribution_cut

val windows_based_sli__good_total_ratio_threshold__performance__distribution_cut :
  distribution_filter:string prop ->
  range:
    windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range
    list ->
  unit ->
  windows_based_sli__good_total_ratio_threshold__performance__distribution_cut

type windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio

val windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio :
  ?bad_service_filter:string prop ->
  ?good_service_filter:string prop ->
  ?total_service_filter:string prop ->
  unit ->
  windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio

type windows_based_sli__good_total_ratio_threshold__performance

val windows_based_sli__good_total_ratio_threshold__performance :
  ?distribution_cut:
    windows_based_sli__good_total_ratio_threshold__performance__distribution_cut
    list ->
  ?good_total_ratio:
    windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio
    list ->
  unit ->
  windows_based_sli__good_total_ratio_threshold__performance

type windows_based_sli__good_total_ratio_threshold

val windows_based_sli__good_total_ratio_threshold :
  ?threshold:float prop ->
  ?basic_sli_performance:
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance
    list ->
  ?performance:
    windows_based_sli__good_total_ratio_threshold__performance list ->
  unit ->
  windows_based_sli__good_total_ratio_threshold

type windows_based_sli__metric_mean_in_range__range

val windows_based_sli__metric_mean_in_range__range :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  windows_based_sli__metric_mean_in_range__range

type windows_based_sli__metric_mean_in_range

val windows_based_sli__metric_mean_in_range :
  time_series:string prop ->
  range:windows_based_sli__metric_mean_in_range__range list ->
  unit ->
  windows_based_sli__metric_mean_in_range

type windows_based_sli__metric_sum_in_range__range

val windows_based_sli__metric_sum_in_range__range :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  windows_based_sli__metric_sum_in_range__range

type windows_based_sli__metric_sum_in_range

val windows_based_sli__metric_sum_in_range :
  time_series:string prop ->
  range:windows_based_sli__metric_sum_in_range__range list ->
  unit ->
  windows_based_sli__metric_sum_in_range

type windows_based_sli

val windows_based_sli :
  ?good_bad_metric_filter:string prop ->
  ?window_period:string prop ->
  ?good_total_ratio_threshold:
    windows_based_sli__good_total_ratio_threshold list ->
  ?metric_mean_in_range:windows_based_sli__metric_mean_in_range list ->
  ?metric_sum_in_range:windows_based_sli__metric_sum_in_range list ->
  unit ->
  windows_based_sli

type google_monitoring_slo

val google_monitoring_slo :
  ?calendar_period:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?rolling_period_days:float prop ->
  ?slo_id:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
  ?basic_sli:basic_sli list ->
  ?request_based_sli:request_based_sli list ->
  ?timeouts:timeouts ->
  ?windows_based_sli:windows_based_sli list ->
  goal:float prop ->
  service:string prop ->
  unit ->
  google_monitoring_slo

val yojson_of_google_monitoring_slo : google_monitoring_slo -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  calendar_period : string prop;
  display_name : string prop;
  goal : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  rolling_period_days : float prop;
  service : string prop;
  slo_id : string prop;
  user_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?calendar_period:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?rolling_period_days:float prop ->
  ?slo_id:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
  ?basic_sli:basic_sli list ->
  ?request_based_sli:request_based_sli list ->
  ?timeouts:timeouts ->
  ?windows_based_sli:windows_based_sli list ->
  goal:float prop ->
  service:string prop ->
  string ->
  t

val make :
  ?calendar_period:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?rolling_period_days:float prop ->
  ?slo_id:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
  ?basic_sli:basic_sli list ->
  ?request_based_sli:request_based_sli list ->
  ?timeouts:timeouts ->
  ?windows_based_sli:windows_based_sli list ->
  goal:float prop ->
  service:string prop ->
  string ->
  t Tf_core.resource
