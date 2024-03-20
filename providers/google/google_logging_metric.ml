(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bucket_options__explicit_buckets = {
  bounds : float prop list;
      (** The values must be monotonically increasing. *)
}
[@@deriving yojson_of]
(** Specifies a set of buckets with arbitrary widths. *)

type bucket_options__exponential_buckets = {
  growth_factor : float prop;  (** Must be greater than 1. *)
  num_finite_buckets : float prop;  (** Must be greater than 0. *)
  scale : float prop;  (** Must be greater than 0. *)
}
[@@deriving yojson_of]
(** Specifies an exponential sequence of buckets that have a width that is proportional to the value of
the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket. *)

type bucket_options__linear_buckets = {
  num_finite_buckets : float prop;  (** Must be greater than 0. *)
  offset : float prop;  (** Lower bound of the first bucket. *)
  width : float prop;  (** Must be greater than 0. *)
}
[@@deriving yojson_of]
(** Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).
Each bucket represents a constant absolute uncertainty on the specific value in the bucket. *)

type bucket_options = {
  explicit_buckets : bucket_options__explicit_buckets list;
  exponential_buckets : bucket_options__exponential_buckets list;
  linear_buckets : bucket_options__linear_buckets list;
}
[@@deriving yojson_of]
(** The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
describes the bucket boundaries used to create a histogram of the extracted values. *)

type metric_descriptor__labels = {
  description : string prop option; [@option]
      (** A human-readable description for the label. *)
  key : string prop;  (** The label key. *)
  value_type : string prop option; [@option]
      (** The type of data that can be assigned to the label. Default value: STRING Possible values: [BOOL, INT64, STRING] *)
}
[@@deriving yojson_of]
(** The set of labels that can be used to describe a specific instance of this metric type. For
example, the appengine.googleapis.com/http/server/response_latencies metric type has a label
for the HTTP response code, response_code, so you can look at latencies for successful responses
or just for responses that failed. *)

type metric_descriptor = {
  display_name : string prop option; [@option]
      (** A concise name for the metric, which can be displayed in user interfaces. Use sentence case
without an ending period, for example Request count. This field is optional but it is
recommended to be set for any metrics associated with user-visible concepts, such as Quota. *)
  metric_kind : string prop;
      (** Whether the metric records instantaneous values, changes to a value, etc.
Some combinations of metricKind and valueType might not be supported.
For counter metrics, set this to DELTA. Possible values: [DELTA, GAUGE, CUMULATIVE] *)
  unit : string prop option; [@option]
      (** The unit in which the metric value is reported. It is only applicable if the valueType is
'INT64', 'DOUBLE', or 'DISTRIBUTION'. The supported units are a subset of
[The Unified Code for Units of Measure](http://unitsofmeasure.org/ucum.html) standard *)
  value_type : string prop;
      (** Whether the measurement is an integer, a floating-point number, etc.
Some combinations of metricKind and valueType might not be supported.
For counter metrics, set this to INT64. Possible values: [BOOL, INT64, DOUBLE, STRING, DISTRIBUTION, MONEY] *)
  labels : metric_descriptor__labels list;
}
[@@deriving yojson_of]
(** The optional metric descriptor associated with the logs-based metric.
If unspecified, it uses a default metric descriptor with a DELTA metric kind,
INT64 value type, with no labels and a unit of 1. Such a metric counts the
number of log entries matching the filter expression. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_logging_metric = {
  bucket_name : string prop option; [@option]
      (** The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
are supported. The bucket has to be in the same project as the metric. *)
  description : string prop option; [@option]
      (** A description of this metric, which is used in documentation. The maximum length of the
description is 8000 characters. *)
  disabled : bool prop option; [@option]
      (** If set to True, then this metric is disabled and it does not generate any points. *)
  filter : string prop;
      (** An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
is used to match log entries. *)
  id : string prop option; [@option]  (** id *)
  label_extractors : (string * string prop) list option; [@option]
      (** A map from a label key string to an extractor expression which is used to extract data from a log
entry field and assign as the label value. Each label key specified in the LabelDescriptor must
have an associated extractor expression in this map. The syntax of the extractor expression is
the same as for the valueExtractor field. *)
  name : string prop;
      (** The client-assigned metric identifier. Examples - error_count, nginx/requests.
Metric identifiers are limited to 100 characters and can include only the following
characters A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash
character (/) denotes a hierarchy of name pieces, and it cannot be the first character
of the name. *)
  project : string prop option; [@option]  (** project *)
  value_extractor : string prop option; [@option]
      (** A valueExtractor is required when using a distribution logs-based metric to extract the values to
record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
(https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
log entry field. The value of the field is converted to a string before applying the regex. It is an
error to specify a regex that does not include exactly one capture group. *)
  bucket_options : bucket_options list;
  metric_descriptor : metric_descriptor list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_logging_metric *)

let bucket_options__explicit_buckets ~bounds () :
    bucket_options__explicit_buckets =
  { bounds }

let bucket_options__exponential_buckets ~growth_factor
    ~num_finite_buckets ~scale () :
    bucket_options__exponential_buckets =
  { growth_factor; num_finite_buckets; scale }

let bucket_options__linear_buckets ~num_finite_buckets ~offset ~width
    () : bucket_options__linear_buckets =
  { num_finite_buckets; offset; width }

let bucket_options ~explicit_buckets ~exponential_buckets
    ~linear_buckets () : bucket_options =
  { explicit_buckets; exponential_buckets; linear_buckets }

let metric_descriptor__labels ?description ?value_type ~key () :
    metric_descriptor__labels =
  { description; key; value_type }

let metric_descriptor ?display_name ?unit ~metric_kind ~value_type
    ~labels () : metric_descriptor =
  { display_name; metric_kind; unit; value_type; labels }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_logging_metric ?bucket_name ?description ?disabled ?id
    ?label_extractors ?project ?value_extractor ?timeouts ~filter
    ~name ~bucket_options ~metric_descriptor () :
    google_logging_metric =
  {
    bucket_name;
    description;
    disabled;
    filter;
    id;
    label_extractors;
    name;
    project;
    value_extractor;
    bucket_options;
    metric_descriptor;
    timeouts;
  }

type t = {
  bucket_name : string prop;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  label_extractors : (string * string) list prop;
  name : string prop;
  project : string prop;
  value_extractor : string prop;
}

let make ?bucket_name ?description ?disabled ?id ?label_extractors
    ?project ?value_extractor ?timeouts ~filter ~name ~bucket_options
    ~metric_descriptor __id =
  let __type = "google_logging_metric" in
  let __attrs =
    ({
       bucket_name = Prop.computed __type __id "bucket_name";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       label_extractors =
         Prop.computed __type __id "label_extractors";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       value_extractor = Prop.computed __type __id "value_extractor";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_metric
        (google_logging_metric ?bucket_name ?description ?disabled
           ?id ?label_extractors ?project ?value_extractor ?timeouts
           ~filter ~name ~bucket_options ~metric_descriptor ());
    attrs = __attrs;
  }

let register ?tf_module ?bucket_name ?description ?disabled ?id
    ?label_extractors ?project ?value_extractor ?timeouts ~filter
    ~name ~bucket_options ~metric_descriptor __id =
  let (r : _ Tf_core.resource) =
    make ?bucket_name ?description ?disabled ?id ?label_extractors
      ?project ?value_extractor ?timeouts ~filter ~name
      ~bucket_options ~metric_descriptor __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
