(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type arguments = {
  argument_kind : string prop option; [@option]
      (** Defaults to FIXED_TYPE. Default value: FIXED_TYPE Possible values: [FIXED_TYPE, ANY_TYPE] *)
  data_type : string prop option; [@option]
      (** A JSON schema for the data type. Required unless argumentKind = ANY_TYPE.
~>**NOTE**: Because this field expects a JSON string, any changes to the string
will create a diff, even if the JSON itself hasn't changed. If the API returns
a different value for the same schema, e.g. it switched the order of values
or replaced STRUCT field type with RECORD field type, we currently cannot
suppress the recurring diff this causes. As a workaround, we recommend using
the schema as returned by the API. *)
  mode : string prop option; [@option]
      (** Specifies whether the argument is input or output. Can be set for procedures only. Possible values: [IN, OUT, INOUT] *)
  name : string prop option; [@option]
      (** The name of this argument. Can be absent for function return argument. *)
}
[@@deriving yojson_of]
(** Input/output argument of a function or a stored procedure. *)

type remote_function_options = {
  connection : string prop option; [@option]
      (** Fully qualified name of the user-provided connection object which holds
the authentication information to send requests to the remote service.
Format: projects/{projectId}/locations/{locationId}/connections/{connectionId} *)
  endpoint : string prop option; [@option]
      (** Endpoint of the user-provided remote service, e.g.
'https://us-east1-my_gcf_project.cloudfunctions.net/remote_add' *)
  max_batching_rows : string prop option; [@option]
      (** Max number of rows in each batch sent to the remote service. If absent or if 0,
BigQuery dynamically decides the number of rows in a batch. *)
  user_defined_context : (string * string prop) list option; [@option]
      (** User-defined context as a set of key/value pairs, which will be sent as function
invocation context together with batched arguments in the requests to the remote
service. The total number of bytes of keys and values must be less than 8KB.

An object containing a list of key: value pairs. Example:
'{ name: wrench, mass: 1.3kg, count: 3 }'. *)
}
[@@deriving yojson_of]
(** Remote function specific options. *)

type spark_options = {
  archive_uris : string prop list option; [@option]
      (** Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see Apache Spark. *)
  connection : string prop option; [@option]
      (** Fully qualified name of the user-provided Spark connection object.
Format: projects/{projectId}/locations/{locationId}/connections/{connectionId} *)
  container_image : string prop option; [@option]
      (** Custom container image for the runtime environment. *)
  file_uris : string prop list option; [@option]
      (** Files to be placed in the working directory of each executor. For more information about Apache Spark, see Apache Spark. *)
  jar_uris : string prop list option; [@option]
      (** JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see Apache Spark. *)
  main_class : string prop option; [@option]
      (** The fully qualified name of a class in jarUris, for example, com.example.wordcount.
Exactly one of mainClass and main_jar_uri field should be set for Java/Scala language type. *)
  main_file_uri : string prop option; [@option]
      (** The main file/jar URI of the Spark application.
Exactly one of the definitionBody field and the mainFileUri field must be set for Python.
Exactly one of mainClass and mainFileUri field should be set for Java/Scala language type. *)
  properties : (string * string prop) list option; [@option]
      (** Configuration properties as a set of key/value pairs, which will be passed on to the Spark application.
For more information, see Apache Spark and the procedure option list.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  py_file_uris : string prop list option; [@option]
      (** Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: .py, .egg, and .zip. For more information about Apache Spark, see Apache Spark. *)
  runtime_version : string prop option; [@option]
      (** Runtime version. If not specified, the default runtime version is used. *)
}
[@@deriving yojson_of]
(** Optional. If language is one of PYTHON, JAVA, SCALA, this field stores the options for spark stored procedure. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_bigquery_routine = {
  dataset_id : string prop;
      (** The ID of the dataset containing this routine *)
  definition_body : string prop;
      (** The body of the routine. For functions, this is the expression in the AS clause.
If language=SQL, it is the substring inside (but excluding) the parentheses. *)
  description : string prop option; [@option]
      (** The description of the routine if defined. *)
  determinism_level : string prop option; [@option]
      (** The determinism level of the JavaScript UDF if defined. Possible values: [DETERMINISM_LEVEL_UNSPECIFIED, DETERMINISTIC, NOT_DETERMINISTIC] *)
  id : string prop option; [@option]  (** id *)
  imported_libraries : string prop list option; [@option]
      (** Optional. If language = JAVASCRIPT, this field stores the path of the
imported JAVASCRIPT libraries. *)
  language : string prop option; [@option]
      (** The language of the routine. Possible values: [SQL, JAVASCRIPT, PYTHON, JAVA, SCALA] *)
  project : string prop option; [@option]  (** project *)
  return_table_type : string prop option; [@option]
      (** Optional. Can be set only if routineType = TABLE_VALUED_FUNCTION.

If absent, the return table type is inferred from definitionBody at query time in each query
that references this routine. If present, then the columns in the evaluated table result will
be cast to match the column types specificed in return table type, at query time. *)
  return_type : string prop option; [@option]
      (** A JSON schema for the return type. Optional if language = SQL; required otherwise.
If absent, the return type is inferred from definitionBody at query time in each query
that references this routine. If present, then the evaluated result will be cast to
the specified returned type at query time. ~>**NOTE**: Because this field expects a JSON
string, any changes to the string will create a diff, even if the JSON itself hasn't
changed. If the API returns a different value for the same schema, e.g. it switche
d the order of values or replaced STRUCT field type with RECORD field type, we currently
cannot suppress the recurring diff this causes. As a workaround, we recommend using
the schema as returned by the API. *)
  routine_id : string prop;
      (** The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters. *)
  routine_type : string prop;
      (** The type of routine. Possible values: [SCALAR_FUNCTION, PROCEDURE, TABLE_VALUED_FUNCTION] *)
  arguments : arguments list;
  remote_function_options : remote_function_options list;
  spark_options : spark_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_routine *)

let arguments ?argument_kind ?data_type ?mode ?name () : arguments =
  { argument_kind; data_type; mode; name }

let remote_function_options ?connection ?endpoint ?max_batching_rows
    ?user_defined_context () : remote_function_options =
  { connection; endpoint; max_batching_rows; user_defined_context }

let spark_options ?archive_uris ?connection ?container_image
    ?file_uris ?jar_uris ?main_class ?main_file_uri ?properties
    ?py_file_uris ?runtime_version () : spark_options =
  {
    archive_uris;
    connection;
    container_image;
    file_uris;
    jar_uris;
    main_class;
    main_file_uri;
    properties;
    py_file_uris;
    runtime_version;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_routine ?description ?determinism_level ?id
    ?imported_libraries ?language ?project ?return_table_type
    ?return_type ?timeouts ~dataset_id ~definition_body ~routine_id
    ~routine_type ~arguments ~remote_function_options ~spark_options
    () : google_bigquery_routine =
  {
    dataset_id;
    definition_body;
    description;
    determinism_level;
    id;
    imported_libraries;
    language;
    project;
    return_table_type;
    return_type;
    routine_id;
    routine_type;
    arguments;
    remote_function_options;
    spark_options;
    timeouts;
  }

type t = {
  creation_time : float prop;
  dataset_id : string prop;
  definition_body : string prop;
  description : string prop;
  determinism_level : string prop;
  id : string prop;
  imported_libraries : string list prop;
  language : string prop;
  last_modified_time : float prop;
  project : string prop;
  return_table_type : string prop;
  return_type : string prop;
  routine_id : string prop;
  routine_type : string prop;
}

let make ?description ?determinism_level ?id ?imported_libraries
    ?language ?project ?return_table_type ?return_type ?timeouts
    ~dataset_id ~definition_body ~routine_id ~routine_type ~arguments
    ~remote_function_options ~spark_options __id =
  let __type = "google_bigquery_routine" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       dataset_id = Prop.computed __type __id "dataset_id";
       definition_body = Prop.computed __type __id "definition_body";
       description = Prop.computed __type __id "description";
       determinism_level =
         Prop.computed __type __id "determinism_level";
       id = Prop.computed __type __id "id";
       imported_libraries =
         Prop.computed __type __id "imported_libraries";
       language = Prop.computed __type __id "language";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       project = Prop.computed __type __id "project";
       return_table_type =
         Prop.computed __type __id "return_table_type";
       return_type = Prop.computed __type __id "return_type";
       routine_id = Prop.computed __type __id "routine_id";
       routine_type = Prop.computed __type __id "routine_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_routine
        (google_bigquery_routine ?description ?determinism_level ?id
           ?imported_libraries ?language ?project ?return_table_type
           ?return_type ?timeouts ~dataset_id ~definition_body
           ~routine_id ~routine_type ~arguments
           ~remote_function_options ~spark_options ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?determinism_level ?id
    ?imported_libraries ?language ?project ?return_table_type
    ?return_type ?timeouts ~dataset_id ~definition_body ~routine_id
    ~routine_type ~arguments ~remote_function_options ~spark_options
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?determinism_level ?id ?imported_libraries
      ?language ?project ?return_table_type ?return_type ?timeouts
      ~dataset_id ~definition_body ~routine_id ~routine_type
      ~arguments ~remote_function_options ~spark_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
