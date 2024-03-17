(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_datastream_stream__backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string option; [@option]  (** Column collation. *)
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html *)
  length : float;  (** Column length. *)
  nullable : bool option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables = {
  table : string;  (** Table name. *)
  mysql_columns :
    google_datastream_stream__backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type google_datastream_stream__backfill_all__mysql_excluded_objects__mysql_databases = {
  database : string;  (** Database name. *)
  mysql_tables :
    google_datastream_stream__backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    list;
}
[@@deriving yojson_of]
(** MySQL databases on the server *)

type google_datastream_stream__backfill_all__mysql_excluded_objects = {
  mysql_databases :
    google_datastream_stream__backfill_all__mysql_excluded_objects__mysql_databases
    list;
}
[@@deriving yojson_of]
(** MySQL data source objects to avoid backfilling. *)

type google_datastream_stream__backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The Oracle data type. Full data types list can be found here:
https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html *)
  encoding : string;  (** Column encoding. *)
  length : float;  (** Column length. *)
  nullable : bool;
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float;
      (** The ordinal position of the column in the table. *)
  precision : float;  (** Column precision. *)
  primary_key : bool;
      (** Whether or not the column represents a primary key. *)
  scale : float;  (** Column scale. *)
}
[@@deriving yojson_of]
(** Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables = {
  table : string;  (** Table name. *)
  oracle_columns :
    google_datastream_stream__backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type google_datastream_stream__backfill_all__oracle_excluded_objects__oracle_schemas = {
  schema : string;  (** Schema name. *)
  oracle_tables :
    google_datastream_stream__backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    list;
}
[@@deriving yojson_of]
(** Oracle schemas/databases in the database server *)

type google_datastream_stream__backfill_all__oracle_excluded_objects = {
  oracle_schemas :
    google_datastream_stream__backfill_all__oracle_excluded_objects__oracle_schemas
    list;
}
[@@deriving yojson_of]
(** PostgreSQL data source objects to avoid backfilling. *)

type google_datastream_stream__backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The PostgreSQL data type. Full data types list can be found here:
https://www.postgresql.org/docs/current/datatype.html *)
  length : float;  (** Column length. *)
  nullable : bool option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float option; [@option]
      (** The ordinal position of the column in the table. *)
  precision : float;  (** Column precision. *)
  primary_key : bool option; [@option]
      (** Whether or not the column represents a primary key. *)
  scale : float;  (** Column scale. *)
}
[@@deriving yojson_of]
(** PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables = {
  table : string;  (** Table name. *)
  postgresql_columns :
    google_datastream_stream__backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the schema. *)

type google_datastream_stream__backfill_all__postgresql_excluded_objects__postgresql_schemas = {
  schema : string;  (** Database name. *)
  postgresql_tables :
    google_datastream_stream__backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    list;
}
[@@deriving yojson_of]
(** PostgreSQL schemas on the server *)

type google_datastream_stream__backfill_all__postgresql_excluded_objects = {
  postgresql_schemas :
    google_datastream_stream__backfill_all__postgresql_excluded_objects__postgresql_schemas
    list;
}
[@@deriving yojson_of]
(** PostgreSQL data source objects to avoid backfilling. *)

type google_datastream_stream__backfill_all = {
  mysql_excluded_objects :
    google_datastream_stream__backfill_all__mysql_excluded_objects
    list;
  oracle_excluded_objects :
    google_datastream_stream__backfill_all__oracle_excluded_objects
    list;
  postgresql_excluded_objects :
    google_datastream_stream__backfill_all__postgresql_excluded_objects
    list;
}
[@@deriving yojson_of]
(** Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded. *)

type google_datastream_stream__backfill_none = unit
[@@deriving yojson_of]

type google_datastream_stream__destination_config__bigquery_destination_config__single_target_dataset = {
  dataset_id : string;
      (** Dataset ID in the format projects/{project}/datasets/{dataset_id} or
{project}:{dataset_id} *)
}
[@@deriving yojson_of]
(** A single target dataset to which all data will be streamed. *)

type google_datastream_stream__destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template = {
  dataset_id_prefix : string option; [@option]
      (** If supplied, every created dataset will have its name prefixed by the provided value.
The prefix and name will be separated by an underscore. i.e. _. *)
  kms_key_name : string option; [@option]
      (** Describes the Cloud KMS encryption key that will be used to protect destination BigQuery
table. The BigQuery Service Account associated with your project requires access to this
encryption key. i.e. projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{cryptoKey}.
See https://cloud.google.com/bigquery/docs/customer-managed-encryption for more information. *)
  location : string;
      (** The geographic location where the dataset should reside.
See https://cloud.google.com/bigquery/docs/locations for supported locations. *)
}
[@@deriving yojson_of]
(** Dataset template used for dynamic dataset creation. *)

type google_datastream_stream__destination_config__bigquery_destination_config__source_hierarchy_datasets = {
  dataset_template :
    google_datastream_stream__destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    list;
}
[@@deriving yojson_of]
(** Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy. *)

type google_datastream_stream__destination_config__bigquery_destination_config = {
  data_freshness : string option; [@option]
      (** The guaranteed data freshness (in seconds) when querying tables created by the stream.
Editing this field will only affect new tables created in the future, but existing tables
will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. Defaults to 900s. *)
  single_target_dataset :
    google_datastream_stream__destination_config__bigquery_destination_config__single_target_dataset
    list;
  source_hierarchy_datasets :
    google_datastream_stream__destination_config__bigquery_destination_config__source_hierarchy_datasets
    list;
}
[@@deriving yojson_of]
(** A configuration for how data should be loaded to Cloud Storage. *)

type google_datastream_stream__destination_config__gcs_destination_config__avro_file_format =
  unit
[@@deriving yojson_of]

type google_datastream_stream__destination_config__gcs_destination_config__json_file_format = {
  compression : string option; [@option]
      (** Compression of the loaded JSON file. Possible values: [NO_COMPRESSION, GZIP] *)
  schema_file_format : string option; [@option]
      (** The schema file format along JSON data files. Possible values: [NO_SCHEMA_FILE, AVRO_SCHEMA_FILE] *)
}
[@@deriving yojson_of]
(** JSON file format configuration. *)

type google_datastream_stream__destination_config__gcs_destination_config = {
  file_rotation_interval : string option; [@option]
      (** The maximum duration for which new events are added before a file is closed and a new file is created.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. Defaults to 900s. *)
  file_rotation_mb : float option; [@option]
      (** The maximum file size to be saved in the bucket. *)
  path : string option; [@option]
      (** Path inside the Cloud Storage bucket to write data to. *)
  avro_file_format :
    google_datastream_stream__destination_config__gcs_destination_config__avro_file_format
    list;
  json_file_format :
    google_datastream_stream__destination_config__gcs_destination_config__json_file_format
    list;
}
[@@deriving yojson_of]
(** A configuration for how data should be loaded to Cloud Storage. *)

type google_datastream_stream__destination_config = {
  destination_connection_profile : string;
      (** Destination connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name} *)
  bigquery_destination_config :
    google_datastream_stream__destination_config__bigquery_destination_config
    list;
  gcs_destination_config :
    google_datastream_stream__destination_config__gcs_destination_config
    list;
}
[@@deriving yojson_of]
(** Destination connection profile configuration. *)

type google_datastream_stream__source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string option; [@option]  (** Column collation. *)
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html *)
  length : float;  (** Column length. *)
  nullable : bool option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables = {
  table : string;  (** Table name. *)
  mysql_columns :
    google_datastream_stream__source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type google_datastream_stream__source_config__mysql_source_config__exclude_objects__mysql_databases = {
  database : string;  (** Database name. *)
  mysql_tables :
    google_datastream_stream__source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    list;
}
[@@deriving yojson_of]
(** MySQL databases on the server *)

type google_datastream_stream__source_config__mysql_source_config__exclude_objects = {
  mysql_databases :
    google_datastream_stream__source_config__mysql_source_config__exclude_objects__mysql_databases
    list;
}
[@@deriving yojson_of]
(** MySQL objects to exclude from the stream. *)

type google_datastream_stream__source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string option; [@option]  (** Column collation. *)
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html *)
  length : float;  (** Column length. *)
  nullable : bool option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables = {
  table : string;  (** Table name. *)
  mysql_columns :
    google_datastream_stream__source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type google_datastream_stream__source_config__mysql_source_config__include_objects__mysql_databases = {
  database : string;  (** Database name. *)
  mysql_tables :
    google_datastream_stream__source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    list;
}
[@@deriving yojson_of]
(** MySQL databases on the server *)

type google_datastream_stream__source_config__mysql_source_config__include_objects = {
  mysql_databases :
    google_datastream_stream__source_config__mysql_source_config__include_objects__mysql_databases
    list;
}
[@@deriving yojson_of]
(** MySQL objects to retrieve from the source. *)

type google_datastream_stream__source_config__mysql_source_config = {
  max_concurrent_backfill_tasks : float option; [@option]
      (** Maximum number of concurrent backfill tasks. The number should be non negative.
If not set (or set to 0), the system's default value will be used. *)
  max_concurrent_cdc_tasks : float option; [@option]
      (** Maximum number of concurrent CDC tasks. The number should be non negative.
If not set (or set to 0), the system's default value will be used. *)
  exclude_objects :
    google_datastream_stream__source_config__mysql_source_config__exclude_objects
    list;
  include_objects :
    google_datastream_stream__source_config__mysql_source_config__include_objects
    list;
}
[@@deriving yojson_of]
(** MySQL data source configuration. *)

type google_datastream_stream__source_config__oracle_source_config__drop_large_objects =
  unit
[@@deriving yojson_of]

type google_datastream_stream__source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The Oracle data type. Full data types list can be found here:
https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html *)
  encoding : string;  (** Column encoding. *)
  length : float;  (** Column length. *)
  nullable : bool;
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float;
      (** The ordinal position of the column in the table. *)
  precision : float;  (** Column precision. *)
  primary_key : bool;
      (** Whether or not the column represents a primary key. *)
  scale : float;  (** Column scale. *)
}
[@@deriving yojson_of]
(** Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables = {
  table : string;  (** Table name. *)
  oracle_columns :
    google_datastream_stream__source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type google_datastream_stream__source_config__oracle_source_config__exclude_objects__oracle_schemas = {
  schema : string;  (** Schema name. *)
  oracle_tables :
    google_datastream_stream__source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    list;
}
[@@deriving yojson_of]
(** Oracle schemas/databases in the database server *)

type google_datastream_stream__source_config__oracle_source_config__exclude_objects = {
  oracle_schemas :
    google_datastream_stream__source_config__oracle_source_config__exclude_objects__oracle_schemas
    list;
}
[@@deriving yojson_of]
(** Oracle objects to exclude from the stream. *)

type google_datastream_stream__source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The Oracle data type. Full data types list can be found here:
https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html *)
  encoding : string;  (** Column encoding. *)
  length : float;  (** Column length. *)
  nullable : bool;
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float;
      (** The ordinal position of the column in the table. *)
  precision : float;  (** Column precision. *)
  primary_key : bool;
      (** Whether or not the column represents a primary key. *)
  scale : float;  (** Column scale. *)
}
[@@deriving yojson_of]
(** Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables = {
  table : string;  (** Table name. *)
  oracle_columns :
    google_datastream_stream__source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type google_datastream_stream__source_config__oracle_source_config__include_objects__oracle_schemas = {
  schema : string;  (** Schema name. *)
  oracle_tables :
    google_datastream_stream__source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    list;
}
[@@deriving yojson_of]
(** Oracle schemas/databases in the database server *)

type google_datastream_stream__source_config__oracle_source_config__include_objects = {
  oracle_schemas :
    google_datastream_stream__source_config__oracle_source_config__include_objects__oracle_schemas
    list;
}
[@@deriving yojson_of]
(** Oracle objects to retrieve from the source. *)

type google_datastream_stream__source_config__oracle_source_config__stream_large_objects =
  unit
[@@deriving yojson_of]

type google_datastream_stream__source_config__oracle_source_config = {
  max_concurrent_backfill_tasks : float option; [@option]
      (** Maximum number of concurrent backfill tasks. The number should be non negative.
If not set (or set to 0), the system's default value will be used. *)
  max_concurrent_cdc_tasks : float option; [@option]
      (** Maximum number of concurrent CDC tasks. The number should be non negative.
If not set (or set to 0), the system's default value will be used. *)
  drop_large_objects :
    google_datastream_stream__source_config__oracle_source_config__drop_large_objects
    list;
  exclude_objects :
    google_datastream_stream__source_config__oracle_source_config__exclude_objects
    list;
  include_objects :
    google_datastream_stream__source_config__oracle_source_config__include_objects
    list;
  stream_large_objects :
    google_datastream_stream__source_config__oracle_source_config__stream_large_objects
    list;
}
[@@deriving yojson_of]
(** MySQL data source configuration. *)

type google_datastream_stream__source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The PostgreSQL data type. Full data types list can be found here:
https://www.postgresql.org/docs/current/datatype.html *)
  length : float;  (** Column length. *)
  nullable : bool option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float option; [@option]
      (** The ordinal position of the column in the table. *)
  precision : float;  (** Column precision. *)
  primary_key : bool option; [@option]
      (** Whether or not the column represents a primary key. *)
  scale : float;  (** Column scale. *)
}
[@@deriving yojson_of]
(** PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables = {
  table : string;  (** Table name. *)
  postgresql_columns :
    google_datastream_stream__source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the schema. *)

type google_datastream_stream__source_config__postgresql_source_config__exclude_objects__postgresql_schemas = {
  schema : string;  (** Database name. *)
  postgresql_tables :
    google_datastream_stream__source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    list;
}
[@@deriving yojson_of]
(** PostgreSQL schemas on the server *)

type google_datastream_stream__source_config__postgresql_source_config__exclude_objects = {
  postgresql_schemas :
    google_datastream_stream__source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    list;
}
[@@deriving yojson_of]
(** PostgreSQL objects to exclude from the stream. *)

type google_datastream_stream__source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string option; [@option]  (** Column name. *)
  data_type : string option; [@option]
      (** The PostgreSQL data type. Full data types list can be found here:
https://www.postgresql.org/docs/current/datatype.html *)
  length : float;  (** Column length. *)
  nullable : bool option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float option; [@option]
      (** The ordinal position of the column in the table. *)
  precision : float;  (** Column precision. *)
  primary_key : bool option; [@option]
      (** Whether or not the column represents a primary key. *)
  scale : float;  (** Column scale. *)
}
[@@deriving yojson_of]
(** PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type google_datastream_stream__source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables = {
  table : string;  (** Table name. *)
  postgresql_columns :
    google_datastream_stream__source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the schema. *)

type google_datastream_stream__source_config__postgresql_source_config__include_objects__postgresql_schemas = {
  schema : string;  (** Database name. *)
  postgresql_tables :
    google_datastream_stream__source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    list;
}
[@@deriving yojson_of]
(** PostgreSQL schemas on the server *)

type google_datastream_stream__source_config__postgresql_source_config__include_objects = {
  postgresql_schemas :
    google_datastream_stream__source_config__postgresql_source_config__include_objects__postgresql_schemas
    list;
}
[@@deriving yojson_of]
(** PostgreSQL objects to retrieve from the source. *)

type google_datastream_stream__source_config__postgresql_source_config = {
  max_concurrent_backfill_tasks : float option; [@option]
      (** Maximum number of concurrent backfill tasks. The number should be non
negative. If not set (or set to 0), the system's default value will be used. *)
  publication : string;
      (** The name of the publication that includes the set of all tables
that are defined in the stream's include_objects. *)
  replication_slot : string;
      (** The name of the logical replication slot that's configured with
the pgoutput plugin. *)
  exclude_objects :
    google_datastream_stream__source_config__postgresql_source_config__exclude_objects
    list;
  include_objects :
    google_datastream_stream__source_config__postgresql_source_config__include_objects
    list;
}
[@@deriving yojson_of]
(** PostgreSQL data source configuration. *)

type google_datastream_stream__source_config = {
  source_connection_profile : string;
      (** Source connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name} *)
  mysql_source_config :
    google_datastream_stream__source_config__mysql_source_config list;
  oracle_source_config :
    google_datastream_stream__source_config__oracle_source_config
    list;
  postgresql_source_config :
    google_datastream_stream__source_config__postgresql_source_config
    list;
}
[@@deriving yojson_of]
(** Source connection profile configuration. *)

type google_datastream_stream__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_datastream_stream__timeouts *)

type google_datastream_stream = {
  customer_managed_encryption_key : string option; [@option]
      (** A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
will be encrypted using an internal Stream-specific encryption key provisioned through KMS. *)
  desired_state : string option; [@option]
      (** Desired state of the Stream. Set this field to 'RUNNING' to start the stream, and 'PAUSED' to pause the stream. *)
  display_name : string;  (** Display name. *)
  labels : (string * string) list option; [@option]
      (** Labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** The name of the location this stream is located in. *)
  stream_id : string;  (** The stream identifier. *)
  backfill_all : google_datastream_stream__backfill_all list;
  backfill_none : google_datastream_stream__backfill_none list;
  destination_config :
    google_datastream_stream__destination_config list;
  source_config : google_datastream_stream__source_config list;
  timeouts : google_datastream_stream__timeouts option;
}
[@@deriving yojson_of]
(** google_datastream_stream *)

let google_datastream_stream ?customer_managed_encryption_key
    ?desired_state ?labels ?timeouts ~display_name ~location
    ~stream_id ~backfill_all ~backfill_none ~destination_config
    ~source_config __resource_id =
  let __resource_type = "google_datastream_stream" in
  let __resource =
    {
      customer_managed_encryption_key;
      desired_state;
      display_name;
      labels;
      location;
      stream_id;
      backfill_all;
      backfill_none;
      destination_config;
      source_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_datastream_stream __resource);
  ()
