(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_monitoring_slo__basic_sli__availability = {
  enabled : bool option; [@option]
      (** Whether an availability SLI is enabled or not. Must be set to true. Defaults to 'true'. *)
}
[@@deriving yojson_of]
(** Availability based SLI, dervied from count of requests made to this service that return successfully. *)

type google_monitoring_slo__basic_sli__latency = {
  threshold : string;
      (** A duration string, e.g. 10s.
Good service is defined to be the count of requests made to
this service that return in no more than threshold. *)
}
[@@deriving yojson_of]
(** Parameters for a latency threshold SLI. *)

type google_monitoring_slo__basic_sli = {
  location : string list option; [@option]
      (** An optional set of locations to which this SLI is relevant.
Telemetry from other locations will not be used to calculate
performance for this SLI. If omitted, this SLI applies to all
locations in which the Service has activity. For service types
that don't support breaking down by location, setting this
field will result in an error. *)
  method_ : string list option; [@option] [@key "method"]
      (** An optional set of RPCs to which this SLI is relevant.
Telemetry from other methods will not be used to calculate
performance for this SLI. If omitted, this SLI applies to all
the Service's methods. For service types that don't support
breaking down by method, setting this field will result in an
error. *)
  version : string list option; [@option]
      (** The set of API versions to which this SLI is relevant.
Telemetry from other API versions will not be used to
calculate performance for this SLI. If omitted,
this SLI applies to all API versions. For service types
that don't support breaking down by version, setting this
field will result in an error. *)
  availability : google_monitoring_slo__basic_sli__availability list;
  latency : google_monitoring_slo__basic_sli__latency list;
}
[@@deriving yojson_of]
(** Basic Service-Level Indicator (SLI) on a well-known service type.
Performance will be computed on the basis of pre-defined metrics.

SLIs are used to measure and calculate the quality of the Service's
performance with respect to a single aspect of service quality.

Exactly one of the following must be set:
'basic_sli', 'request_based_sli', 'windows_based_sli' *)

type google_monitoring_slo__request_based_sli__distribution_cut__range = {
  max : float option; [@option]
      (** max value for the range (inclusive). If not given,
will be set to 0 *)
  min : float option; [@option]
      (** Min value for the range (inclusive). If not given,
will be set to 0 *)
}
[@@deriving yojson_of]
(** Range of numerical values. The computed good_service
will be the count of values x in the Distribution such
that range.min <= x <= range.max. inclusive of min and
max. Open ranges can be defined by setting
just one of min or max. *)

type google_monitoring_slo__request_based_sli__distribution_cut = {
  distribution_filter : string;
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
aggregating values to quantify the good service provided.

Must have ValueType = DISTRIBUTION and
MetricKind = DELTA or MetricKind = CUMULATIVE. *)
  range :
    google_monitoring_slo__request_based_sli__distribution_cut__range
    list;
}
[@@deriving yojson_of]
(** Used when good_service is defined by a count of values aggregated in a
Distribution that fall into a good range. The total_service is the
total count of all values aggregated in the Distribution.
Defines a distribution TimeSeries filter and thresholds used for
measuring good service and total service.

Exactly one of 'distribution_cut' or 'good_total_ratio' can be set. *)

type google_monitoring_slo__request_based_sli__good_total_ratio = {
  bad_service_filter : string option; [@option]
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying bad service provided, either demanded service that
was not provided or demanded service that was of inadequate
quality.

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE.

Exactly two of 'good_service_filter','bad_service_filter','total_service_filter'
must be set (good + bad = total is assumed). *)
  good_service_filter : string option; [@option]
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying good service provided.
Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE.

Exactly two of 'good_service_filter','bad_service_filter','total_service_filter'
must be set (good + bad = total is assumed). *)
  total_service_filter : string option; [@option]
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying total demanded service.

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE.

Exactly two of 'good_service_filter','bad_service_filter','total_service_filter'
must be set (good + bad = total is assumed). *)
}
[@@deriving yojson_of]
(** A means to compute a ratio of 'good_service' to 'total_service'.
Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
Must specify exactly two of good, bad, and total service filters.
The relationship good_service + bad_service = total_service
will be assumed.

Exactly one of 'distribution_cut' or 'good_total_ratio' can be set. *)

type google_monitoring_slo__request_based_sli = {
  distribution_cut :
    google_monitoring_slo__request_based_sli__distribution_cut list;
  good_total_ratio :
    google_monitoring_slo__request_based_sli__good_total_ratio list;
}
[@@deriving yojson_of]
(** A request-based SLI defines a SLI for which atomic units of
service are counted directly.

A SLI describes a good service.
It is used to measure and calculate the quality of the Service's
performance with respect to a single aspect of service quality.
Exactly one of the following must be set:
'basic_sli', 'request_based_sli', 'windows_based_sli' *)

