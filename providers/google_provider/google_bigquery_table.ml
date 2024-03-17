(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_bigquery_table__encryption_configuration = {
  kms_key_name : string;
      (** The self link or full name of a key which should be used to encrypt this table. Note that the default bigquery service account will need to have encrypt/decrypt permissions on this key - you may want to see the google_bigquery_default_service_account datasource and the google_kms_crypto_key_iam_binding resource. *)
  kms_key_version : string;
      (** The self link or full name of the kms key version used to encrypt this table. *)
}
[@@deriving yojson_of]
(** Specifies how the table should be encrypted. If left blank, the table will be encrypted with a Google-managed key; that process is transparent to the user. *)

type google_bigquery_table__external_data_configuration__avro_options = {
  use_avro_logical_types : bool;
      (** If sourceFormat is set to AVRO, indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER). *)
}
[@@deriving yojson_of]
(** Additional options if source_format is set to AVRO *)

type google_bigquery_table__external_data_configuration__csv_options = {
  allow_jagged_rows : bool option; [@option]
      (** Indicates if BigQuery should accept rows that are missing trailing optional columns. *)
  allow_quoted_newlines : bool option; [@option]
      (** Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false. *)
  encoding : string option; [@option]
      (** The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. *)
  field_delimiter : string option; [@option]
      (** The separator for fields in a CSV file. *)
  quote : string;
      (** The value that is used to quote data sections in a CSV file. If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allow_quoted_newlines property to true. The API-side default is , specified in Terraform escaped as \. Due to limitations with Terraform default values, this value is required to be explicitly set. *)
  skip_leading_rows : float option; [@option]
      (** The number of rows at the top of a CSV file that BigQuery will skip when reading the data. *)
}
[@@deriving yojson_of]
(** Additional properties to set if source_format is set to CSV. *)

type google_bigquery_table__external_data_configuration__google_sheets_options = {
  range : string option; [@option]
      (** Range of a sheet to query from. Only used when non-empty. At least one of range or skip_leading_rows must be set. Typical format: sheet_name!top_left_cell_id:bottom_right_cell_id For example: sheet1!A1:B20 *)
  skip_leading_rows : float option; [@option]
      (** The number of rows at the top of the sheet that BigQuery will skip when reading the data. At least one of range or skip_leading_rows must be set. *)
}
[@@deriving yojson_of]
(** Additional options if source_format is set to GOOGLE_SHEETS. *)

type google_bigquery_table__external_data_configuration__hive_partitioning_options = {
  mode : string option; [@option]
      (** When set, what mode of hive partitioning to use when reading data. *)
  require_partition_filter : bool option; [@option]
      (** If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. *)
  source_uri_prefix : string option; [@option]
      (** When hive partition detection is requested, a common for all source uris must be required. The prefix must end immediately before the partition key encoding begins. *)
}
[@@deriving yojson_of]
(** When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification. *)

type google_bigquery_table__external_data_configuration__json_options = {
  encoding : string option; [@option]
      (** The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8. *)
}
[@@deriving yojson_of]
(** Additional properties to set if sourceFormat is set to JSON. *)

type google_bigquery_table__external_data_configuration__parquet_options = {
  enable_list_inference : bool option; [@option]
      (** Indicates whether to use schema inference specifically for Parquet LIST logical type. *)
  enum_as_string : bool option; [@option]
      (** Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default. *)
}
[@@deriving yojson_of]
(** Additional properties to set if sourceFormat is set to PARQUET. *)

