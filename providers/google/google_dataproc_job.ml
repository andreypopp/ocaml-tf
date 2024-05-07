(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hadoop_config__logging_config = {
  driver_log_levels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hadoop_config__logging_config) -> ()

let yojson_of_hadoop_config__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_driver_log_levels
         in
         ("driver_log_levels", arg) :: bnds
       in
       `Assoc bnds
    : hadoop_config__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hadoop_config__logging_config

[@@@deriving.end]

type hadoop_config = {
  archive_uris : string prop list option; [@option]
  args : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  jar_file_uris : string prop list option; [@option]
  main_class : string prop option; [@option]
  main_jar_file_uri : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
  logging_config : hadoop_config__logging_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hadoop_config) -> ()

let yojson_of_hadoop_config =
  (function
   | {
       archive_uris = v_archive_uris;
       args = v_args;
       file_uris = v_file_uris;
       jar_file_uris = v_jar_file_uris;
       main_class = v_main_class;
       main_jar_file_uri = v_main_jar_file_uri;
       properties = v_properties;
       logging_config = v_logging_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hadoop_config__logging_config
             v_logging_config
         in
         ("logging_config", arg) :: bnds
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
         match v_main_jar_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "main_jar_file_uri", arg in
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
         match v_jar_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jar_file_uris", arg in
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
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
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
    : hadoop_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hadoop_config

[@@@deriving.end]

type hive_config = {
  continue_on_failure : bool prop option; [@option]
  jar_file_uris : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
  query_file_uri : string prop option; [@option]
  query_list : string prop list option; [@option]
  script_variables : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_config) -> ()

let yojson_of_hive_config =
  (function
   | {
       continue_on_failure = v_continue_on_failure;
       jar_file_uris = v_jar_file_uris;
       properties = v_properties;
       query_file_uri = v_query_file_uri;
       query_list = v_query_list;
       script_variables = v_script_variables;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_script_variables with
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
             let bnd = "script_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_file_uri", arg in
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
         match v_jar_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jar_file_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_continue_on_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "continue_on_failure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hive_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_config

[@@@deriving.end]

type pig_config__logging_config = {
  driver_log_levels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pig_config__logging_config) -> ()

let yojson_of_pig_config__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_driver_log_levels
         in
         ("driver_log_levels", arg) :: bnds
       in
       `Assoc bnds
    : pig_config__logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pig_config__logging_config

[@@@deriving.end]

type pig_config = {
  continue_on_failure : bool prop option; [@option]
  jar_file_uris : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
  query_file_uri : string prop option; [@option]
  query_list : string prop list option; [@option]
  script_variables : (string * string prop) list option; [@option]
  logging_config : pig_config__logging_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pig_config) -> ()

let yojson_of_pig_config =
  (function
   | {
       continue_on_failure = v_continue_on_failure;
       jar_file_uris = v_jar_file_uris;
       properties = v_properties;
       query_file_uri = v_query_file_uri;
       query_list = v_query_list;
       script_variables = v_script_variables;
       logging_config = v_logging_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pig_config__logging_config
             v_logging_config
         in
         ("logging_config", arg) :: bnds
       in
       let bnds =
         match v_script_variables with
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
             let bnd = "script_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_file_uri", arg in
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
         match v_jar_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jar_file_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_continue_on_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "continue_on_failure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : pig_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pig_config

[@@@deriving.end]

type placement = { cluster_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : placement) -> ()

let yojson_of_placement =
  (function
   | { cluster_name = v_cluster_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : placement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement

[@@@deriving.end]

type presto_config__logging_config = {
  driver_log_levels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : presto_config__logging_config) -> ()

let yojson_of_presto_config__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_driver_log_levels
         in
         ("driver_log_levels", arg) :: bnds
       in
       `Assoc bnds
    : presto_config__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_presto_config__logging_config

[@@@deriving.end]

type presto_config = {
  client_tags : string prop list option; [@option]
  continue_on_failure : bool prop option; [@option]
  output_format : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
  query_file_uri : string prop option; [@option]
  query_list : string prop list option; [@option]
  logging_config : presto_config__logging_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : presto_config) -> ()

let yojson_of_presto_config =
  (function
   | {
       client_tags = v_client_tags;
       continue_on_failure = v_continue_on_failure;
       output_format = v_output_format;
       properties = v_properties;
       query_file_uri = v_query_file_uri;
       query_list = v_query_list;
       logging_config = v_logging_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_presto_config__logging_config
             v_logging_config
         in
         ("logging_config", arg) :: bnds
       in
       let bnds =
         match v_query_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_file_uri", arg in
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
         match v_output_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_continue_on_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "continue_on_failure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "client_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : presto_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_presto_config

[@@@deriving.end]

type pyspark_config__logging_config = {
  driver_log_levels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pyspark_config__logging_config) -> ()

let yojson_of_pyspark_config__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_driver_log_levels
         in
         ("driver_log_levels", arg) :: bnds
       in
       `Assoc bnds
    : pyspark_config__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pyspark_config__logging_config

[@@@deriving.end]

type pyspark_config = {
  archive_uris : string prop list option; [@option]
  args : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  jar_file_uris : string prop list option; [@option]
  main_python_file_uri : string prop;
  properties : (string * string prop) list option; [@option]
  python_file_uris : string prop list option; [@option]
  logging_config : pyspark_config__logging_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pyspark_config) -> ()

let yojson_of_pyspark_config =
  (function
   | {
       archive_uris = v_archive_uris;
       args = v_args;
       file_uris = v_file_uris;
       jar_file_uris = v_jar_file_uris;
       main_python_file_uri = v_main_python_file_uri;
       properties = v_properties;
       python_file_uris = v_python_file_uris;
       logging_config = v_logging_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pyspark_config__logging_config
             v_logging_config
         in
         ("logging_config", arg) :: bnds
       in
       let bnds =
         match v_python_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "python_file_uris", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_main_python_file_uri
         in
         ("main_python_file_uri", arg) :: bnds
       in
       let bnds =
         match v_jar_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jar_file_uris", arg in
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
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
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
    : pyspark_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pyspark_config

[@@@deriving.end]

type reference = { job_id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : reference) -> ()

let yojson_of_reference =
  (function
   | { job_id = v_job_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_job_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reference

[@@@deriving.end]

type scheduling = {
  max_failures_per_hour : float prop;
  max_failures_total : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduling) -> ()

let yojson_of_scheduling =
  (function
   | {
       max_failures_per_hour = v_max_failures_per_hour;
       max_failures_total = v_max_failures_total;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_failures_total
         in
         ("max_failures_total", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_failures_per_hour
         in
         ("max_failures_per_hour", arg) :: bnds
       in
       `Assoc bnds
    : scheduling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling

[@@@deriving.end]

type spark_config__logging_config = {
  driver_log_levels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark_config__logging_config) -> ()

let yojson_of_spark_config__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_driver_log_levels
         in
         ("driver_log_levels", arg) :: bnds
       in
       `Assoc bnds
    : spark_config__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark_config__logging_config

[@@@deriving.end]

type spark_config = {
  archive_uris : string prop list option; [@option]
  args : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  jar_file_uris : string prop list option; [@option]
  main_class : string prop option; [@option]
  main_jar_file_uri : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
  logging_config : spark_config__logging_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark_config) -> ()

let yojson_of_spark_config =
  (function
   | {
       archive_uris = v_archive_uris;
       args = v_args;
       file_uris = v_file_uris;
       jar_file_uris = v_jar_file_uris;
       main_class = v_main_class;
       main_jar_file_uri = v_main_jar_file_uri;
       properties = v_properties;
       logging_config = v_logging_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spark_config__logging_config
             v_logging_config
         in
         ("logging_config", arg) :: bnds
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
         match v_main_jar_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "main_jar_file_uri", arg in
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
         match v_jar_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jar_file_uris", arg in
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
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
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
    : spark_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark_config

[@@@deriving.end]

type sparksql_config__logging_config = {
  driver_log_levels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sparksql_config__logging_config) -> ()

let yojson_of_sparksql_config__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_driver_log_levels
         in
         ("driver_log_levels", arg) :: bnds
       in
       `Assoc bnds
    : sparksql_config__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sparksql_config__logging_config

[@@@deriving.end]

type sparksql_config = {
  jar_file_uris : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
  query_file_uri : string prop option; [@option]
  query_list : string prop list option; [@option]
  script_variables : (string * string prop) list option; [@option]
  logging_config : sparksql_config__logging_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sparksql_config) -> ()

let yojson_of_sparksql_config =
  (function
   | {
       jar_file_uris = v_jar_file_uris;
       properties = v_properties;
       query_file_uri = v_query_file_uri;
       query_list = v_query_list;
       script_variables = v_script_variables;
       logging_config = v_logging_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sparksql_config__logging_config
             v_logging_config
         in
         ("logging_config", arg) :: bnds
       in
       let bnds =
         match v_script_variables with
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
             let bnd = "script_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_file_uri", arg in
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
         match v_jar_file_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jar_file_uris", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sparksql_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sparksql_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type status = {
  details : string prop;
  state : string prop;
  state_start_time : string prop;
  substate : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       details = v_details;
       state = v_state;
       state_start_time = v_state_start_time;
       substate = v_substate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_substate in
         ("substate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_state_start_time
         in
         ("state_start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_details in
         ("details", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type google_dataproc_job = {
  force_delete : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  hadoop_config : hadoop_config list;
  hive_config : hive_config list;
  pig_config : pig_config list;
  placement : placement list;
  presto_config : presto_config list;
  pyspark_config : pyspark_config list;
  reference : reference list;
  scheduling : scheduling list;
  spark_config : spark_config list;
  sparksql_config : sparksql_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_job) -> ()

let yojson_of_google_dataproc_job =
  (function
   | {
       force_delete = v_force_delete;
       id = v_id;
       labels = v_labels;
       project = v_project;
       region = v_region;
       hadoop_config = v_hadoop_config;
       hive_config = v_hive_config;
       pig_config = v_pig_config;
       placement = v_placement;
       presto_config = v_presto_config;
       pyspark_config = v_pyspark_config;
       reference = v_reference;
       scheduling = v_scheduling;
       spark_config = v_spark_config;
       sparksql_config = v_sparksql_config;
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
           yojson_of_list yojson_of_sparksql_config v_sparksql_config
         in
         ("sparksql_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spark_config v_spark_config
         in
         ("spark_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_scheduling v_scheduling
         in
         ("scheduling", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_reference v_reference in
         ("reference", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pyspark_config v_pyspark_config
         in
         ("pyspark_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_presto_config v_presto_config
         in
         ("presto_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_placement v_placement in
         ("placement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pig_config v_pig_config
         in
         ("pig_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hive_config v_hive_config
         in
         ("hive_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hadoop_config v_hadoop_config
         in
         ("hadoop_config", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dataproc_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_job

[@@@deriving.end]

let hadoop_config__logging_config ~driver_log_levels () :
    hadoop_config__logging_config =
  { driver_log_levels }

let hadoop_config ?archive_uris ?args ?file_uris ?jar_file_uris
    ?main_class ?main_jar_file_uri ?properties ?(logging_config = [])
    () : hadoop_config =
  {
    archive_uris;
    args;
    file_uris;
    jar_file_uris;
    main_class;
    main_jar_file_uri;
    properties;
    logging_config;
  }

let hive_config ?continue_on_failure ?jar_file_uris ?properties
    ?query_file_uri ?query_list ?script_variables () : hive_config =
  {
    continue_on_failure;
    jar_file_uris;
    properties;
    query_file_uri;
    query_list;
    script_variables;
  }

let pig_config__logging_config ~driver_log_levels () :
    pig_config__logging_config =
  { driver_log_levels }

let pig_config ?continue_on_failure ?jar_file_uris ?properties
    ?query_file_uri ?query_list ?script_variables
    ?(logging_config = []) () : pig_config =
  {
    continue_on_failure;
    jar_file_uris;
    properties;
    query_file_uri;
    query_list;
    script_variables;
    logging_config;
  }

let placement ~cluster_name () : placement = { cluster_name }

let presto_config__logging_config ~driver_log_levels () :
    presto_config__logging_config =
  { driver_log_levels }

let presto_config ?client_tags ?continue_on_failure ?output_format
    ?properties ?query_file_uri ?query_list ?(logging_config = []) ()
    : presto_config =
  {
    client_tags;
    continue_on_failure;
    output_format;
    properties;
    query_file_uri;
    query_list;
    logging_config;
  }

let pyspark_config__logging_config ~driver_log_levels () :
    pyspark_config__logging_config =
  { driver_log_levels }

let pyspark_config ?archive_uris ?args ?file_uris ?jar_file_uris
    ?properties ?python_file_uris ?(logging_config = [])
    ~main_python_file_uri () : pyspark_config =
  {
    archive_uris;
    args;
    file_uris;
    jar_file_uris;
    main_python_file_uri;
    properties;
    python_file_uris;
    logging_config;
  }

let reference ?job_id () : reference = { job_id }

let scheduling ~max_failures_per_hour ~max_failures_total () :
    scheduling =
  { max_failures_per_hour; max_failures_total }

let spark_config__logging_config ~driver_log_levels () :
    spark_config__logging_config =
  { driver_log_levels }

let spark_config ?archive_uris ?args ?file_uris ?jar_file_uris
    ?main_class ?main_jar_file_uri ?properties ?(logging_config = [])
    () : spark_config =
  {
    archive_uris;
    args;
    file_uris;
    jar_file_uris;
    main_class;
    main_jar_file_uri;
    properties;
    logging_config;
  }

let sparksql_config__logging_config ~driver_log_levels () :
    sparksql_config__logging_config =
  { driver_log_levels }

let sparksql_config ?jar_file_uris ?properties ?query_file_uri
    ?query_list ?script_variables ?(logging_config = []) () :
    sparksql_config =
  {
    jar_file_uris;
    properties;
    query_file_uri;
    query_list;
    script_variables;
    logging_config;
  }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_dataproc_job ?force_delete ?id ?labels ?project ?region
    ?(hadoop_config = []) ?(hive_config = []) ?(pig_config = [])
    ?(presto_config = []) ?(pyspark_config = []) ?(reference = [])
    ?(scheduling = []) ?(spark_config = []) ?(sparksql_config = [])
    ?timeouts ~placement () : google_dataproc_job =
  {
    force_delete;
    id;
    labels;
    project;
    region;
    hadoop_config;
    hive_config;
    pig_config;
    placement;
    presto_config;
    pyspark_config;
    reference;
    scheduling;
    spark_config;
    sparksql_config;
    timeouts;
  }

type t = {
  tf_name : string;
  driver_controls_files_uri : string prop;
  driver_output_resource_uri : string prop;
  effective_labels : (string * string) list prop;
  force_delete : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  project : string prop;
  region : string prop;
  status : status list prop;
  terraform_labels : (string * string) list prop;
}

let make ?force_delete ?id ?labels ?project ?region
    ?(hadoop_config = []) ?(hive_config = []) ?(pig_config = [])
    ?(presto_config = []) ?(pyspark_config = []) ?(reference = [])
    ?(scheduling = []) ?(spark_config = []) ?(sparksql_config = [])
    ?timeouts ~placement __id =
  let __type = "google_dataproc_job" in
  let __attrs =
    ({
       tf_name = __id;
       driver_controls_files_uri =
         Prop.computed __type __id "driver_controls_files_uri";
       driver_output_resource_uri =
         Prop.computed __type __id "driver_output_resource_uri";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       status = Prop.computed __type __id "status";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataproc_job
        (google_dataproc_job ?force_delete ?id ?labels ?project
           ?region ~hadoop_config ~hive_config ~pig_config
           ~presto_config ~pyspark_config ~reference ~scheduling
           ~spark_config ~sparksql_config ?timeouts ~placement ());
    attrs = __attrs;
  }

let register ?tf_module ?force_delete ?id ?labels ?project ?region
    ?(hadoop_config = []) ?(hive_config = []) ?(pig_config = [])
    ?(presto_config = []) ?(pyspark_config = []) ?(reference = [])
    ?(scheduling = []) ?(spark_config = []) ?(sparksql_config = [])
    ?timeouts ~placement __id =
  let (r : _ Tf_core.resource) =
    make ?force_delete ?id ?labels ?project ?region ~hadoop_config
      ~hive_config ~pig_config ~presto_config ~pyspark_config
      ~reference ~scheduling ~spark_config ~sparksql_config ?timeouts
      ~placement __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
