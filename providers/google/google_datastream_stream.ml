(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string prop option; [@option]  (** Column collation. *)
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html *)
  nullable : bool prop option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float prop option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool prop option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables = {
  table : string prop;  (** Table name. *)
  mysql_columns :
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type backfill_all__mysql_excluded_objects__mysql_databases = {
  database : string prop;  (** Database name. *)
  mysql_tables :
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    list;
}
[@@deriving yojson_of]
(** MySQL databases on the server *)

type backfill_all__mysql_excluded_objects = {
  mysql_databases :
    backfill_all__mysql_excluded_objects__mysql_databases list;
}
[@@deriving yojson_of]
(** MySQL data source objects to avoid backfilling. *)

type backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The Oracle data type. Full data types list can be found here:
https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html *)
}
[@@deriving yojson_of]
(** Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables = {
  table : string prop;  (** Table name. *)
  oracle_columns :
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type backfill_all__oracle_excluded_objects__oracle_schemas = {
  schema : string prop;  (** Schema name. *)
  oracle_tables :
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    list;
}
[@@deriving yojson_of]
(** Oracle schemas/databases in the database server *)

type backfill_all__oracle_excluded_objects = {
  oracle_schemas :
    backfill_all__oracle_excluded_objects__oracle_schemas list;
}
[@@deriving yojson_of]
(** PostgreSQL data source objects to avoid backfilling. *)

type backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The PostgreSQL data type. Full data types list can be found here:
https://www.postgresql.org/docs/current/datatype.html *)
  nullable : bool prop option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float prop option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool prop option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables = {
  table : string prop;  (** Table name. *)
  postgresql_columns :
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the schema. *)

type backfill_all__postgresql_excluded_objects__postgresql_schemas = {
  schema : string prop;  (** Database name. *)
  postgresql_tables :
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    list;
}
[@@deriving yojson_of]
(** PostgreSQL schemas on the server *)

type backfill_all__postgresql_excluded_objects = {
  postgresql_schemas :
    backfill_all__postgresql_excluded_objects__postgresql_schemas
    list;
}
[@@deriving yojson_of]
(** PostgreSQL data source objects to avoid backfilling. *)

type backfill_all = {
  mysql_excluded_objects : backfill_all__mysql_excluded_objects list;
  oracle_excluded_objects :
    backfill_all__oracle_excluded_objects list;
  postgresql_excluded_objects :
    backfill_all__postgresql_excluded_objects list;
}
[@@deriving yojson_of]
(** Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded. *)

type backfill_none = unit [@@deriving yojson_of]

type destination_config__bigquery_destination_config__single_target_dataset = {
  dataset_id : string prop;
      (** Dataset ID in the format projects/{project}/datasets/{dataset_id} or
{project}:{dataset_id} *)
}
[@@deriving yojson_of]
(** A single target dataset to which all data will be streamed. *)

type destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template = {
  dataset_id_prefix : string prop option; [@option]
      (** If supplied, every created dataset will have its name prefixed by the provided value.
The prefix and name will be separated by an underscore. i.e. _. *)
  kms_key_name : string prop option; [@option]
      (** Describes the Cloud KMS encryption key that will be used to protect destination BigQuery
table. The BigQuery Service Account associated with your project requires access to this
encryption key. i.e. projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{cryptoKey}.
See https://cloud.google.com/bigquery/docs/customer-managed-encryption for more information. *)
  location : string prop;
      (** The geographic location where the dataset should reside.
See https://cloud.google.com/bigquery/docs/locations for supported locations. *)
}
[@@deriving yojson_of]
(** Dataset template used for dynamic dataset creation. *)

type destination_config__bigquery_destination_config__source_hierarchy_datasets = {
  dataset_template :
    destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    list;
}
[@@deriving yojson_of]
(** Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy. *)

type destination_config__bigquery_destination_config = {
  data_freshness : string prop option; [@option]
      (** The guaranteed data freshness (in seconds) when querying tables created by the stream.
Editing this field will only affect new tables created in the future, but existing tables
will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. Defaults to 900s. *)
  single_target_dataset :
    destination_config__bigquery_destination_config__single_target_dataset
    list;
  source_hierarchy_datasets :
    destination_config__bigquery_destination_config__source_hierarchy_datasets
    list;
}
[@@deriving yojson_of]
(** A configuration for how data should be loaded to Cloud Storage. *)

type destination_config__gcs_destination_config__avro_file_format =
  unit
[@@deriving yojson_of]

type destination_config__gcs_destination_config__json_file_format = {
  compression : string prop option; [@option]
      (** Compression of the loaded JSON file. Possible values: [NO_COMPRESSION, GZIP] *)
  schema_file_format : string prop option; [@option]
      (** The schema file format along JSON data files. Possible values: [NO_SCHEMA_FILE, AVRO_SCHEMA_FILE] *)
}
[@@deriving yojson_of]
(** JSON file format configuration. *)

type destination_config__gcs_destination_config = {
  file_rotation_interval : string prop option; [@option]
      (** The maximum duration for which new events are added before a file is closed and a new file is created.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. Defaults to 900s. *)
  file_rotation_mb : float prop option; [@option]
      (** The maximum file size to be saved in the bucket. *)
  path : string prop option; [@option]
      (** Path inside the Cloud Storage bucket to write data to. *)
  avro_file_format :
    destination_config__gcs_destination_config__avro_file_format list;
  json_file_format :
    destination_config__gcs_destination_config__json_file_format list;
}
[@@deriving yojson_of]
(** A configuration for how data should be loaded to Cloud Storage. *)

type destination_config = {
  destination_connection_profile : string prop;
      (** Destination connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name} *)
  bigquery_destination_config :
    destination_config__bigquery_destination_config list;
  gcs_destination_config :
    destination_config__gcs_destination_config list;
}
[@@deriving yojson_of]
(** Destination connection profile configuration. *)

type source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string prop option; [@option]  (** Column collation. *)
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html *)
  nullable : bool prop option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float prop option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool prop option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables = {
  table : string prop;  (** Table name. *)
  mysql_columns :
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type source_config__mysql_source_config__exclude_objects__mysql_databases = {
  database : string prop;  (** Database name. *)
  mysql_tables :
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    list;
}
[@@deriving yojson_of]
(** MySQL databases on the server *)

type source_config__mysql_source_config__exclude_objects = {
  mysql_databases :
    source_config__mysql_source_config__exclude_objects__mysql_databases
    list;
}
[@@deriving yojson_of]
(** MySQL objects to exclude from the stream. *)

type source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string prop option; [@option]  (** Column collation. *)
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The MySQL data type. Full data types list can be found here:
https://dev.mysql.com/doc/refman/8.0/en/data-types.html *)
  nullable : bool prop option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float prop option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool prop option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables = {
  table : string prop;  (** Table name. *)
  mysql_columns :
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type source_config__mysql_source_config__include_objects__mysql_databases = {
  database : string prop;  (** Database name. *)
  mysql_tables :
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    list;
}
[@@deriving yojson_of]
(** MySQL databases on the server *)

type source_config__mysql_source_config__include_objects = {
  mysql_databases :
    source_config__mysql_source_config__include_objects__mysql_databases
    list;
}
[@@deriving yojson_of]
(** MySQL objects to retrieve from the source. *)

type source_config__mysql_source_config = {
  max_concurrent_backfill_tasks : float prop option; [@option]
      (** Maximum number of concurrent backfill tasks. The number should be non negative.
If not set (or set to 0), the system's default value will be used. *)
  max_concurrent_cdc_tasks : float prop option; [@option]
      (** Maximum number of concurrent CDC tasks. The number should be non negative.
If not set (or set to 0), the system's default value will be used. *)
  exclude_objects :
    source_config__mysql_source_config__exclude_objects list;
  include_objects :
    source_config__mysql_source_config__include_objects list;
}
[@@deriving yojson_of]
(** MySQL data source configuration. *)

type source_config__oracle_source_config__drop_large_objects = unit
[@@deriving yojson_of]

type source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The Oracle data type. Full data types list can be found here:
https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html *)
}
[@@deriving yojson_of]
(** Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables = {
  table : string prop;  (** Table name. *)
  oracle_columns :
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type source_config__oracle_source_config__exclude_objects__oracle_schemas = {
  schema : string prop;  (** Schema name. *)
  oracle_tables :
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    list;
}
[@@deriving yojson_of]
(** Oracle schemas/databases in the database server *)

type source_config__oracle_source_config__exclude_objects = {
  oracle_schemas :
    source_config__oracle_source_config__exclude_objects__oracle_schemas
    list;
}
[@@deriving yojson_of]
(** Oracle objects to exclude from the stream. *)

type source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The Oracle data type. Full data types list can be found here:
https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html *)
}
[@@deriving yojson_of]
(** Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables = {
  table : string prop;  (** Table name. *)
  oracle_columns :
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the database. *)

type source_config__oracle_source_config__include_objects__oracle_schemas = {
  schema : string prop;  (** Schema name. *)
  oracle_tables :
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    list;
}
[@@deriving yojson_of]
(** Oracle schemas/databases in the database server *)

type source_config__oracle_source_config__include_objects = {
  oracle_schemas :
    source_config__oracle_source_config__include_objects__oracle_schemas
    list;
}
[@@deriving yojson_of]
(** Oracle objects to retrieve from the source. *)

type source_config__oracle_source_config__stream_large_objects = unit
[@@deriving yojson_of]

type source_config__oracle_source_config = {
  max_concurrent_backfill_tasks : float prop option; [@option]
      (** Maximum number of concurrent backfill tasks. The number should be non negative.
If not set (or set to 0), the system's default value will be used. *)
  max_concurrent_cdc_tasks : float prop option; [@option]
      (** Maximum number of concurrent CDC tasks. The number should be non negative.
If not set (or set to 0), the system's default value will be used. *)
  drop_large_objects :
    source_config__oracle_source_config__drop_large_objects list;
  exclude_objects :
    source_config__oracle_source_config__exclude_objects list;
  include_objects :
    source_config__oracle_source_config__include_objects list;
  stream_large_objects :
    source_config__oracle_source_config__stream_large_objects list;
}
[@@deriving yojson_of]
(** MySQL data source configuration. *)

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The PostgreSQL data type. Full data types list can be found here:
https://www.postgresql.org/docs/current/datatype.html *)
  nullable : bool prop option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float prop option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool prop option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables = {
  table : string prop;  (** Table name. *)
  postgresql_columns :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the schema. *)

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas = {
  schema : string prop;  (** Database name. *)
  postgresql_tables :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    list;
}
[@@deriving yojson_of]
(** PostgreSQL schemas on the server *)

type source_config__postgresql_source_config__exclude_objects = {
  postgresql_schemas :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    list;
}
[@@deriving yojson_of]
(** PostgreSQL objects to exclude from the stream. *)

type source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string prop option; [@option]  (** Column name. *)
  data_type : string prop option; [@option]
      (** The PostgreSQL data type. Full data types list can be found here:
https://www.postgresql.org/docs/current/datatype.html *)
  nullable : bool prop option; [@option]
      (** Whether or not the column can accept a null value. *)
  ordinal_position : float prop option; [@option]
      (** The ordinal position of the column in the table. *)
  primary_key : bool prop option; [@option]
      (** Whether or not the column represents a primary key. *)
}
[@@deriving yojson_of]
(** PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything. *)

type source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables = {
  table : string prop;  (** Table name. *)
  postgresql_columns :
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
}
[@@deriving yojson_of]
(** Tables in the schema. *)

type source_config__postgresql_source_config__include_objects__postgresql_schemas = {
  schema : string prop;  (** Database name. *)
  postgresql_tables :
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    list;
}
[@@deriving yojson_of]
(** PostgreSQL schemas on the server *)

type source_config__postgresql_source_config__include_objects = {
  postgresql_schemas :
    source_config__postgresql_source_config__include_objects__postgresql_schemas
    list;
}
[@@deriving yojson_of]
(** PostgreSQL objects to retrieve from the source. *)

type source_config__postgresql_source_config = {
  max_concurrent_backfill_tasks : float prop option; [@option]
      (** Maximum number of concurrent backfill tasks. The number should be non
negative. If not set (or set to 0), the system's default value will be used. *)
  publication : string prop;
      (** The name of the publication that includes the set of all tables
that are defined in the stream's include_objects. *)
  replication_slot : string prop;
      (** The name of the logical replication slot that's configured with
the pgoutput plugin. *)
  exclude_objects :
    source_config__postgresql_source_config__exclude_objects list;
  include_objects :
    source_config__postgresql_source_config__include_objects list;
}
[@@deriving yojson_of]
(** PostgreSQL data source configuration. *)

type source_config = {
  source_connection_profile : string prop;
      (** Source connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name} *)
  mysql_source_config : source_config__mysql_source_config list;
  oracle_source_config : source_config__oracle_source_config list;
  postgresql_source_config :
    source_config__postgresql_source_config list;
}
[@@deriving yojson_of]
(** Source connection profile configuration. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_datastream_stream = {
  customer_managed_encryption_key : string prop option; [@option]
      (** A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
will be encrypted using an internal Stream-specific encryption key provisioned through KMS. *)
  desired_state : string prop option; [@option]
      (** Desired state of the Stream. Set this field to 'RUNNING' to start the stream, and 'PAUSED' to pause the stream. *)
  display_name : string prop;  (** Display name. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The name of the location this stream is located in. *)
  project : string prop option; [@option]  (** project *)
  stream_id : string prop;  (** The stream identifier. *)
  backfill_all : backfill_all list;
  backfill_none : backfill_none list;
  destination_config : destination_config list;
  source_config : source_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_datastream_stream *)

let backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    ?collation ?column ?data_type ?nullable ?ordinal_position
    ?primary_key () :
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    =
  {
    collation;
    column;
    data_type;
    nullable;
    ordinal_position;
    primary_key;
  }

let backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    ~table ~mysql_columns () :
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    =
  { table; mysql_columns }

let backfill_all__mysql_excluded_objects__mysql_databases ~database
    ~mysql_tables () :
    backfill_all__mysql_excluded_objects__mysql_databases =
  { database; mysql_tables }

let backfill_all__mysql_excluded_objects ~mysql_databases () :
    backfill_all__mysql_excluded_objects =
  { mysql_databases }

let backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    ?column ?data_type () :
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  { column; data_type }

let backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    ~table ~oracle_columns () :
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    =
  { table; oracle_columns }

let backfill_all__oracle_excluded_objects__oracle_schemas ~schema
    ~oracle_tables () :
    backfill_all__oracle_excluded_objects__oracle_schemas =
  { schema; oracle_tables }

let backfill_all__oracle_excluded_objects ~oracle_schemas () :
    backfill_all__oracle_excluded_objects =
  { oracle_schemas }

let backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    ?column ?data_type ?nullable ?ordinal_position ?primary_key () :
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  { column; data_type; nullable; ordinal_position; primary_key }

let backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    ~table ~postgresql_columns () :
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    =
  { table; postgresql_columns }

let backfill_all__postgresql_excluded_objects__postgresql_schemas
    ~schema ~postgresql_tables () :
    backfill_all__postgresql_excluded_objects__postgresql_schemas =
  { schema; postgresql_tables }

let backfill_all__postgresql_excluded_objects ~postgresql_schemas ()
    : backfill_all__postgresql_excluded_objects =
  { postgresql_schemas }

let backfill_all ~mysql_excluded_objects ~oracle_excluded_objects
    ~postgresql_excluded_objects () : backfill_all =
  {
    mysql_excluded_objects;
    oracle_excluded_objects;
    postgresql_excluded_objects;
  }

let backfill_none () = ()

let destination_config__bigquery_destination_config__single_target_dataset
    ~dataset_id () :
    destination_config__bigquery_destination_config__single_target_dataset
    =
  { dataset_id }

let destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    ?dataset_id_prefix ?kms_key_name ~location () :
    destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    =
  { dataset_id_prefix; kms_key_name; location }

let destination_config__bigquery_destination_config__source_hierarchy_datasets
    ~dataset_template () :
    destination_config__bigquery_destination_config__source_hierarchy_datasets
    =
  { dataset_template }

let destination_config__bigquery_destination_config ?data_freshness
    ~single_target_dataset ~source_hierarchy_datasets () :
    destination_config__bigquery_destination_config =
  {
    data_freshness;
    single_target_dataset;
    source_hierarchy_datasets;
  }

let destination_config__gcs_destination_config__avro_file_format () =
  ()

let destination_config__gcs_destination_config__json_file_format
    ?compression ?schema_file_format () :
    destination_config__gcs_destination_config__json_file_format =
  { compression; schema_file_format }

let destination_config__gcs_destination_config
    ?file_rotation_interval ?file_rotation_mb ?path ~avro_file_format
    ~json_file_format () : destination_config__gcs_destination_config
    =
  {
    file_rotation_interval;
    file_rotation_mb;
    path;
    avro_file_format;
    json_file_format;
  }

let destination_config ~destination_connection_profile
    ~bigquery_destination_config ~gcs_destination_config () :
    destination_config =
  {
    destination_connection_profile;
    bigquery_destination_config;
    gcs_destination_config;
  }

let source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    ?collation ?column ?data_type ?nullable ?ordinal_position
    ?primary_key () :
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    =
  {
    collation;
    column;
    data_type;
    nullable;
    ordinal_position;
    primary_key;
  }

let source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    ~table ~mysql_columns () :
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    =
  { table; mysql_columns }

let source_config__mysql_source_config__exclude_objects__mysql_databases
    ~database ~mysql_tables () :
    source_config__mysql_source_config__exclude_objects__mysql_databases
    =
  { database; mysql_tables }

let source_config__mysql_source_config__exclude_objects
    ~mysql_databases () :
    source_config__mysql_source_config__exclude_objects =
  { mysql_databases }

let source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    ?collation ?column ?data_type ?nullable ?ordinal_position
    ?primary_key () :
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    =
  {
    collation;
    column;
    data_type;
    nullable;
    ordinal_position;
    primary_key;
  }

let source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    ~table ~mysql_columns () :
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    =
  { table; mysql_columns }

let source_config__mysql_source_config__include_objects__mysql_databases
    ~database ~mysql_tables () :
    source_config__mysql_source_config__include_objects__mysql_databases
    =
  { database; mysql_tables }

let source_config__mysql_source_config__include_objects
    ~mysql_databases () :
    source_config__mysql_source_config__include_objects =
  { mysql_databases }

let source_config__mysql_source_config ?max_concurrent_backfill_tasks
    ?max_concurrent_cdc_tasks ~exclude_objects ~include_objects () :
    source_config__mysql_source_config =
  {
    max_concurrent_backfill_tasks;
    max_concurrent_cdc_tasks;
    exclude_objects;
    include_objects;
  }

let source_config__oracle_source_config__drop_large_objects () = ()

let source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    ?column ?data_type () :
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  { column; data_type }

let source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    ~table ~oracle_columns () :
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    =
  { table; oracle_columns }

let source_config__oracle_source_config__exclude_objects__oracle_schemas
    ~schema ~oracle_tables () :
    source_config__oracle_source_config__exclude_objects__oracle_schemas
    =
  { schema; oracle_tables }

let source_config__oracle_source_config__exclude_objects
    ~oracle_schemas () :
    source_config__oracle_source_config__exclude_objects =
  { oracle_schemas }

let source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    ?column ?data_type () :
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  { column; data_type }

let source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    ~table ~oracle_columns () :
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    =
  { table; oracle_columns }

let source_config__oracle_source_config__include_objects__oracle_schemas
    ~schema ~oracle_tables () :
    source_config__oracle_source_config__include_objects__oracle_schemas
    =
  { schema; oracle_tables }

let source_config__oracle_source_config__include_objects
    ~oracle_schemas () :
    source_config__oracle_source_config__include_objects =
  { oracle_schemas }

let source_config__oracle_source_config__stream_large_objects () = ()

let source_config__oracle_source_config
    ?max_concurrent_backfill_tasks ?max_concurrent_cdc_tasks
    ~drop_large_objects ~exclude_objects ~include_objects
    ~stream_large_objects () : source_config__oracle_source_config =
  {
    max_concurrent_backfill_tasks;
    max_concurrent_cdc_tasks;
    drop_large_objects;
    exclude_objects;
    include_objects;
    stream_large_objects;
  }

let source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    ?column ?data_type ?nullable ?ordinal_position ?primary_key () :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  { column; data_type; nullable; ordinal_position; primary_key }

let source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    ~table ~postgresql_columns () :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    =
  { table; postgresql_columns }

let source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    ~schema ~postgresql_tables () :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    =
  { schema; postgresql_tables }

let source_config__postgresql_source_config__exclude_objects
    ~postgresql_schemas () :
    source_config__postgresql_source_config__exclude_objects =
  { postgresql_schemas }

let source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    ?column ?data_type ?nullable ?ordinal_position ?primary_key () :
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  { column; data_type; nullable; ordinal_position; primary_key }

let source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    ~table ~postgresql_columns () :
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    =
  { table; postgresql_columns }

let source_config__postgresql_source_config__include_objects__postgresql_schemas
    ~schema ~postgresql_tables () :
    source_config__postgresql_source_config__include_objects__postgresql_schemas
    =
  { schema; postgresql_tables }

let source_config__postgresql_source_config__include_objects
    ~postgresql_schemas () :
    source_config__postgresql_source_config__include_objects =
  { postgresql_schemas }

let source_config__postgresql_source_config
    ?max_concurrent_backfill_tasks ~publication ~replication_slot
    ~exclude_objects ~include_objects () :
    source_config__postgresql_source_config =
  {
    max_concurrent_backfill_tasks;
    publication;
    replication_slot;
    exclude_objects;
    include_objects;
  }

let source_config ~source_connection_profile ~mysql_source_config
    ~oracle_source_config ~postgresql_source_config () :
    source_config =
  {
    source_connection_profile;
    mysql_source_config;
    oracle_source_config;
    postgresql_source_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_datastream_stream ?customer_managed_encryption_key
    ?desired_state ?id ?labels ?project ?timeouts ~display_name
    ~location ~stream_id ~backfill_all ~backfill_none
    ~destination_config ~source_config () : google_datastream_stream
    =
  {
    customer_managed_encryption_key;
    desired_state;
    display_name;
    id;
    labels;
    location;
    project;
    stream_id;
    backfill_all;
    backfill_none;
    destination_config;
    source_config;
    timeouts;
  }

type t = {
  customer_managed_encryption_key : string prop;
  desired_state : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  stream_id : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?customer_managed_encryption_key ?desired_state ?id ?labels
    ?project ?timeouts ~display_name ~location ~stream_id
    ~backfill_all ~backfill_none ~destination_config ~source_config
    __id =
  let __type = "google_datastream_stream" in
  let __attrs =
    ({
       customer_managed_encryption_key =
         Prop.computed __type __id "customer_managed_encryption_key";
       desired_state = Prop.computed __type __id "desired_state";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       stream_id = Prop.computed __type __id "stream_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_datastream_stream
        (google_datastream_stream ?customer_managed_encryption_key
           ?desired_state ?id ?labels ?project ?timeouts
           ~display_name ~location ~stream_id ~backfill_all
           ~backfill_none ~destination_config ~source_config ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_managed_encryption_key
    ?desired_state ?id ?labels ?project ?timeouts ~display_name
    ~location ~stream_id ~backfill_all ~backfill_none
    ~destination_config ~source_config __id =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_encryption_key ?desired_state ?id ?labels
      ?project ?timeouts ~display_name ~location ~stream_id
      ~backfill_all ~backfill_none ~destination_config ~source_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
