(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_alert_policy__alert_strategy__notification_channel_strategy = {
  notification_channel_names : string prop list option; [@option]
      (** The notification channels that these settings apply to. Each of these
correspond to the name field in one of the NotificationChannel objects
referenced in the notification_channels field of this AlertPolicy. The format is
'projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]' *)
  renotify_interval : string prop option; [@option]
      (** The frequency at which to send reminder notifications for open incidents. *)
}
[@@deriving yojson_of]
(** Control over how the notification channels in 'notification_channels'
are notified when this alert fires, on a per-channel basis. *)

type google_monitoring_alert_policy__alert_strategy__notification_rate_limit = {
  period : string prop option; [@option]
      (** Not more than one notification per period. *)
}
[@@deriving yojson_of]
(** Required for alert policies with a LogMatch condition.
This limit is not implemented for alert policies that are not log-based. *)

type google_monitoring_alert_policy__alert_strategy = {
  auto_close : string prop option; [@option]
      (** If an alert policy that was active has no data for this long, any open incidents will close. *)
  notification_channel_strategy :
    google_monitoring_alert_policy__alert_strategy__notification_channel_strategy
    list;
  notification_rate_limit :
    google_monitoring_alert_policy__alert_strategy__notification_rate_limit
    list;
}
[@@deriving yojson_of]
(** Control over how this alert policy's notification channels are notified. *)

type google_monitoring_alert_policy__conditions__condition_absent__aggregations = {
  alignment_period : string prop option; [@option]
      (** The alignment period for per-time
series alignment. If present,
alignmentPeriod must be at least
60 seconds. After per-time series
alignment, each time series will
contain data points only on the
period boundaries. If
perSeriesAligner is not specified
or equals ALIGN_NONE, then this
field is ignored. If
perSeriesAligner is specified and
does not equal ALIGN_NONE, then
this field must be defined;
otherwise an error is returned. *)
  cross_series_reducer : string prop option; [@option]
      (** The approach to be used to combine
time series. Not all reducer
functions may be applied to all
time series, depending on the
metric type and the value type of
the original time series.
Reduction may change the metric
type of value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [REDUCE_NONE, REDUCE_MEAN, REDUCE_MIN, REDUCE_MAX, REDUCE_SUM, REDUCE_STDDEV, REDUCE_COUNT, REDUCE_COUNT_TRUE, REDUCE_COUNT_FALSE, REDUCE_FRACTION_TRUE, REDUCE_PERCENTILE_99, REDUCE_PERCENTILE_95, REDUCE_PERCENTILE_50, REDUCE_PERCENTILE_05] *)
  group_by_fields : string prop list option; [@option]
      (** The set of fields to preserve when
crossSeriesReducer is specified.
The groupByFields determine how
the time series are partitioned
into subsets prior to applying the
aggregation function. Each subset
contains time series that have the
same value for each of the
grouping fields. Each individual
time series is a member of exactly
one subset. The crossSeriesReducer
is applied to each subset of time
series. It is not possible to
reduce across different resource
types, so this field implicitly
contains resource.type. Fields not
specified in groupByFields are
aggregated away. If groupByFields
is not specified and all the time
series have the same resource
type, then the time series are
aggregated into a single output
time series. If crossSeriesReducer
is not defined, this field is
ignored. *)
  per_series_aligner : string prop option; [@option]
      (** The approach to be used to align
individual time series. Not all
alignment functions may be applied
to all time series, depending on
the metric type and value type of
the original time series.
Alignment may change the metric
type or the value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [ALIGN_NONE, ALIGN_DELTA, ALIGN_RATE, ALIGN_INTERPOLATE, ALIGN_NEXT_OLDER, ALIGN_MIN, ALIGN_MAX, ALIGN_MEAN, ALIGN_COUNT, ALIGN_SUM, ALIGN_STDDEV, ALIGN_COUNT_TRUE, ALIGN_COUNT_FALSE, ALIGN_FRACTION_TRUE, ALIGN_PERCENTILE_99, ALIGN_PERCENTILE_95, ALIGN_PERCENTILE_50, ALIGN_PERCENTILE_05, ALIGN_PERCENT_CHANGE] *)
}
[@@deriving yojson_of]
(** Specifies the alignment of data points in
individual time series as well as how to
combine the retrieved time series together
(such as when aggregating multiple streams
on each resource to a single stream for each
resource or when aggregating streams across
all members of a group of resources).
Multiple aggregations are applied in the
order specified. *)

type google_monitoring_alert_policy__conditions__condition_absent__trigger = {
  count : float prop option; [@option]
      (** The absolute number of time series
that must fail the predicate for the
condition to be triggered. *)
  percent : float prop option; [@option]
      (** The percentage of time series that
must fail the predicate for the
condition to be triggered. *)
}
[@@deriving yojson_of]
(** The number/percent of time series for which
the comparison must hold in order for the
condition to trigger. If unspecified, then
the condition will trigger if the comparison
is true for any of the time series that have
been identified by filter and aggregations. *)

type google_monitoring_alert_policy__conditions__condition_absent = {
  duration : string prop;
      (** The amount of time that a time series must
fail to report new data to be considered
failing. Currently, only values that are a
multiple of a minute--e.g. 60s, 120s, or 300s
--are supported. *)
  filter : string prop option; [@option]
      (** A filter that identifies which time series
should be compared with the threshold.The
filter is similar to the one that is
specified in the
MetricService.ListTimeSeries request (that
call is useful to verify the time series
that will be retrieved / processed) and must
specify the metric type and optionally may
contain restrictions on resource type,
resource labels, and metric labels. This
field may not exceed 2048 Unicode characters
in length. *)
  aggregations :
    google_monitoring_alert_policy__conditions__condition_absent__aggregations
    list;
  trigger :
    google_monitoring_alert_policy__conditions__condition_absent__trigger
    list;
}
[@@deriving yojson_of]
(** A condition that checks that a time series
continues to receive new data points. *)

type google_monitoring_alert_policy__conditions__condition_matched_log = {
  filter : string prop;  (** A logs-based filter. *)
  label_extractors : (string * string prop) list option; [@option]
      (** A map from a label key to an extractor expression, which is used to
extract the value for this label key. Each entry in this map is
a specification for how data should be extracted from log entries that
match filter. Each combination of extracted values is treated as
a separate rule for the purposes of triggering notifications.
Label keys and corresponding values can be used in notifications
generated by this condition. *)
}
[@@deriving yojson_of]
(** A condition that checks for log messages matching given constraints.
If set, no other conditions can be present. *)

type google_monitoring_alert_policy__conditions__condition_monitoring_query_language__trigger = {
  count : float prop option; [@option]
      (** The absolute number of time series
that must fail the predicate for the
condition to be triggered. *)
  percent : float prop option; [@option]
      (** The percentage of time series that
must fail the predicate for the
condition to be triggered. *)
}
[@@deriving yojson_of]
(** The number/percent of time series for which
the comparison must hold in order for the
condition to trigger. If unspecified, then
the condition will trigger if the comparison
is true for any of the time series that have
been identified by filter and aggregations,
or by the ratio, if denominator_filter and
denominator_aggregations are specified. *)

type google_monitoring_alert_policy__conditions__condition_monitoring_query_language = {
  duration : string prop;
      (** The amount of time that a time series must
violate the threshold to be considered
failing. Currently, only values that are a
multiple of a minute--e.g., 0, 60, 120, or
300 seconds--are supported. If an invalid
value is given, an error will be returned.
When choosing a duration, it is useful to
keep in mind the frequency of the underlying
time series data (which may also be affected
by any alignments specified in the
aggregations field); a good duration is long
enough so that a single outlier does not
generate spurious alerts, but short enough
that unhealthy states are detected and
alerted on quickly. *)
  evaluation_missing_data : string prop option; [@option]
      (** A condition control that determines how
metric-threshold conditions are evaluated when
data stops arriving. Possible values: [EVALUATION_MISSING_DATA_INACTIVE, EVALUATION_MISSING_DATA_ACTIVE, EVALUATION_MISSING_DATA_NO_OP] *)
  query : string prop;
      (** Monitoring Query Language query that outputs a boolean stream. *)
  trigger :
    google_monitoring_alert_policy__conditions__condition_monitoring_query_language__trigger
    list;
}
[@@deriving yojson_of]
(** A Monitoring Query Language query that outputs a boolean stream *)

type google_monitoring_alert_policy__conditions__condition_prometheus_query_language = {
  alert_rule : string prop option; [@option]
      (** The alerting rule name of this alert in the corresponding Prometheus
configuration file.

Some external tools may require this field to be populated correctly
in order to refer to the original Prometheus configuration file.
The rule group name and the alert name are necessary to update the
relevant AlertPolicies in case the definition of the rule group changes
in the future.

This field is optional. If this field is not empty, then it must be a
valid Prometheus label name. *)
  duration : string prop option; [@option]
      (** Alerts are considered firing once their PromQL expression evaluated
to be true for this long. Alerts whose PromQL expression was not
evaluated to be true for long enough are considered pending. The
default value is zero. Must be zero or positive. *)
  evaluation_interval : string prop option; [@option]
      (** How often this rule should be evaluated. Must be a positive multiple
of 30 seconds or missing. The default value is 30 seconds. If this
PrometheusQueryLanguageCondition was generated from a Prometheus
alerting rule, then this value should be taken from the enclosing
rule group. *)
  labels : (string * string prop) list option; [@option]
      (** Labels to add to or overwrite in the PromQL query result. Label names
must be valid.

Label values can be templatized by using variables. The only available
variable names are the names of the labels in the PromQL result, including
__name__ and value. labels may be empty. This field is intended to be
used for organizing and identifying the AlertPolicy *)
  query : string prop;
      (** The PromQL expression to evaluate. Every evaluation cycle this
expression is evaluated at the current time, and all resultant time
series become pending/firing alerts. This field must not be empty. *)
  rule_group : string prop option; [@option]
      (** The rule group name of this alert in the corresponding Prometheus
configuration file.

Some external tools may require this field to be populated correctly
in order to refer to the original Prometheus configuration file.
The rule group name and the alert name are necessary to update the
relevant AlertPolicies in case the definition of the rule group changes
in the future. This field is optional. *)
}
[@@deriving yojson_of]
(** A condition type that allows alert policies to be defined using
Prometheus Query Language (PromQL).

The PrometheusQueryLanguageCondition message contains information
from a Prometheus alerting rule and its associated rule group. *)

type google_monitoring_alert_policy__conditions__condition_threshold__aggregations = {
  alignment_period : string prop option; [@option]
      (** The alignment period for per-time
series alignment. If present,
alignmentPeriod must be at least
60 seconds. After per-time series
alignment, each time series will
contain data points only on the
period boundaries. If
perSeriesAligner is not specified
or equals ALIGN_NONE, then this
field is ignored. If
perSeriesAligner is specified and
does not equal ALIGN_NONE, then
this field must be defined;
otherwise an error is returned. *)
  cross_series_reducer : string prop option; [@option]
      (** The approach to be used to combine
time series. Not all reducer
functions may be applied to all
time series, depending on the
metric type and the value type of
the original time series.
Reduction may change the metric
type of value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [REDUCE_NONE, REDUCE_MEAN, REDUCE_MIN, REDUCE_MAX, REDUCE_SUM, REDUCE_STDDEV, REDUCE_COUNT, REDUCE_COUNT_TRUE, REDUCE_COUNT_FALSE, REDUCE_FRACTION_TRUE, REDUCE_PERCENTILE_99, REDUCE_PERCENTILE_95, REDUCE_PERCENTILE_50, REDUCE_PERCENTILE_05] *)
  group_by_fields : string prop list option; [@option]
      (** The set of fields to preserve when
crossSeriesReducer is specified.
The groupByFields determine how
the time series are partitioned
into subsets prior to applying the
aggregation function. Each subset
contains time series that have the
same value for each of the
grouping fields. Each individual
time series is a member of exactly
one subset. The crossSeriesReducer
is applied to each subset of time
series. It is not possible to
reduce across different resource
types, so this field implicitly
contains resource.type. Fields not
specified in groupByFields are
aggregated away. If groupByFields
is not specified and all the time
series have the same resource
type, then the time series are
aggregated into a single output
time series. If crossSeriesReducer
is not defined, this field is
ignored. *)
  per_series_aligner : string prop option; [@option]
      (** The approach to be used to align
individual time series. Not all
alignment functions may be applied
to all time series, depending on
the metric type and value type of
the original time series.
Alignment may change the metric
type or the value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [ALIGN_NONE, ALIGN_DELTA, ALIGN_RATE, ALIGN_INTERPOLATE, ALIGN_NEXT_OLDER, ALIGN_MIN, ALIGN_MAX, ALIGN_MEAN, ALIGN_COUNT, ALIGN_SUM, ALIGN_STDDEV, ALIGN_COUNT_TRUE, ALIGN_COUNT_FALSE, ALIGN_FRACTION_TRUE, ALIGN_PERCENTILE_99, ALIGN_PERCENTILE_95, ALIGN_PERCENTILE_50, ALIGN_PERCENTILE_05, ALIGN_PERCENT_CHANGE] *)
}
[@@deriving yojson_of]
(** Specifies the alignment of data points in
individual time series as well as how to
combine the retrieved time series together
(such as when aggregating multiple streams
on each resource to a single stream for each
resource or when aggregating streams across
all members of a group of resources).
Multiple aggregations are applied in the
order specified.This field is similar to the
one in the MetricService.ListTimeSeries
request. It is advisable to use the
ListTimeSeries method when debugging this
field. *)

type google_monitoring_alert_policy__conditions__condition_threshold__denominator_aggregations = {
  alignment_period : string prop option; [@option]
      (** The alignment period for per-time
series alignment. If present,
alignmentPeriod must be at least
60 seconds. After per-time series
alignment, each time series will
contain data points only on the
period boundaries. If
perSeriesAligner is not specified
or equals ALIGN_NONE, then this
field is ignored. If
perSeriesAligner is specified and
does not equal ALIGN_NONE, then
this field must be defined;
otherwise an error is returned. *)
  cross_series_reducer : string prop option; [@option]
      (** The approach to be used to combine
time series. Not all reducer
functions may be applied to all
time series, depending on the
metric type and the value type of
the original time series.
Reduction may change the metric
type of value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [REDUCE_NONE, REDUCE_MEAN, REDUCE_MIN, REDUCE_MAX, REDUCE_SUM, REDUCE_STDDEV, REDUCE_COUNT, REDUCE_COUNT_TRUE, REDUCE_COUNT_FALSE, REDUCE_FRACTION_TRUE, REDUCE_PERCENTILE_99, REDUCE_PERCENTILE_95, REDUCE_PERCENTILE_50, REDUCE_PERCENTILE_05] *)
  group_by_fields : string prop list option; [@option]
      (** The set of fields to preserve when
crossSeriesReducer is specified.
The groupByFields determine how
the time series are partitioned
into subsets prior to applying the
aggregation function. Each subset
contains time series that have the
same value for each of the
grouping fields. Each individual
time series is a member of exactly
one subset. The crossSeriesReducer
is applied to each subset of time
series. It is not possible to
reduce across different resource
types, so this field implicitly
contains resource.type. Fields not
specified in groupByFields are
aggregated away. If groupByFields
is not specified and all the time
series have the same resource
type, then the time series are
aggregated into a single output
time series. If crossSeriesReducer
is not defined, this field is
ignored. *)
  per_series_aligner : string prop option; [@option]
      (** The approach to be used to align
individual time series. Not all
alignment functions may be applied
to all time series, depending on
the metric type and value type of
the original time series.
Alignment may change the metric
type or the value type of the time
series.Time series data must be
aligned in order to perform cross-
time series reduction. If
crossSeriesReducer is specified,
then perSeriesAligner must be
specified and not equal ALIGN_NONE
and alignmentPeriod must be
specified; otherwise, an error is
returned. Possible values: [ALIGN_NONE, ALIGN_DELTA, ALIGN_RATE, ALIGN_INTERPOLATE, ALIGN_NEXT_OLDER, ALIGN_MIN, ALIGN_MAX, ALIGN_MEAN, ALIGN_COUNT, ALIGN_SUM, ALIGN_STDDEV, ALIGN_COUNT_TRUE, ALIGN_COUNT_FALSE, ALIGN_FRACTION_TRUE, ALIGN_PERCENTILE_99, ALIGN_PERCENTILE_95, ALIGN_PERCENTILE_50, ALIGN_PERCENTILE_05, ALIGN_PERCENT_CHANGE] *)
}
[@@deriving yojson_of]
(** Specifies the alignment of data points in
individual time series selected by
denominatorFilter as well as how to combine
the retrieved time series together (such as
when aggregating multiple streams on each
resource to a single stream for each
resource or when aggregating streams across
all members of a group of resources).When
computing ratios, the aggregations and
denominator_aggregations fields must use the
same alignment period and produce time
series that have the same periodicity and
labels.This field is similar to the one in
the MetricService.ListTimeSeries request. It
is advisable to use the ListTimeSeries
method when debugging this field. *)

type google_monitoring_alert_policy__conditions__condition_threshold__forecast_options = {
  forecast_horizon : string prop;
      (** The length of time into the future to forecast
whether a timeseries will violate the threshold.
If the predicted value is found to violate the
threshold, and the violation is observed in all
forecasts made for the Configured 'duration',
then the timeseries is considered to be failing. *)
}
[@@deriving yojson_of]
(** When this field is present, the 'MetricThreshold'
condition forecasts whether the time series is
predicted to violate the threshold within the
'forecastHorizon'. When this field is not set, the
'MetricThreshold' tests the current value of the
timeseries against the threshold. *)

type google_monitoring_alert_policy__conditions__condition_threshold__trigger = {
  count : float prop option; [@option]
      (** The absolute number of time series
that must fail the predicate for the
condition to be triggered. *)
  percent : float prop option; [@option]
      (** The percentage of time series that
must fail the predicate for the
condition to be triggered. *)
}
[@@deriving yojson_of]
(** The number/percent of time series for which
the comparison must hold in order for the
condition to trigger. If unspecified, then
the condition will trigger if the comparison
is true for any of the time series that have
been identified by filter and aggregations,
or by the ratio, if denominator_filter and
denominator_aggregations are specified. *)

type google_monitoring_alert_policy__conditions__condition_threshold = {
  comparison : string prop;
      (** The comparison to apply between the time
series (indicated by filter and aggregation)
and the threshold (indicated by
threshold_value). The comparison is applied
on each time series, with the time series on
the left-hand side and the threshold on the
right-hand side. Only COMPARISON_LT and
COMPARISON_GT are supported currently. Possible values: [COMPARISON_GT, COMPARISON_GE, COMPARISON_LT, COMPARISON_LE, COMPARISON_EQ, COMPARISON_NE] *)
  denominator_filter : string prop option; [@option]
      (** A filter that identifies a time series that
should be used as the denominator of a ratio
that will be compared with the threshold. If
a denominator_filter is specified, the time
series specified by the filter field will be
used as the numerator.The filter is similar
to the one that is specified in the
MetricService.ListTimeSeries request (that
call is useful to verify the time series
that will be retrieved / processed) and must
specify the metric type and optionally may
contain restrictions on resource type,
resource labels, and metric labels. This
field may not exceed 2048 Unicode characters
in length. *)
  duration : string prop;
      (** The amount of time that a time series must
violate the threshold to be considered
failing. Currently, only values that are a
multiple of a minute--e.g., 0, 60, 120, or
300 seconds--are supported. If an invalid
value is given, an error will be returned.
When choosing a duration, it is useful to
keep in mind the frequency of the underlying
time series data (which may also be affected
by any alignments specified in the
aggregations field); a good duration is long
enough so that a single outlier does not
generate spurious alerts, but short enough
that unhealthy states are detected and
alerted on quickly. *)
  evaluation_missing_data : string prop option; [@option]
      (** A condition control that determines how
metric-threshold conditions are evaluated when
data stops arriving. Possible values: [EVALUATION_MISSING_DATA_INACTIVE, EVALUATION_MISSING_DATA_ACTIVE, EVALUATION_MISSING_DATA_NO_OP] *)
  filter : string prop option; [@option]
      (** A filter that identifies which time series
should be compared with the threshold.The
filter is similar to the one that is
specified in the
MetricService.ListTimeSeries request (that
call is useful to verify the time series
that will be retrieved / processed) and must
specify the metric type and optionally may
contain restrictions on resource type,
resource labels, and metric labels. This
field may not exceed 2048 Unicode characters
in length. *)
  threshold_value : float prop option; [@option]
      (** A value against which to compare the time
series. *)
  aggregations :
    google_monitoring_alert_policy__conditions__condition_threshold__aggregations
    list;
  denominator_aggregations :
    google_monitoring_alert_policy__conditions__condition_threshold__denominator_aggregations
    list;
  forecast_options :
    google_monitoring_alert_policy__conditions__condition_threshold__forecast_options
    list;
  trigger :
    google_monitoring_alert_policy__conditions__condition_threshold__trigger
    list;
}
[@@deriving yojson_of]
(** A condition that compares a time series against a
threshold. *)

type google_monitoring_alert_policy__conditions = {
  display_name : string prop;
      (** A short name or phrase used to identify the
condition in dashboards, notifications, and
incidents. To avoid confusion, don't use the same
display name for multiple conditions in the same
policy. *)
  name : string prop;
      (** The unique resource name for this condition.
Its syntax is:
projects/[PROJECT_ID]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID]
[CONDITION_ID] is assigned by Stackdriver Monitoring when
the condition is created as part of a new or updated alerting
policy. *)
  condition_absent :
    google_monitoring_alert_policy__conditions__condition_absent list;
  condition_matched_log :
    google_monitoring_alert_policy__conditions__condition_matched_log
    list;
  condition_monitoring_query_language :
    google_monitoring_alert_policy__conditions__condition_monitoring_query_language
    list;
  condition_prometheus_query_language :
    google_monitoring_alert_policy__conditions__condition_prometheus_query_language
    list;
  condition_threshold :
    google_monitoring_alert_policy__conditions__condition_threshold
    list;
}
[@@deriving yojson_of]
(** A list of conditions for the policy. The conditions are combined by
AND or OR according to the combiner field. If the combined conditions
evaluate to true, then an incident is created. A policy can have from
one to six conditions. *)

type google_monitoring_alert_policy__documentation = {
  content : string prop option; [@option]
      (** The text of the documentation, interpreted according to mimeType.
The content may not exceed 8,192 Unicode characters and may not
exceed more than 10,240 bytes when encoded in UTF-8 format,
whichever is smaller. *)
  mime_type : string prop option; [@option]
      (** The format of the content field. Presently, only the value
text/markdown is supported. *)
  subject : string prop option; [@option]
      (** The subject line of the notification. The subject line may not
exceed 10,240 bytes. In notifications generated by this policy the contents
of the subject line after variable expansion will be truncated to 255 bytes
or shorter at the latest UTF-8 character boundary. *)
}
[@@deriving yojson_of]
(** Documentation that is included with notifications and incidents related
to this policy. Best practice is for the documentation to include information
to help responders understand, mitigate, escalate, and correct the underlying
problems detected by the alerting policy. Notification channels that have
limited capacity might not show this documentation. *)

type google_monitoring_alert_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_alert_policy__timeouts *)