type google_bigquery_table__external_data_configuration = {
  autodetect : bool;
      (** Let BigQuery try to autodetect the schema and format of the table. *)
  compression : string option; [@option]
      (** The compression type of the data source. Valid values are NONE or GZIP. *)
  connection_id : string option; [@option]
      (** The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connectionId can have the form {{project}}.{{location}}.{{connection_id}} or projects/{{project}}/locations/{{location}}/connections/{{connection_id}}. *)
  file_set_spec_type : string option; [@option]
      (** Specifies how source URIs are interpreted for constructing the file set to load.  By default source URIs are expanded against the underlying storage.  Other options include specifying manifest files. Only applicable to object storage systems. *)
  ignore_unknown_values : bool option; [@option]
      (** Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. *)
  max_bad_records : float option; [@option]
      (** The maximum number of bad records that BigQuery can ignore when reading data. *)
  metadata_cache_mode : string option; [@option]
      (** Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source. *)
  object_metadata : string option; [@option]
      (** Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If ObjectMetadata is set, sourceFormat should be omitted. *)
  reference_file_schema_uri : string option; [@option]
      (** When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC. *)
  schema : string option; [@option]
      (** A JSON schema for the external table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables. *)
  source_format : string option; [@option]
      (**  Please see sourceFormat under ExternalDataConfiguration in Bigquery's public API documentation (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration) for supported formats. To use GOOGLE_SHEETS the scopes must include googleapis.com/auth/drive.readonly. *)
  source_uris : string list;
      (** A list of the fully-qualified URIs that point to your data in Google Cloud. *)
  avro_options :
    google_bigquery_table__external_data_configuration__avro_options
    list;
  csv_options :
    google_bigquery_table__external_data_configuration__csv_options
    list;
  google_sheets_options :
    google_bigquery_table__external_data_configuration__google_sheets_options
    list;
  hive_partitioning_options :
    google_bigquery_table__external_data_configuration__hive_partitioning_options
    list;
  json_options :
    google_bigquery_table__external_data_configuration__json_options
    list;
  parquet_options :
    google_bigquery_table__external_data_configuration__parquet_options
    list;
}
[@@deriving yojson_of]
(** Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table. *)

type google_bigquery_table__materialized_view = {
  allow_non_incremental_definition : bool option; [@option]
      (** Allow non incremental materialized view definition. The default value is false. *)
  enable_refresh : bool option; [@option]
      (** Specifies if BigQuery should automatically refresh materialized view when the base table is updated. The default is true. *)
  query : string;  (** A query whose result is persisted. *)
  refresh_interval_ms : float option; [@option]
      (** Specifies maximum frequency at which this materialized view will be refreshed. The default is 1800000. *)
}
[@@deriving yojson_of]
(** If specified, configures this table as a materialized view. *)

type google_bigquery_table__range_partitioning__range = {
  end_ : float; [@key "end"]
      (** End of the range partitioning, exclusive. *)
  interval : float;
      (** The width of each range within the partition. *)
  start : float;  (** Start of the range partitioning, inclusive. *)
}
[@@deriving yojson_of]
(** Information required to partition based on ranges. Structure is documented below. *)

type google_bigquery_table__range_partitioning = {
  field : string;
      (** The field used to determine how to create a range-based partition. *)
  range : google_bigquery_table__range_partitioning__range list;
}
[@@deriving yojson_of]
(** If specified, configures range-based partitioning for this table. *)

type google_bigquery_table__table_constraints__foreign_keys__column_references = {
  referenced_column : string;
      (** The column in the primary key that are referenced by the referencingColumn. *)
  referencing_column : string;
      (** The column that composes the foreign key. *)
}
[@@deriving yojson_of]
(** The pair of the foreign key column and primary key column. *)

type google_bigquery_table__table_constraints__foreign_keys__referenced_table = {
  dataset_id : string;
      (** The ID of the dataset containing this table. *)
  project_id : string;
      (** The ID of the project containing this table. *)
  table_id : string;
      (** The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters. Certain operations allow suffixing of the table ID with a partition decorator, such as sample_table$20190123. *)
}
[@@deriving yojson_of]
(** The table that holds the primary key and is referenced by this foreign key. *)

type google_bigquery_table__table_constraints__foreign_keys = {
  name : string option; [@option]
      (** Set only if the foreign key constraint is named. *)
  column_references :
    google_bigquery_table__table_constraints__foreign_keys__column_references
    list;
  referenced_table :
    google_bigquery_table__table_constraints__foreign_keys__referenced_table
    list;
}
[@@deriving yojson_of]
(** Present only if the table has a foreign key. The foreign key is not enforced. *)

type google_bigquery_table__table_constraints__primary_key = {
  columns : string list;
      (** The columns that are composed of the primary key constraint. *)
}
[@@deriving yojson_of]
(** Represents a primary key constraint on a table's columns. Present only if the table has a primary key. The primary key is not enforced. *)

type google_bigquery_table__table_constraints = {
  foreign_keys :
    google_bigquery_table__table_constraints__foreign_keys list;
  primary_key :
    google_bigquery_table__table_constraints__primary_key list;
}
[@@deriving yojson_of]
(** Defines the primary key and foreign keys. *)

type google_bigquery_table__table_replication_info = {
  replication_interval_ms : float option; [@option]
      (** The interval at which the source materialized view is polled for updates. The default is 300000. *)
  source_dataset_id : string;  (** The ID of the source dataset. *)
  source_project_id : string;  (** The ID of the source project. *)
  source_table_id : string;
      (** The ID of the source materialized view. *)
}
[@@deriving yojson_of]
(** Replication info of a table created using AS REPLICA DDL like: CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv. *)

type google_bigquery_table__time_partitioning = {
  expiration_ms : float option; [@option]
      (** Number of milliseconds for which to keep the storage for a partition. *)
  field : string option; [@option]
      (** The field used to determine how to create a time-based partition. If time-based partitioning is enabled without this value, the table is partitioned based on the load time. *)
  require_partition_filter : bool option; [@option]
      (** If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. *)
  type_ : string; [@key "type"]
      (** The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively. *)
}
[@@deriving yojson_of]
(** If specified, configures time-based partitioning for this table. *)

type google_bigquery_table__view = {
  query : string;
      (** A query that BigQuery executes when the view is referenced. *)
  use_legacy_sql : bool option; [@option]
      (** Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery's standard SQL *)
}
[@@deriving yojson_of]
(** If specified, configures this table as a view. *)

type google_bigquery_table = {
  clustering : string list option; [@option]
      (** Specifies column names to use for data clustering. Up to four top-level columns are allowed, and should be specified in descending priority order. *)
  dataset_id : string;
      (** The dataset ID to create the table in. Changing this forces a new resource to be created. *)
  deletion_protection : bool option; [@option]
      (** Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. *)
  description : string option; [@option]
      (** The field description. *)
  friendly_name : string option; [@option]
      (** A descriptive name for the table. *)
  labels : (string * string) list option; [@option]
      (** A mapping of labels to assign to the resource.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  max_staleness : string option; [@option]
      (** The maximum staleness of data that could be returned when the table (or stale MV) is queried. Staleness encoded as a string encoding of [SQL IntervalValue type](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#interval_type). *)
  require_partition_filter : bool option; [@option]
      (** If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. *)
  table_id : string;
      (** A unique ID for the resource. Changing this forces a new resource to be created. *)
  encryption_configuration :
    google_bigquery_table__encryption_configuration list;
  external_data_configuration :
    google_bigquery_table__external_data_configuration list;
  materialized_view : google_bigquery_table__materialized_view list;
  range_partitioning :
    google_bigquery_table__range_partitioning list;
  table_constraints : google_bigquery_table__table_constraints list;
  table_replication_info :
    google_bigquery_table__table_replication_info list;
  time_partitioning : google_bigquery_table__time_partitioning list;
  view : google_bigquery_table__view list;
}
[@@deriving yojson_of]
(** google_bigquery_table *)

let google_bigquery_table ?clustering ?deletion_protection
    ?description ?friendly_name ?labels ?max_staleness
    ?require_partition_filter ~dataset_id ~table_id
    ~encryption_configuration ~external_data_configuration
    ~materialized_view ~range_partitioning ~table_constraints
    ~table_replication_info ~time_partitioning ~view __resource_id =
  let __resource_type = "google_bigquery_table" in
  let __resource =
    {
      clustering;
      dataset_id;
      deletion_protection;
      description;
      friendly_name;
      labels;
      max_staleness;
      require_partition_filter;
      table_id;
      encryption_configuration;
      external_data_configuration;
      materialized_view;
      range_partitioning;
      table_constraints;
      table_replication_info;
      time_partitioning;
      view;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_table __resource);
  ()
