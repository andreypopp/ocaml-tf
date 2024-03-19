(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type data = {
  entity : string prop option; [@option]
      (** The Dataplex entity that represents the data source(e.g. BigQuery table) for Datascan. *)
  resource : string prop option; [@option]
      (** The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be:
(Cloud Storage bucket for DataDiscoveryScan)BigQuery table of type TABLE for DataProfileScan/DataQualityScan. *)
}
[@@deriving yojson_of]
(** The data source for DataScan. *)

type data_profile_spec__exclude_fields = {
  field_names : string prop list option; [@option]
      (** Expected input is a list of fully qualified names of fields as in the schema.
Only top-level field names for nested fields are supported.
For instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are nested fields of 'x'. *)
}
[@@deriving yojson_of]
(** The fields to exclude from data profile.
If specified, the fields will be excluded from data profile, regardless of 'include_fields' value. *)

type data_profile_spec__include_fields = {
  field_names : string prop list option; [@option]
      (** Expected input is a list of fully qualified names of fields as in the schema.
Only top-level field names for nested fields are supported.
For instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are nested fields of 'x'. *)
}
[@@deriving yojson_of]
(** The fields to include in data profile.
If not specified, all fields at the time of profile scan job execution are included, except for ones listed in 'exclude_fields'. *)

type data_profile_spec__post_scan_actions__bigquery_export = {
  results_table : string prop option; [@option]
      (** The BigQuery table to export DataProfileScan results to.
Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID *)
}
[@@deriving yojson_of]
(** If set, results will be exported to the provided BigQuery table. *)

type data_profile_spec__post_scan_actions = {
  bigquery_export :
    data_profile_spec__post_scan_actions__bigquery_export list;
}
[@@deriving yojson_of]
(** Actions to take upon job completion. *)

type data_profile_spec = {
  row_filter : string prop option; [@option]
      (** A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10 *)
  sampling_percent : float prop option; [@option]
      (** The percentage of the records to be selected from the dataset for DataScan.
Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
Sampling is not applied if 'sampling_percent' is not specified, 0 or 100. *)
  exclude_fields : data_profile_spec__exclude_fields list;
  include_fields : data_profile_spec__include_fields list;
  post_scan_actions : data_profile_spec__post_scan_actions list;
}
[@@deriving yojson_of]
(** DataProfileScan related setting. *)

type data_quality_spec__post_scan_actions__bigquery_export = {
  results_table : string prop option; [@option]
      (** The BigQuery table to export DataQualityScan results to.
Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID *)
}
[@@deriving yojson_of]
(** If set, results will be exported to the provided BigQuery table. *)

type data_quality_spec__post_scan_actions = {
  bigquery_export :
    data_quality_spec__post_scan_actions__bigquery_export list;
}
[@@deriving yojson_of]
(** Actions to take upon job completion. *)

type data_quality_spec__rules__non_null_expectation = unit
[@@deriving yojson_of]

type data_quality_spec__rules__range_expectation = {
  max_value : string prop option; [@option]
      (** The maximum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided. *)
  min_value : string prop option; [@option]
      (** The minimum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided. *)
  strict_max_enabled : bool prop option; [@option]
      (** Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
Only relevant if a maxValue has been defined. Default = false. *)
  strict_min_enabled : bool prop option; [@option]
      (** Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.
Only relevant if a minValue has been defined. Default = false. *)
}
[@@deriving yojson_of]
(** ColumnMap rule which evaluates whether each column value lies between a specified range. *)

type data_quality_spec__rules__regex_expectation = {
  regex : string prop;
      (** A regular expression the column value is expected to match. *)
}
[@@deriving yojson_of]
(** ColumnMap rule which evaluates whether each column value matches a specified regex. *)

type data_quality_spec__rules__row_condition_expectation = {
  sql_expression : string prop;  (** The SQL expression. *)
}
[@@deriving yojson_of]
(** Table rule which evaluates whether each row passes the specified condition. *)

type data_quality_spec__rules__set_expectation = {
  values : string prop list;
      (** Expected values for the column value. *)
}
[@@deriving yojson_of]
(** ColumnMap rule which evaluates whether each column value is contained by a specified set. *)

type data_quality_spec__rules__statistic_range_expectation = {
  max_value : string prop option; [@option]
      (** The maximum column statistic value allowed for a row to pass this validation.
At least one of minValue and maxValue need to be provided. *)
  min_value : string prop option; [@option]
      (** The minimum column statistic value allowed for a row to pass this validation.
At least one of minValue and maxValue need to be provided. *)
  statistic : string prop;
      (** column statistics. Possible values: [STATISTIC_UNDEFINED, MEAN, MIN, MAX] *)
  strict_max_enabled : bool prop option; [@option]
      (** Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
Only relevant if a maxValue has been defined. Default = false. *)
  strict_min_enabled : bool prop option; [@option]
      (** Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.
Only relevant if a minValue has been defined. Default = false. *)
}
[@@deriving yojson_of]
(** ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range. *)

type data_quality_spec__rules__table_condition_expectation = {
  sql_expression : string prop;  (** The SQL expression. *)
}
[@@deriving yojson_of]
(** Table rule which evaluates whether the provided expression is true. *)

type data_quality_spec__rules__uniqueness_expectation = unit
[@@deriving yojson_of]

type data_quality_spec__rules = {
  column : string prop option; [@option]
      (** The unnested column which this rule is evaluated against. *)
  description : string prop option; [@option]
      (** Description of the rule.
The maximum length is 1,024 characters. *)
  dimension : string prop;
      (** The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are [COMPLETENESS, ACCURACY, CONSISTENCY, VALIDITY, UNIQUENESS, INTEGRITY] *)
  ignore_null : bool prop option; [@option]
      (** Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing. Only applicable to ColumnMap rules. *)
  name : string prop option; [@option]
      (** A mutable name for the rule.
The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-).
The maximum length is 63 characters.
Must start with a letter.
Must end with a number or a letter. *)
  threshold : float prop option; [@option]
      (** The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0). *)
  non_null_expectation :
    data_quality_spec__rules__non_null_expectation list;
  range_expectation :
    data_quality_spec__rules__range_expectation list;
  regex_expectation :
    data_quality_spec__rules__regex_expectation list;
  row_condition_expectation :
    data_quality_spec__rules__row_condition_expectation list;
  set_expectation : data_quality_spec__rules__set_expectation list;
  statistic_range_expectation :
    data_quality_spec__rules__statistic_range_expectation list;
  table_condition_expectation :
    data_quality_spec__rules__table_condition_expectation list;
  uniqueness_expectation :
    data_quality_spec__rules__uniqueness_expectation list;
}
[@@deriving yojson_of]
(** The list of rules to evaluate against a data source. At least one rule is required. *)