type google_monitoring_slo__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_slo__timeouts *)

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability = {
  enabled : bool option; [@option]
      (** Whether an availability SLI is enabled or not. Must be set to 'true. Defaults to 'true'. *)
}
[@@deriving yojson_of]
(** Availability based SLI, dervied from count of requests made to this service that return successfully. *)

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency = {
  threshold : string;
      (** A duration string, e.g. 10s.
Good service is defined to be the count of requests made to
this service that return in no more than threshold. *)
}
[@@deriving yojson_of]
(** Parameters for a latency threshold SLI. *)

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance = {
  location : string list option; [@option]
      (** An optional set of locations to which this SLI is relevant.
Telemetry from other locations will not be used to calculate
performance for this SLI. If omitted, this SLI applies to all
locations in which the Service has activity. For service types
that don't support breaking down by location, setting this
field will result in an error. *)
  method_ : string list option; [@option] [@key "method"]
      (** An optional set of RPCs to which this SLI is relevant.
Telemetry from other methods will not be used to calculate
performance for this SLI. If omitted, this SLI applies to all
the Service's methods. For service types that don't support
breaking down by method, setting this field will result in an
error. *)
  version : string list option; [@option]
      (** The set of API versions to which this SLI is relevant.
Telemetry from other API versions will not be used to
calculate performance for this SLI. If omitted,
this SLI applies to all API versions. For service types
that don't support breaking down by version, setting this
field will result in an error. *)
  availability :
    google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability
    list;
  latency :
    google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency
    list;
}
[@@deriving yojson_of]
(** Basic SLI to evaluate to judge window quality. *)

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range = {
  max : float option; [@option]
      (** max value for the range (inclusive). If not given,
will be set to 0 *)
  min : float option; [@option]
      (** Min value for the range (inclusive). If not given,
will be set to 0 *)
}
[@@deriving yojson_of]
(** Range of numerical values. The computed good_service
will be the count of values x in the Distribution such
that range.min <= x <= range.max. inclusive of min and
max. Open ranges can be defined by setting
just one of min or max. *)

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__distribution_cut = {
  distribution_filter : string;
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
aggregating values to quantify the good service provided.

Must have ValueType = DISTRIBUTION and
MetricKind = DELTA or MetricKind = CUMULATIVE. *)
  range :
    google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range
    list;
}
[@@deriving yojson_of]
(** Used when good_service is defined by a count of values aggregated in a
Distribution that fall into a good range. The total_service is the
total count of all values aggregated in the Distribution.
Defines a distribution TimeSeries filter and thresholds used for
measuring good service and total service. *)

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio = {
  bad_service_filter : string option; [@option]
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying bad service provided, either demanded service that
was not provided or demanded service that was of inadequate
quality. Exactly two of
good, bad, or total service filter must be defined (where
good + bad = total is assumed)

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE. *)
  good_service_filter : string option; [@option]
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying good service provided. Exactly two of
good, bad, or total service filter must be defined (where
good + bad = total is assumed)

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE. *)
  total_service_filter : string option; [@option]
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
quantifying total demanded service. Exactly two of
good, bad, or total service filter must be defined (where
good + bad = total is assumed)

Must have ValueType = DOUBLE or ValueType = INT64 and
must have MetricKind = DELTA or MetricKind = CUMULATIVE. *)
}
[@@deriving yojson_of]
(** A means to compute a ratio of 'good_service' to 'total_service'.
Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
Must specify exactly two of good, bad, and total service filters.
The relationship good_service + bad_service = total_service
will be assumed. *)

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance = {
  distribution_cut :
    google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__distribution_cut
    list;
  good_total_ratio :
    google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio
    list;
}
[@@deriving yojson_of]
(** Request-based SLI to evaluate to judge window quality. *)

type google_monitoring_slo__windows_based_sli__good_total_ratio_threshold = {
  threshold : float option; [@option]
      (** If window performance >= threshold, the window is counted
as good. *)
  basic_sli_performance :
    google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__basic_sli_performance
    list;
  performance :
    google_monitoring_slo__windows_based_sli__good_total_ratio_threshold__performance
    list;
}
[@@deriving yojson_of]
(** Criterion that describes a window as good if its performance is
high enough. One of 'good_bad_metric_filter',
'good_total_ratio_threshold', 'metric_mean_in_range',
'metric_sum_in_range' must be set for 'windows_based_sli'. *)

type google_monitoring_slo__windows_based_sli__metric_mean_in_range__range = {
  max : float option; [@option]
      (** max value for the range (inclusive). If not given,
will be set to infinity, defining an open range
>= range.min *)
  min : float option; [@option]
      (** Min value for the range (inclusive). If not given,
will be set to -infinity, defining an open range
< range.max *)
}
[@@deriving yojson_of]
(** Range of numerical values. The computed good_service
will be the count of values x in the Distribution such
that range.min <= x <= range.max. inclusive of min and
max. Open ranges can be defined by setting
just one of min or max. Mean value 'X' of 'time_series'
values should satisfy 'range.min <= X <= range.max' for a
good service. *)

