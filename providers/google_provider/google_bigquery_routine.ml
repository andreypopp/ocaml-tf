(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_bigquery_routine__arguments = {
  argument_kind : string option; [@option]
      (** Defaults to FIXED_TYPE. Default value: FIXED_TYPE Possible values: [FIXED_TYPE, ANY_TYPE] *)
  data_type : string option; [@option]
      (** A JSON schema for the data type. Required unless argumentKind = ANY_TYPE.
~>**NOTE**: Because this field expects a JSON string, any changes to the string
will create a diff, even if the JSON itself hasn't changed. If the API returns
a different value for the same schema, e.g. it switched the order of values
or replaced STRUCT field type with RECORD field type, we currently cannot
suppress the recurring diff this causes. As a workaround, we recommend using
the schema as returned by the API. *)
  mode : string option; [@option]
      (** Specifies whether the argument is input or output. Can be set for procedures only. Possible values: [IN, OUT, INOUT] *)
  name : string option; [@option]
      (** The name of this argument. Can be absent for function return argument. *)
}
[@@deriving yojson_of]
(** Input/output argument of a function or a stored procedure. *)

type google_bigquery_routine__remote_function_options = {
  connection : string option; [@option]
      (** Fully qualified name of the user-provided connection object which holds
the authentication information to send requests to the remote service.
Format: projects/{projectId}/locations/{locationId}/connections/{connectionId} *)
  endpoint : string option; [@option]
      (** Endpoint of the user-provided remote service, e.g.
'https://us-east1-my_gcf_project.cloudfunctions.net/remote_add' *)
  max_batching_rows : string option; [@option]
      (** Max number of rows in each batch sent to the remote service. If absent or if 0,
BigQuery dynamically decides the number of rows in a batch. *)
  user_defined_context : (string * string) list option; [@option]
      (** User-defined context as a set of key/value pairs, which will be sent as function
invocation context together with batched arguments in the requests to the remote
service. The total number of bytes of keys and values must be less than 8KB.

An object containing a list of key: value pairs. Example:
'{ name: wrench, mass: 1.3kg, count: 3 }'. *)
}
[@@deriving yojson_of]
(** Remote function specific options. *)

type google_bigquery_routine__spark_options = {
  archive_uris : string list option; [@option]
      (** Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see Apache Spark. *)
  connection : string option; [@option]
      (** Fully qualified name of the user-provided Spark connection object.
Format: projects/{projectId}/locations/{locationId}/connections/{connectionId} *)
  container_image : string option; [@option]
      (** Custom container image for the runtime environment. *)
  file_uris : string list option; [@option]
      (** Files to be placed in the working directory of each executor. For more information about Apache Spark, see Apache Spark. *)
  jar_uris : string list option; [@option]
      (** JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see Apache Spark. *)
  main_class : string option; [@option]
      (** The fully qualified name of a class in jarUris, for example, com.example.wordcount.
Exactly one of mainClass and main_jar_uri field should be set for Java/Scala language type. *)
  main_file_uri : string option; [@option]
      (** The main file/jar URI of the Spark application.
Exactly one of the definitionBody field and the mainFileUri field must be set for Python.
Exactly one of mainClass and mainFileUri field should be set for Java/Scala language type. *)
  properties : (string * string) list option; [@option]
      (** Configuration properties as a set of key/value pairs, which will be passed on to the Spark application.
For more information, see Apache Spark and the procedure option list.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  py_file_uris : string list option; [@option]
      (** Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: .py, .egg, and .zip. For more information about Apache Spark, see Apache Spark. *)
  runtime_version : string option; [@option]
      (** Runtime version. If not specified, the default runtime version is used. *)
}
[@@deriving yojson_of]
(** Optional. If language is one of PYTHON, JAVA, SCALA, this field stores the options for spark stored procedure. *)

type google_bigquery_routine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_routine__timeouts *)

type google_bigquery_routine = {
  dataset_id : string;
      (** The ID of the dataset containing this routine *)
  definition_body : string;
      (** The body of the routine. For functions, this is the expression in the AS clause.
If language=SQL, it is the substring inside (but excluding) the parentheses. *)
  description : string option; [@option]
      (** The description of the routine if defined. *)
  determinism_level : string option; [@option]
      (** The determinism level of the JavaScript UDF if defined. Possible values: [DETERMINISM_LEVEL_UNSPECIFIED, DETERMINISTIC, NOT_DETERMINISTIC] *)
  imported_libraries : string list option; [@option]
      (** Optional. If language = JAVASCRIPT, this field stores the path of the
imported JAVASCRIPT libraries. *)
  language : string option; [@option]
      (** The language of the routine. Possible values: [SQL, JAVASCRIPT, PYTHON, JAVA, SCALA] *)
  return_table_type : string option; [@option]
      (** Optional. Can be set only if routineType = TABLE_VALUED_FUNCTION.

If absent, the return table type is inferred from definitionBody at query time in each query
that references this routine. If present, then the columns in the evaluated table result will
be cast to match the column types specificed in return table type, at query time. *)
  return_type : string option; [@option]
      (** A JSON schema for the return type. Optional if language = SQL; required otherwise.
If absent, the return type is inferred from definitionBody at query time in each query
that references this routine. If present, then the evaluated result will be cast to
the specified returned type at query time. ~>**NOTE**: Because this field expects a JSON
string, any changes to the string will create a diff, even if the JSON itself hasn't
changed. If the API returns a different value for the same schema, e.g. it switche
d the order of values or replaced STRUCT field type with RECORD field type, we currently
cannot suppress the recurring diff this causes. As a workaround, we recommend using
the schema as returned by the API. *)
  routine_id : string;
      (** The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters. *)
  routine_type : string;
      (** The type of routine. Possible values: [SCALAR_FUNCTION, PROCEDURE, TABLE_VALUED_FUNCTION] *)
  arguments : google_bigquery_routine__arguments list;
  remote_function_options :
    google_bigquery_routine__remote_function_options list;
  spark_options : google_bigquery_routine__spark_options list;
  timeouts : google_bigquery_routine__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_routine *)

let google_bigquery_routine ?description ?determinism_level
    ?imported_libraries ?language ?return_table_type ?return_type
    ?timeouts ~dataset_id ~definition_body ~routine_id ~routine_type
    ~arguments ~remote_function_options ~spark_options __resource_id
    =
  let __resource_type = "google_bigquery_routine" in
  let __resource =
    {
      dataset_id;
      definition_body;
      description;
      determinism_level;
      imported_libraries;
      language;
      return_table_type;
      return_type;
      routine_id;
      routine_type;
      arguments;
      remote_function_options;
      spark_options;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_routine __resource);
  ()