type data_quality_spec = {
  row_filter : string prop option; [@option]
      (** A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10 *)
  sampling_percent : float prop option; [@option]
      (** The percentage of the records to be selected from the dataset for DataScan.
Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
Sampling is not applied if 'sampling_percent' is not specified, 0 or 100. *)
  post_scan_actions : data_quality_spec__post_scan_actions list;
  rules : data_quality_spec__rules list;
}
[@@deriving yojson_of]
(** DataQualityScan related setting. *)

type execution_spec__trigger__on_demand = unit [@@deriving yojson_of]

type execution_spec__trigger__schedule = {
  cron : string prop;
      (** Cron schedule for running scans periodically. This field is required for Schedule scans. *)
}
[@@deriving yojson_of]
(** The scan is scheduled to run periodically. *)

type execution_spec__trigger = {
  on_demand : execution_spec__trigger__on_demand list;
  schedule : execution_spec__trigger__schedule list;
}
[@@deriving yojson_of]
(** Spec related to how often and when a scan should be triggered. *)

type execution_spec = {
  field : string prop option; [@option]
      (** The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time. If not specified, a data scan will run for all data in the table. *)
  trigger : execution_spec__trigger list;
}
[@@deriving yojson_of]
(** DataScan execution settings. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type execution_status = {
  latest_job_end_time : string prop;  (** latest_job_end_time *)
  latest_job_start_time : string prop;  (** latest_job_start_time *)
}
[@@deriving yojson_of]

type google_dataplex_datascan = {
  data_scan_id : string prop;
      (** DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. *)
  description : string prop option; [@option]
      (** Description of the scan. *)
  display_name : string prop option; [@option]
      (** User friendly display name. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels for the scan. A list of key->value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The location where the data scan should reside. *)
  project : string prop option; [@option]  (** project *)
  data : data list;
  data_profile_spec : data_profile_spec list;
  data_quality_spec : data_quality_spec list;
  execution_spec : execution_spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dataplex_datascan *)

let data ?entity ?resource () : data = { entity; resource }

let data_profile_spec__exclude_fields ?field_names () :
    data_profile_spec__exclude_fields =
  { field_names }

let data_profile_spec__include_fields ?field_names () :
    data_profile_spec__include_fields =
  { field_names }

let data_profile_spec__post_scan_actions__bigquery_export
    ?results_table () :
    data_profile_spec__post_scan_actions__bigquery_export =
  { results_table }

let data_profile_spec__post_scan_actions ~bigquery_export () :
    data_profile_spec__post_scan_actions =
  { bigquery_export }

let data_profile_spec ?row_filter ?sampling_percent ~exclude_fields
    ~include_fields ~post_scan_actions () : data_profile_spec =
  {
    row_filter;
    sampling_percent;
    exclude_fields;
    include_fields;
    post_scan_actions;
  }

let data_quality_spec__post_scan_actions__bigquery_export
    ?results_table () :
    data_quality_spec__post_scan_actions__bigquery_export =
  { results_table }

let data_quality_spec__post_scan_actions ~bigquery_export () :
    data_quality_spec__post_scan_actions =
  { bigquery_export }

let data_quality_spec__rules__non_null_expectation () = ()

let data_quality_spec__rules__range_expectation ?max_value ?min_value
    ?strict_max_enabled ?strict_min_enabled () :
    data_quality_spec__rules__range_expectation =
  { max_value; min_value; strict_max_enabled; strict_min_enabled }

let data_quality_spec__rules__regex_expectation ~regex () :
    data_quality_spec__rules__regex_expectation =
  { regex }

let data_quality_spec__rules__row_condition_expectation
    ~sql_expression () :
    data_quality_spec__rules__row_condition_expectation =
  { sql_expression }

let data_quality_spec__rules__set_expectation ~values () :
    data_quality_spec__rules__set_expectation =
  { values }

let data_quality_spec__rules__statistic_range_expectation ?max_value
    ?min_value ?strict_max_enabled ?strict_min_enabled ~statistic ()
    : data_quality_spec__rules__statistic_range_expectation =
  {
    max_value;
    min_value;
    statistic;
    strict_max_enabled;
    strict_min_enabled;
  }

let data_quality_spec__rules__table_condition_expectation
    ~sql_expression () :
    data_quality_spec__rules__table_condition_expectation =
  { sql_expression }

let data_quality_spec__rules__uniqueness_expectation () = ()

let data_quality_spec__rules ?column ?description ?ignore_null ?name
    ?threshold ~dimension ~non_null_expectation ~range_expectation
    ~regex_expectation ~row_condition_expectation ~set_expectation
    ~statistic_range_expectation ~table_condition_expectation
    ~uniqueness_expectation () : data_quality_spec__rules =
  {
    column;
    description;
    dimension;
    ignore_null;
    name;
    threshold;
    non_null_expectation;
    range_expectation;
    regex_expectation;
    row_condition_expectation;
    set_expectation;
    statistic_range_expectation;
    table_condition_expectation;
    uniqueness_expectation;
  }

let data_quality_spec ?row_filter ?sampling_percent
    ~post_scan_actions ~rules () : data_quality_spec =
  { row_filter; sampling_percent; post_scan_actions; rules }

let execution_spec__trigger__on_demand () = ()

let execution_spec__trigger__schedule ~cron () :
    execution_spec__trigger__schedule =
  { cron }

let execution_spec__trigger ~on_demand ~schedule () :
    execution_spec__trigger =
  { on_demand; schedule }

let execution_spec ?field ~trigger () : execution_spec =
  { field; trigger }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataplex_datascan ?description ?display_name ?id ?labels
    ?project ?timeouts ~data_scan_id ~location ~data
    ~data_profile_spec ~data_quality_spec ~execution_spec () :
    google_dataplex_datascan =
  {
    data_scan_id;
    description;
    display_name;
    id;
    labels;
    location;
    project;
    data;
    data_profile_spec;
    data_quality_spec;
    execution_spec;
    timeouts;
  }

type t = {
  create_time : string prop;
  data_scan_id : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  execution_status : execution_status list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?display_name ?id ?labels
    ?project ?timeouts ~data_scan_id ~location ~data
    ~data_profile_spec ~data_quality_spec ~execution_spec
    __resource_id =
  let __resource_type = "google_dataplex_datascan" in
  let __resource =
    google_dataplex_datascan ?description ?display_name ?id ?labels
      ?project ?timeouts ~data_scan_id ~location ~data
      ~data_profile_spec ~data_quality_spec ~execution_spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_datascan __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       data_scan_id =
         Prop.computed __resource_type __resource_id "data_scan_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       execution_status =
         Prop.computed __resource_type __resource_id
           "execution_status";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       type_ = Prop.computed __resource_type __resource_id "type";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
