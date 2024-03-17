(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_metric_descriptor__labels = {
  description : string prop option; [@option]
      (** A human-readable description for the label. *)
  key : string prop;
      (** The key for this label. The key must not exceed 100 characters. The first character of the key must be an upper- or lower-case letter, the remaining characters must be letters, digits or underscores, and the key must match the regular expression [a-zA-Z][a-zA-Z0-9_]* *)
  value_type : string prop option; [@option]
      (** The type of data that can be assigned to the label. Default value: STRING Possible values: [STRING, BOOL, INT64] *)
}
[@@deriving yojson_of]
(** The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels. *)

type google_monitoring_metric_descriptor__metadata = {
  ingest_delay : string prop option; [@option]
      (** The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors. In '[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)'. *)
  sample_period : string prop option; [@option]
      (** The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period. In '[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)'. *)
}
[@@deriving yojson_of]
(** Metadata which can be used to guide usage of the metric. *)

type google_monitoring_metric_descriptor__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_metric_descriptor__timeouts *)

type google_monitoring_metric_descriptor = {
  description : string prop;
      (** A detailed description of the metric, which can be used in documentation. *)
  display_name : string prop;
      (** A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example Request count. *)
  id : string prop option; [@option]  (** id *)
  launch_stage : string prop option; [@option]
      (** The launch stage of the metric definition. Possible values: [LAUNCH_STAGE_UNSPECIFIED, UNIMPLEMENTED, PRELAUNCH, EARLY_ACCESS, ALPHA, BETA, GA, DEPRECATED] *)
  metric_kind : string prop;
      (** Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [METRIC_KIND_UNSPECIFIED, GAUGE, DELTA, CUMULATIVE] *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop; [@key "type"]
      (** The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/. *)
  unit : string prop option; [@option]
      (** The units in which the metric value is reported. It is only applicable if the
valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
the stored metric values.

Different systems may scale the values to be more easily displayed (so a value of
0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
3.5MBy). However, if the unit is KBy, then the value of the metric is always in
thousands of bytes, no matter how it may be displayed.

If you want a custom metric to record the exact number of CPU-seconds used by a job,
you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
12005.

Alternatively, if you want a custom metric to record data in a more granular way, you
can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
The supported units are a subset of The Unified Code for Units of Measure standard.
More info can be found in the API documentation
(https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors). *)
  value_type : string prop;
      (** Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [BOOL, INT64, DOUBLE, STRING, DISTRIBUTION] *)
  labels : google_monitoring_metric_descriptor__labels list;
  metadata : google_monitoring_metric_descriptor__metadata list;
  timeouts : google_monitoring_metric_descriptor__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_metric_descriptor *)

let google_monitoring_metric_descriptor ?id ?launch_stage ?project
    ?unit ?timeouts ~description ~display_name ~metric_kind ~type_
    ~value_type ~labels ~metadata __resource_id =
  let __resource_type = "google_monitoring_metric_descriptor" in
  let __resource =
    {
      description;
      display_name;
      id;
      launch_stage;
      metric_kind;
      project;
      type_;
      unit;
      value_type;
      labels;
      metadata;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_metric_descriptor __resource);
  ()
