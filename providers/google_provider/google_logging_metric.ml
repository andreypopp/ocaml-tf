(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_logging_metric__bucket_options__explicit_buckets = {
  bounds : float list;
      (** The values must be monotonically increasing. *)
}
[@@deriving yojson_of]
(** Specifies a set of buckets with arbitrary widths. *)

type google_logging_metric__bucket_options__exponential_buckets = {
  growth_factor : float;  (** Must be greater than 1. *)
  num_finite_buckets : float;  (** Must be greater than 0. *)
  scale : float;  (** Must be greater than 0. *)
}
[@@deriving yojson_of]
(** Specifies an exponential sequence of buckets that have a width that is proportional to the value of
the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket. *)

type google_logging_metric__bucket_options__linear_buckets = {
  num_finite_buckets : float;  (** Must be greater than 0. *)
  offset : float;  (** Lower bound of the first bucket. *)
  width : float;  (** Must be greater than 0. *)
}
[@@deriving yojson_of]
(** Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).
Each bucket represents a constant absolute uncertainty on the specific value in the bucket. *)

type google_logging_metric__bucket_options = {
  explicit_buckets :
    google_logging_metric__bucket_options__explicit_buckets list;
  exponential_buckets :
    google_logging_metric__bucket_options__exponential_buckets list;
  linear_buckets :
    google_logging_metric__bucket_options__linear_buckets list;
}
[@@deriving yojson_of]
(** The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
describes the bucket boundaries used to create a histogram of the extracted values. *)

type google_logging_metric__metric_descriptor__labels = {
  description : string option; [@option]
      (** A human-readable description for the label. *)
  key : string;  (** The label key. *)
  value_type : string option; [@option]
      (** The type of data that can be assigned to the label. Default value: STRING Possible values: [BOOL, INT64, STRING] *)
}
[@@deriving yojson_of]
(** The set of labels that can be used to describe a specific instance of this metric type. For
example, the appengine.googleapis.com/http/server/response_latencies metric type has a label
for the HTTP response code, response_code, so you can look at latencies for successful responses
or just for responses that failed. *)

type google_logging_metric__metric_descriptor = {
  display_name : string option; [@option]
      (** A concise name for the metric, which can be displayed in user interfaces. Use sentence case
without an ending period, for example Request count. This field is optional but it is
recommended to be set for any metrics associated with user-visible concepts, such as Quota. *)
  metric_kind : string;
      (** Whether the metric records instantaneous values, changes to a value, etc.
Some combinations of metricKind and valueType might not be supported.
For counter metrics, set this to DELTA. Possible values: [DELTA, GAUGE, CUMULATIVE] *)
  unit : string option; [@option]
      (** The unit in which the metric value is reported. It is only applicable if the valueType is
'INT64', 'DOUBLE', or 'DISTRIBUTION'. The supported units are a subset of
[The Unified Code for Units of Measure](http://unitsofmeasure.org/ucum.html) standard *)
  value_type : string;
      (** Whether the measurement is an integer, a floating-point number, etc.
Some combinations of metricKind and valueType might not be supported.
For counter metrics, set this to INT64. Possible values: [BOOL, INT64, DOUBLE, STRING, DISTRIBUTION, MONEY] *)
  labels : google_logging_metric__metric_descriptor__labels list;
}
[@@deriving yojson_of]
(** The optional metric descriptor associated with the logs-based metric.
If unspecified, it uses a default metric descriptor with a DELTA metric kind,
INT64 value type, with no labels and a unit of 1. Such a metric counts the
number of log entries matching the filter expression. *)

type google_logging_metric__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_logging_metric__timeouts *)

type google_logging_metric = {
  bucket_name : string option; [@option]
      (** The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
are supported. The bucket has to be in the same project as the metric. *)
  description : string option; [@option]
      (** A description of this metric, which is used in documentation. The maximum length of the
description is 8000 characters. *)
  disabled : bool option; [@option]
      (** If set to True, then this metric is disabled and it does not generate any points. *)
  filter : string;
      (** An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
is used to match log entries. *)
  label_extractors : (string * string) list option; [@option]
      (** A map from a label key string to an extractor expression which is used to extract data from a log
entry field and assign as the label value. Each label key specified in the LabelDescriptor must
have an associated extractor expression in this map. The syntax of the extractor expression is
the same as for the valueExtractor field. *)
  name : string;
      (** The client-assigned metric identifier. Examples - error_count, nginx/requests.
Metric identifiers are limited to 100 characters and can include only the following
characters A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash
character (/) denotes a hierarchy of name pieces, and it cannot be the first character
of the name. *)
  value_extractor : string option; [@option]
      (** A valueExtractor is required when using a distribution logs-based metric to extract the values to
record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
(https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
log entry field. The value of the field is converted to a string before applying the regex. It is an
error to specify a regex that does not include exactly one capture group. *)
  bucket_options : google_logging_metric__bucket_options list;
  metric_descriptor : google_logging_metric__metric_descriptor list;
  timeouts : google_logging_metric__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_metric *)

let google_logging_metric ?bucket_name ?description ?disabled
    ?label_extractors ?value_extractor ?timeouts ~filter ~name
    ~bucket_options ~metric_descriptor __resource_id =
  let __resource_type = "google_logging_metric" in
  let __resource =
    {
      bucket_name;
      description;
      disabled;
      filter;
      label_extractors;
      name;
      value_extractor;
      bucket_options;
      metric_descriptor;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_metric __resource);
  ()