type google_monitoring_slo__windows_based_sli__metric_mean_in_range = {
  time_series : string;
      (** A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
specifying the TimeSeries to use for evaluating window
The provided TimeSeries must have ValueType = INT64 or
ValueType = DOUBLE and MetricKind = GAUGE. Mean value 'X'
should satisfy 'range.min <= X <= range.max'
under good service. *)
  range :
    google_monitoring_slo__windows_based_sli__metric_mean_in_range__range
    list;
}
[@@deriving yojson_of]
(** Criterion that describes a window as good if the metric's value
is in a good range, *averaged* across returned streams.
One of 'good_bad_metric_filter',

'good_total_ratio_threshold', 'metric_mean_in_range',
'metric_sum_in_range' must be set for 'windows_based_sli'.
Average value X of 'time_series' should satisfy
'range.min <= X <= range.max' for a good window. *)

type google_monitoring_slo__windows_based_sli__metric_sum_in_range__range = {
  max : float option; [@option]
      (** max value for the range (inclusive). If not given,
will be set to infinity, defining an open range
>= range.min *)
  min : float option; [@option]
      (** Min value for the range (inclusive). If not given,
will be set to -infinity, defining an open range
< range.max *)
}
[@@deriving yojson_of]
(** Range of numerical values. The computed good_service
will be the count of values x in the Distribution such
that range.min <= x <= range.max. inclusive of min and
max. Open ranges can be defined by setting
just one of min or max. Summed value 'X' should satisfy
'range.min <= X <= range.max' for a good window. *)

type google_monitoring_slo__windows_based_sli__metric_sum_in_range = {
  time_series : string;
      (** A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
specifying the TimeSeries to use for evaluating window
quality. The provided TimeSeries must have
ValueType = INT64 or ValueType = DOUBLE and
MetricKind = GAUGE.

Summed value 'X' should satisfy
'range.min <= X <= range.max' for a good window. *)
  range :
    google_monitoring_slo__windows_based_sli__metric_sum_in_range__range
    list;
}
[@@deriving yojson_of]
(** Criterion that describes a window as good if the metric's value
is in a good range, *summed* across returned streams.
Summed value 'X' of 'time_series' should satisfy
'range.min <= X <= range.max' for a good window.

One of 'good_bad_metric_filter',
'good_total_ratio_threshold', 'metric_mean_in_range',
'metric_sum_in_range' must be set for 'windows_based_sli'. *)

type google_monitoring_slo__windows_based_sli = {
  good_bad_metric_filter : string option; [@option]
      (** A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
with ValueType = BOOL. The window is good if any true values
appear in the window. One of 'good_bad_metric_filter',
'good_total_ratio_threshold', 'metric_mean_in_range',
'metric_sum_in_range' must be set for 'windows_based_sli'. *)
  window_period : string option; [@option]
      (** Duration over which window quality is evaluated, given as a
duration string {X}s representing X seconds. Must be an
integer fraction of a day and at least 60s. *)
  good_total_ratio_threshold :
    google_monitoring_slo__windows_based_sli__good_total_ratio_threshold
    list;
  metric_mean_in_range :
    google_monitoring_slo__windows_based_sli__metric_mean_in_range
    list;
  metric_sum_in_range :
    google_monitoring_slo__windows_based_sli__metric_sum_in_range
    list;
}
[@@deriving yojson_of]
(** A windows-based SLI defines the criteria for time windows.
good_service is defined based off the count of these time windows
for which the provided service was of good quality.

A SLI describes a good service. It is used to measure and calculate
the quality of the Service's performance with respect to a single
aspect of service quality.

Exactly one of the following must be set:
'basic_sli', 'request_based_sli', 'windows_based_sli' *)

type google_monitoring_slo = {
  calendar_period : string option; [@option]
      (** A calendar period, semantically since the start of the current
<calendarPeriod>. Possible values: [DAY, WEEK, FORTNIGHT, MONTH] *)
  display_name : string option; [@option]
      (** Name used for UI elements listing this SLO. *)
  goal : float;
      (** The fraction of service that must be good in order for this objective
to be met. 0 < goal <= 0.999 *)
  rolling_period_days : float option; [@option]
      (** A rolling time period, semantically in the past X days.
Must be between 1 to 30 days, inclusive. *)
  service : string;
      (** ID of the service to which this SLO belongs. *)
  user_labels : (string * string) list option; [@option]
      (** This field is intended to be used for organizing and identifying the AlertPolicy
objects.The field can contain up to 64 entries. Each key and value is limited
to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
can contain only lowercase letters, numerals, underscores, and dashes. Keys
must begin with a letter. *)
  basic_sli : google_monitoring_slo__basic_sli list;
  request_based_sli : google_monitoring_slo__request_based_sli list;
  timeouts : google_monitoring_slo__timeouts option;
  windows_based_sli : google_monitoring_slo__windows_based_sli list;
}
[@@deriving yojson_of]
(** google_monitoring_slo *)

let google_monitoring_slo ?calendar_period ?display_name
    ?rolling_period_days ?user_labels ?timeouts ~goal ~service
    ~basic_sli ~request_based_sli ~windows_based_sli __resource_id =
  let __resource_type = "google_monitoring_slo" in
  let __resource =
    {
      calendar_period;
      display_name;
      goal;
      rolling_period_days;
      service;
      user_labels;
      basic_sli;
      request_based_sli;
      timeouts;
      windows_based_sli;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_slo __resource);
  ()
