(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type arguments = {
  argument_kind : string prop option; [@option]
  data_type : string prop option; [@option]
  mode : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : arguments) -> ()

let yojson_of_arguments =
  (function
   | {
       argument_kind = v_argument_kind;
       data_type = v_data_type;
       mode = v_mode;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_argument_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "argument_kind", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : arguments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_arguments

[@@@deriving.end]

type remote_function_options = {
  connection : string prop option; [@option]
  endpoint : string prop option; [@option]
  max_batching_rows : string prop option; [@option]
  user_defined_context : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_function_options) -> ()

let yojson_of_remote_function_options =
  (function
   | {
       connection = v_connection;
       endpoint = v_endpoint;
       max_batching_rows = v_max_batching_rows;
       user_defined_context = v_user_defined_context;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_defined_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "user_defined_context", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_batching_rows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_batching_rows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : remote_function_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_function_options

[@@@deriving.end]

type spark_options = {
  archive_uris : string prop list option; [@option]
  connection : string prop option; [@option]
  container_image : string prop option; [@option]
  file_uris : string prop list option; [@option]
  jar_uris : string prop list option; [@option]
  main_class : string prop option; [@option]
  main_file_uri : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
  py_file_uris : string prop list option; [@option]
  runtime_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark_options) -> ()

let yojson_of_spark_options =
  (function
   | {
       archive_uris = v_archive_uris;
       connection = v_connection;
       container_image = v_container_image;
       file_uris = v_file_uris;
       jar_uris = v_jar_uris;
       main_class = v_main_class;
       main_file_uri = v_main_file_uri;
       properties = v_properties;
       py_file_uris = v_py_file_uris;
       runtime_version = v_runtime_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_runtime_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_py_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "py_file_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_main_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "main_file_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_main_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "main_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jar_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jar_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "file_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_image", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_archive_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "archive_uris", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spark_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark_options

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_bigquery_routine = {
  dataset_id : string prop;
  definition_body : string prop;
  description : string prop option; [@option]
  determinism_level : string prop option; [@option]
  id : string prop option; [@option]
  imported_libraries : string prop list option; [@option]
  language : string prop option; [@option]
  project : string prop option; [@option]
  return_table_type : string prop option; [@option]
  return_type : string prop option; [@option]
  routine_id : string prop;
  routine_type : string prop;
  arguments : arguments list;
  remote_function_options : remote_function_options list;
  spark_options : spark_options list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_routine) -> ()

let yojson_of_google_bigquery_routine =
  (function
   | {
       dataset_id = v_dataset_id;
       definition_body = v_definition_body;
       description = v_description;
       determinism_level = v_determinism_level;
       id = v_id;
       imported_libraries = v_imported_libraries;
       language = v_language;
       project = v_project;
       return_table_type = v_return_table_type;
       return_type = v_return_type;
       routine_id = v_routine_id;
       routine_type = v_routine_type;
       arguments = v_arguments;
       remote_function_options = v_remote_function_options;
       spark_options = v_spark_options;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spark_options v_spark_options
         in
         ("spark_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_remote_function_options
             v_remote_function_options
         in
         ("remote_function_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_arguments v_arguments in
         ("arguments", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_routine_type in
         ("routine_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_routine_id in
         ("routine_id", arg) :: bnds
       in
       let bnds =
         match v_return_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "return_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_return_table_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "return_table_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_imported_libraries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "imported_libraries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_determinism_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "determinism_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_definition_body
         in
         ("definition_body", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : google_bigquery_routine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_routine

[@@@deriving.end]

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
