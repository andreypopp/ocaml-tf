(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_bigquery_job__copy__destination_encryption_configuration = {
  kms_key_name : string;
      (** Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
The BigQuery Service Account associated with your project requires access to this encryption key. *)
  kms_key_version : string;
      (** Describes the Cloud KMS encryption key version used to protect destination BigQuery table. *)
}
[@@deriving yojson_of]
(** Custom encryption configuration (e.g., Cloud KMS keys) *)

type google_bigquery_job__copy__destination_table = {
  dataset_id : string option; [@option]
      (** The ID of the dataset containing this table. *)
  project_id : string option; [@option]
      (** The ID of the project containing this table. *)
  table_id : string;
      (** The table. Can be specified '{{table_id}}' if 'project_id' and 'dataset_id' are also set,
or of the form 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}' if not. *)
}
[@@deriving yojson_of]
(** The destination table. *)

type google_bigquery_job__copy__source_tables = {
  dataset_id : string option; [@option]
      (** The ID of the dataset containing this table. *)
  project_id : string option; [@option]
      (** The ID of the project containing this table. *)
  table_id : string;
      (** The table. Can be specified '{{table_id}}' if 'project_id' and 'dataset_id' are also set,
or of the form 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}' if not. *)
}
[@@deriving yojson_of]
(** Source tables to copy. *)

type google_bigquery_job__copy = {
  create_disposition : string option; [@option]
      (** Specifies whether the job is allowed to create new tables. The following values are supported:
CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
Creation, truncation and append actions occur as one atomic update upon job completion Default value: CREATE_IF_NEEDED Possible values: [CREATE_IF_NEEDED, CREATE_NEVER] *)
  write_disposition : string option; [@option]
      (** Specifies the action that occurs if the destination table already exists. The following values are supported:
WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
Creation, truncation and append actions occur as one atomic update upon job completion. Default value: WRITE_EMPTY Possible values: [WRITE_TRUNCATE, WRITE_APPEND, WRITE_EMPTY] *)
  destination_encryption_configuration :
    google_bigquery_job__copy__destination_encryption_configuration
    list;
  destination_table :
    google_bigquery_job__copy__destination_table list;
  source_tables : google_bigquery_job__copy__source_tables list;
}
[@@deriving yojson_of]
(** Copies a table. *)

type google_bigquery_job__extract__source_model = {
  dataset_id : string;
      (** The ID of the dataset containing this model. *)
  model_id : string;  (** The ID of the model. *)
  project_id : string;
      (** The ID of the project containing this model. *)
}
[@@deriving yojson_of]
(** A reference to the model being exported. *)

type google_bigquery_job__extract__source_table = {
  dataset_id : string option; [@option]
      (** The ID of the dataset containing this table. *)
  project_id : string option; [@option]
      (** The ID of the project containing this table. *)
  table_id : string;
      (** The table. Can be specified '{{table_id}}' if 'project_id' and 'dataset_id' are also set,
or of the form 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}' if not. *)
}
[@@deriving yojson_of]
(** A reference to the table being exported. *)

type google_bigquery_job__extract = {
  compression : string option; [@option]
      (** The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE.
The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. *)
  destination_format : string option; [@option]
      (** The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables and SAVED_MODEL for models.
The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV.
The default value for models is SAVED_MODEL. *)
  destination_uris : string list;
      (** A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written. *)
  field_delimiter : string option; [@option]
      (** When extracting data in CSV format, this defines the delimiter to use between fields in the exported data.
Default is ',' *)
  print_header : bool option; [@option]
      (** Whether to print out a header row in the results. Default is true. *)
  use_avro_logical_types : bool option; [@option]
      (** Whether to use logical types when extracting to AVRO format. *)
  source_model : google_bigquery_job__extract__source_model list;
  source_table : google_bigquery_job__extract__source_table list;
}
[@@deriving yojson_of]
(** Configures an extract job. *)

type google_bigquery_job__load__destination_encryption_configuration = {
  kms_key_name : string;
      (** Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
The BigQuery Service Account associated with your project requires access to this encryption key. *)
  kms_key_version : string;
      (** Describes the Cloud KMS encryption key version used to protect destination BigQuery table. *)
}
[@@deriving yojson_of]
(** Custom encryption configuration (e.g., Cloud KMS keys) *)

type google_bigquery_job__load__destination_table = {
  dataset_id : string option; [@option]
      (** The ID of the dataset containing this table. *)
  project_id : string option; [@option]
      (** The ID of the project containing this table. *)
  table_id : string;
      (** The table. Can be specified '{{table_id}}' if 'project_id' and 'dataset_id' are also set,
or of the form 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}' if not. *)
}
[@@deriving yojson_of]
(** The destination table to load the data into. *)

type google_bigquery_job__load__parquet_options = {
  enable_list_inference : bool option; [@option]
      (** If sourceFormat is set to PARQUET, indicates whether to use schema inference specifically for Parquet LIST logical type. *)
  enum_as_string : bool option; [@option]
      (** If sourceFormat is set to PARQUET, indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default. *)
}
[@@deriving yojson_of]
(** Parquet Options for load and make external tables. *)

type google_bigquery_job__load__time_partitioning = {
  expiration_ms : string option; [@option]
      (** Number of milliseconds for which to keep the storage for a partition. A wrapper is used here because 0 is an invalid value. *)
  field : string option; [@option]
      (** If not set, the table is partitioned by pseudo column '_PARTITIONTIME'; if set, the table is partitioned by this field.
The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
A wrapper is used here because an empty string is an invalid value. *)
  type_ : string; [@key "type"]
      (** The only type supported is DAY, which will generate one partition per day. Providing an empty string used to cause an error,
but in OnePlatform the field will be treated as unset. *)
}
[@@deriving yojson_of]
(** Time-based partitioning specification for the destination table. *)

type google_bigquery_job__load = {
  allow_jagged_rows : bool option; [@option]
      (** Accept rows that are missing trailing optional columns. The missing values are treated as nulls.
If false, records with missing trailing columns are treated as bad records, and if there are too many bad records,
an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats. *)
  allow_quoted_newlines : bool option; [@option]
      (** Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file.
The default value is false. *)
  autodetect : bool option; [@option]
      (** Indicates if we should automatically infer the options and schema for CSV and JSON sources. *)
  create_disposition : string option; [@option]
      (** Specifies whether the job is allowed to create new tables. The following values are supported:
CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
Creation, truncation and append actions occur as one atomic update upon job completion Default value: CREATE_IF_NEEDED Possible values: [CREATE_IF_NEEDED, CREATE_NEVER] *)
  encoding : string option; [@option]
      (** The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.
The default value is UTF-8. BigQuery decodes the data after the raw, binary data
has been split using the values of the quote and fieldDelimiter properties. *)
  field_delimiter : string option; [@option]
      (** The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character.
To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts
the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the
data in its raw, binary state. BigQuery also supports the escape sequence \t to specify a tab separator.
The default value is a comma (','). *)
  ignore_unknown_values : bool option; [@option]
      (** Indicates if BigQuery should allow extra values that are not represented in the table schema.
If true, the extra values are ignored. If false, records with extra columns are treated as bad records,
and if there are too many bad records, an invalid error is returned in the job result.
The default value is false. The sourceFormat property determines what BigQuery treats as an extra value:
CSV: Trailing columns
JSON: Named values that don't match any column names *)
  json_extension : string option; [@option]
      (** If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON.
For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited
GeoJSON: set to GEOJSON. *)
  max_bad_records : float option; [@option]
      (** The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value,
an invalid error is returned in the job result. The default value is 0, which requires that all records are valid. *)
  null_marker : string option; [@option]
      (** Specifies a string that represents a null value in a CSV file. For example, if you specify \N, BigQuery interprets \N as a null value
when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an
empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as
an empty value. *)
  projection_fields : string list option; [@option]
      (** If sourceFormat is set to DATASTORE_BACKUP, indicates which entity properties to load into BigQuery from a Cloud Datastore backup.
Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties.
If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result. *)
  quote : string option; [@option]
      (** The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding,
and then uses the first byte of the encoded string to split the data in its raw, binary state.
The default value is a double-quote (''). If your data does not contain quoted sections, set the property value to an empty string.
If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. *)
  schema_update_options : string list option; [@option]
      (** Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or
supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;
when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators.
For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified:
ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.
ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. *)
  skip_leading_rows : float option; [@option]
      (** The number of rows at the top of a CSV file that BigQuery will skip when loading the data.
The default value is 0. This property is useful if you have header rows in the file that should be skipped.
When autodetect is on, the behavior is the following:
skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected,
the row is read as data. Otherwise data is read starting from the second row.
skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row.
skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected,
row N is just skipped. Otherwise row N is used to extract column names for the detected schema. *)
  source_format : string option; [@option]
      (** The format of the data files. For CSV files, specify CSV. For datastore backups, specify DATASTORE_BACKUP.
For newline-delimited JSON, specify NEWLINE_DELIMITED_JSON. For Avro, specify AVRO. For parquet, specify PARQUET.
For orc, specify ORC. [Beta] For Bigtable, specify BIGTABLE.
The default value is CSV. *)
  source_uris : string list;
      (** The fully-qualified URIs that point to your data in Google Cloud.
For Google Cloud Storage URIs: Each URI can contain one '\*' wildcard character
and it must come after the 'bucket' name. Size limits related to load jobs apply
to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be
specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table.
For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '\*' wildcard character is not allowed. *)
  write_disposition : string option; [@option]
      (** Specifies the action that occurs if the destination table already exists. The following values are supported:
WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
Creation, truncation and append actions occur as one atomic update upon job completion. Default value: WRITE_EMPTY Possible values: [WRITE_TRUNCATE, WRITE_APPEND, WRITE_EMPTY] *)
  destination_encryption_configuration :
    google_bigquery_job__load__destination_encryption_configuration
    list;
  destination_table :
    google_bigquery_job__load__destination_table list;
  parquet_options : google_bigquery_job__load__parquet_options list;
  time_partitioning :
    google_bigquery_job__load__time_partitioning list;
}
[@@deriving yojson_of]
(** Configures a load job. *)

type google_bigquery_job__query__default_dataset = {
  dataset_id : string;
      (** The dataset. Can be specified '{{dataset_id}}' if 'project_id' is also set,
or of the form 'projects/{{project}}/datasets/{{dataset_id}}' if not. *)
  project_id : string option; [@option]
      (** The ID of the project containing this table. *)
}
[@@deriving yojson_of]
(** Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names. *)

type google_bigquery_job__query__destination_encryption_configuration = {
  kms_key_name : string;
      (** Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
The BigQuery Service Account associated with your project requires access to this encryption key. *)
  kms_key_version : string;
      (** Describes the Cloud KMS encryption key version used to protect destination BigQuery table. *)
}
[@@deriving yojson_of]
(** Custom encryption configuration (e.g., Cloud KMS keys) *)

type google_bigquery_job__query__destination_table = {
  dataset_id : string option; [@option]
      (** The ID of the dataset containing this table. *)
  project_id : string option; [@option]
      (** The ID of the project containing this table. *)
  table_id : string;
      (** The table. Can be specified '{{table_id}}' if 'project_id' and 'dataset_id' are also set,
or of the form 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}' if not. *)
}
[@@deriving yojson_of]
(** Describes the table where the query results should be stored.
This property must be set for large results that exceed the maximum response size.
For queries that produce anonymous (cached) results, this field will be populated by BigQuery. *)

type google_bigquery_job__query__script_options = {
  key_result_statement : string option; [@option]
      (** Determines which statement in the script represents the key result,
used to populate the schema and query results of the script job. Possible values: [LAST, FIRST_SELECT] *)
  statement_byte_budget : string option; [@option]
      (** Limit on the number of bytes billed per statement. Exceeding this budget results in an error. *)
  statement_timeout_ms : string option; [@option]
      (** Timeout period for each statement in a script. *)
}
[@@deriving yojson_of]
(** Options controlling the execution of scripts. *)

type google_bigquery_job__query__user_defined_function_resources = {
  inline_code : string option; [@option]
      (** An inline resource that contains code for a user-defined function (UDF).
Providing a inline code resource is equivalent to providing a URI for a file containing the same code. *)
  resource_uri : string option; [@option]
      (** A code resource to load from a Google Cloud Storage URI (gs://bucket/path). *)
}
[@@deriving yojson_of]
(** Describes user-defined function resources used in the query. *)

type google_bigquery_job__query = {
  allow_large_results : bool option; [@option]
      (** If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance.
Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed.
However, you must still set destinationTable when result size exceeds the allowed maximum response size. *)
  create_disposition : string option; [@option]
      (** Specifies whether the job is allowed to create new tables. The following values are supported:
CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
Creation, truncation and append actions occur as one atomic update upon job completion Default value: CREATE_IF_NEEDED Possible values: [CREATE_IF_NEEDED, CREATE_NEVER] *)
  flatten_results : bool option; [@option]
      (** If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results.
allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened. *)
  maximum_billing_tier : float option; [@option]
      (** Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge).
If unspecified, this will be set to your project default. *)
  maximum_bytes_billed : string option; [@option]
      (** Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge).
If unspecified, this will be set to your project default. *)
  parameter_mode : string option; [@option]
      (** Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query. *)
  priority : string option; [@option]
      (** Specifies a priority for the query. Default value: INTERACTIVE Possible values: [INTERACTIVE, BATCH] *)
  query : string;
      (** SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
*NOTE*: queries containing [DML language](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language)
('DELETE', 'UPDATE', 'MERGE', 'INSERT') must specify 'create_disposition = ' and 'write_disposition = '. *)
  schema_update_options : string list option; [@option]
      (** Allows the schema of the destination table to be updated as a side effect of the query job.
Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;
when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table,
specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema.
One or more of the following values are specified:
ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.
ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. *)
  use_legacy_sql : bool option; [@option]
      (** Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true.
If set to false, the query will use BigQuery's standard SQL. *)
  use_query_cache : bool option; [@option]
      (** Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever
tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified.
The default value is true. *)
  write_disposition : string option; [@option]
      (** Specifies the action that occurs if the destination table already exists. The following values are supported:
WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
Creation, truncation and append actions occur as one atomic update upon job completion. Default value: WRITE_EMPTY Possible values: [WRITE_TRUNCATE, WRITE_APPEND, WRITE_EMPTY] *)
  default_dataset : google_bigquery_job__query__default_dataset list;
  destination_encryption_configuration :
    google_bigquery_job__query__destination_encryption_configuration
    list;
  destination_table :
    google_bigquery_job__query__destination_table list;
  script_options : google_bigquery_job__query__script_options list;
  user_defined_function_resources :
    google_bigquery_job__query__user_defined_function_resources list;
}
[@@deriving yojson_of]
(** Configures a query job. *)

type google_bigquery_job__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_job__timeouts *)

type google_bigquery_job__status__errors = {
  location : string;  (** location *)
  message : string;  (** message *)
  reason : string;  (** reason *)
}
[@@deriving yojson_of]

type google_bigquery_job__status__error_result = {
  location : string;  (** location *)
  message : string;  (** message *)
  reason : string;  (** reason *)
}
[@@deriving yojson_of]

type google_bigquery_job__status = {
  error_result : google_bigquery_job__status__error_result list;
      (** error_result *)
  errors : google_bigquery_job__status__errors list;  (** errors *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_bigquery_job = {
  job_id : string;
      (** The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters. *)
  job_timeout_ms : string option; [@option]
      (** Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job. *)
  labels : (string * string) list option; [@option]
      (** The labels associated with this job. You can use these to organize and group your jobs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string option; [@option]
      (** The geographic location of the job. The default value is US. *)
  copy : google_bigquery_job__copy list;
  extract : google_bigquery_job__extract list;
  load : google_bigquery_job__load list;
  query : google_bigquery_job__query list;
  timeouts : google_bigquery_job__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_job *)

let google_bigquery_job ?job_timeout_ms ?labels ?location ?timeouts
    ~job_id ~copy ~extract ~load ~query __resource_id =
  let __resource_type = "google_bigquery_job" in
  let __resource =
    {
      job_id;
      job_timeout_ms;
      labels;
      location;
      copy;
      extract;
      load;
      query;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_job __resource);
  ()