type google_monitoring_alert_policy__creation_record = {
  mutate_time : string prop;  (** mutate_time *)
  mutated_by : string prop;  (** mutated_by *)
}
[@@deriving yojson_of]

type google_monitoring_alert_policy = {
  combiner : string prop;
      (** How to combine the results of multiple conditions to
determine if an incident should be opened. Possible values: [AND, OR, AND_WITH_MATCHING_RESOURCE] *)
  display_name : string prop;
      (** A short name or phrase used to identify the policy in
dashboards, notifications, and incidents. To avoid confusion, don't use
the same display name for multiple policies in the same project. The
name is limited to 512 Unicode characters. *)
  enabled : bool prop option; [@option]
      (** Whether or not the policy is enabled. The default is true. *)
  id : string prop option; [@option]  (** id *)
  notification_channels : string prop list option; [@option]
      (** Identifies the notification channels to which notifications should be
sent when incidents are opened or closed or when new violations occur
on an already opened incident. Each element of this array corresponds
to the name field in each of the NotificationChannel objects that are
returned from the notificationChannels.list method. The syntax of the
entries in this field is
'projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]' *)
  project : string prop option; [@option]  (** project *)
  severity : string prop option; [@option]
      (** The severity of an alert policy indicates how important incidents generated
by that policy are. The severity level will be displayed on the Incident
detail page and in notifications. Possible values: [CRITICAL, ERROR, WARNING] *)
  user_labels : (string * string prop) list option; [@option]
      (** This field is intended to be used for organizing and identifying the AlertPolicy
objects.The field can contain up to 64 entries. Each key and value is limited
to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
can contain only lowercase letters, numerals, underscores, and dashes. Keys
must begin with a letter. *)
  alert_strategy :
    google_monitoring_alert_policy__alert_strategy list;
  conditions : google_monitoring_alert_policy__conditions list;
  documentation : google_monitoring_alert_policy__documentation list;
  timeouts : google_monitoring_alert_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_alert_policy *)

let google_monitoring_alert_policy ?enabled ?id
    ?notification_channels ?project ?severity ?user_labels ?timeouts
    ~combiner ~display_name ~alert_strategy ~conditions
    ~documentation __resource_id =
  let __resource_type = "google_monitoring_alert_policy" in
  let __resource =
    {
      combiner;
      display_name;
      enabled;
      id;
      notification_channels;
      project;
      severity;
      user_labels;
      alert_strategy;
      conditions;
      documentation;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_alert_policy __resource);
  ()
