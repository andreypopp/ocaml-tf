(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type jobs__hadoop_job__logging_config = {
  driver_log_levels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__hadoop_job__logging_config) -> ()

let yojson_of_jobs__hadoop_job__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_driver_log_levels with
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
             let bnd = "driver_log_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jobs__hadoop_job__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__hadoop_job__logging_config

[@@@deriving.end]

type jobs__hadoop_job = {
  archive_uris : string prop list option; [@option]
  args : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  jar_file_uris : string prop list option; [@option]
  main_class : string prop option; [@option]
  main_jar_file_uri : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
  logging_config : jobs__hadoop_job__logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__hadoop_job) -> ()

let yojson_of_jobs__hadoop_job =
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
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_jobs__hadoop_job__logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
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
    : jobs__hadoop_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__hadoop_job

[@@@deriving.end]

type jobs__hive_job__query_list = {
  queries : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__hive_job__query_list) -> ()

let yojson_of_jobs__hive_job__query_list =
  (function
   | { queries = v_queries } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_queries then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_queries
           in
           let bnd = "queries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : jobs__hive_job__query_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__hive_job__query_list

[@@@deriving.end]

type jobs__hive_job = {
  continue_on_failure : bool prop option; [@option]
  jar_file_uris : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
  query_file_uri : string prop option; [@option]
  script_variables : (string * string prop) list option; [@option]
  query_list : jobs__hive_job__query_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__hive_job) -> ()

let yojson_of_jobs__hive_job =
  (function
   | {
       continue_on_failure = v_continue_on_failure;
       jar_file_uris = v_jar_file_uris;
       properties = v_properties;
       query_file_uri = v_query_file_uri;
       script_variables = v_script_variables;
       query_list = v_query_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_list then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__hive_job__query_list)
               v_query_list
           in
           let bnd = "query_list", arg in
           bnd :: bnds
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
    : jobs__hive_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__hive_job

[@@@deriving.end]

type jobs__pig_job__logging_config = {
  driver_log_levels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__pig_job__logging_config) -> ()

let yojson_of_jobs__pig_job__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_driver_log_levels with
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
             let bnd = "driver_log_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jobs__pig_job__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__pig_job__logging_config

[@@@deriving.end]

type jobs__pig_job__query_list = {
  queries : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__pig_job__query_list) -> ()

let yojson_of_jobs__pig_job__query_list =
  (function
   | { queries = v_queries } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_queries then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_queries
           in
           let bnd = "queries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : jobs__pig_job__query_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__pig_job__query_list

[@@@deriving.end]

type jobs__pig_job = {
  continue_on_failure : bool prop option; [@option]
  jar_file_uris : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
  query_file_uri : string prop option; [@option]
  script_variables : (string * string prop) list option; [@option]
  logging_config : jobs__pig_job__logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_list : jobs__pig_job__query_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__pig_job) -> ()

let yojson_of_jobs__pig_job =
  (function
   | {
       continue_on_failure = v_continue_on_failure;
       jar_file_uris = v_jar_file_uris;
       properties = v_properties;
       query_file_uri = v_query_file_uri;
       script_variables = v_script_variables;
       logging_config = v_logging_config;
       query_list = v_query_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_list then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__pig_job__query_list)
               v_query_list
           in
           let bnd = "query_list", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__pig_job__logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
           bnd :: bnds
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
    : jobs__pig_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__pig_job

[@@@deriving.end]

type jobs__presto_job__logging_config = {
  driver_log_levels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__presto_job__logging_config) -> ()

let yojson_of_jobs__presto_job__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_driver_log_levels with
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
             let bnd = "driver_log_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jobs__presto_job__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__presto_job__logging_config

[@@@deriving.end]

type jobs__presto_job__query_list = {
  queries : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__presto_job__query_list) -> ()

let yojson_of_jobs__presto_job__query_list =
  (function
   | { queries = v_queries } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_queries then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_queries
           in
           let bnd = "queries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : jobs__presto_job__query_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__presto_job__query_list

[@@@deriving.end]

type jobs__presto_job = {
  client_tags : string prop list option; [@option]
  continue_on_failure : bool prop option; [@option]
  output_format : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
  query_file_uri : string prop option; [@option]
  logging_config : jobs__presto_job__logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_list : jobs__presto_job__query_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__presto_job) -> ()

let yojson_of_jobs__presto_job =
  (function
   | {
       client_tags = v_client_tags;
       continue_on_failure = v_continue_on_failure;
       output_format = v_output_format;
       properties = v_properties;
       query_file_uri = v_query_file_uri;
       logging_config = v_logging_config;
       query_list = v_query_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_list then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__presto_job__query_list)
               v_query_list
           in
           let bnd = "query_list", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_jobs__presto_job__logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
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
    : jobs__presto_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__presto_job

[@@@deriving.end]

type jobs__pyspark_job__logging_config = {
  driver_log_levels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__pyspark_job__logging_config) -> ()

let yojson_of_jobs__pyspark_job__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_driver_log_levels with
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
             let bnd = "driver_log_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jobs__pyspark_job__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__pyspark_job__logging_config

[@@@deriving.end]

type jobs__pyspark_job = {
  archive_uris : string prop list option; [@option]
  args : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  jar_file_uris : string prop list option; [@option]
  main_python_file_uri : string prop;
  properties : (string * string prop) list option; [@option]
  python_file_uris : string prop list option; [@option]
  logging_config : jobs__pyspark_job__logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__pyspark_job) -> ()

let yojson_of_jobs__pyspark_job =
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
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_jobs__pyspark_job__logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
           bnd :: bnds
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
    : jobs__pyspark_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__pyspark_job

[@@@deriving.end]

type jobs__scheduling = {
  max_failures_per_hour : float prop option; [@option]
  max_failures_total : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__scheduling) -> ()

let yojson_of_jobs__scheduling =
  (function
   | {
       max_failures_per_hour = v_max_failures_per_hour;
       max_failures_total = v_max_failures_total;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_failures_total with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_failures_total", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_failures_per_hour with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_failures_per_hour", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jobs__scheduling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__scheduling

[@@@deriving.end]

type jobs__spark_job__logging_config = {
  driver_log_levels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__spark_job__logging_config) -> ()

let yojson_of_jobs__spark_job__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_driver_log_levels with
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
             let bnd = "driver_log_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jobs__spark_job__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__spark_job__logging_config

[@@@deriving.end]

type jobs__spark_job = {
  archive_uris : string prop list option; [@option]
  args : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  jar_file_uris : string prop list option; [@option]
  main_class : string prop option; [@option]
  main_jar_file_uri : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
  logging_config : jobs__spark_job__logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__spark_job) -> ()

let yojson_of_jobs__spark_job =
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
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_jobs__spark_job__logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
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
    : jobs__spark_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__spark_job

[@@@deriving.end]

type jobs__spark_r_job__logging_config = {
  driver_log_levels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__spark_r_job__logging_config) -> ()

let yojson_of_jobs__spark_r_job__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_driver_log_levels with
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
             let bnd = "driver_log_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jobs__spark_r_job__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__spark_r_job__logging_config

[@@@deriving.end]

type jobs__spark_r_job = {
  archive_uris : string prop list option; [@option]
  args : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  main_r_file_uri : string prop;
  properties : (string * string prop) list option; [@option]
  logging_config : jobs__spark_r_job__logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__spark_r_job) -> ()

let yojson_of_jobs__spark_r_job =
  (function
   | {
       archive_uris = v_archive_uris;
       args = v_args;
       file_uris = v_file_uris;
       main_r_file_uri = v_main_r_file_uri;
       properties = v_properties;
       logging_config = v_logging_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_jobs__spark_r_job__logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
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
           yojson_of_prop yojson_of_string v_main_r_file_uri
         in
         ("main_r_file_uri", arg) :: bnds
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
    : jobs__spark_r_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__spark_r_job

[@@@deriving.end]

type jobs__spark_sql_job__logging_config = {
  driver_log_levels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__spark_sql_job__logging_config) -> ()

let yojson_of_jobs__spark_sql_job__logging_config =
  (function
   | { driver_log_levels = v_driver_log_levels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_driver_log_levels with
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
             let bnd = "driver_log_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jobs__spark_sql_job__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__spark_sql_job__logging_config

[@@@deriving.end]

type jobs__spark_sql_job__query_list = {
  queries : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__spark_sql_job__query_list) -> ()

let yojson_of_jobs__spark_sql_job__query_list =
  (function
   | { queries = v_queries } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_queries then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_queries
           in
           let bnd = "queries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : jobs__spark_sql_job__query_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__spark_sql_job__query_list

[@@@deriving.end]

type jobs__spark_sql_job = {
  jar_file_uris : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
  query_file_uri : string prop option; [@option]
  script_variables : (string * string prop) list option; [@option]
  logging_config : jobs__spark_sql_job__logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_list : jobs__spark_sql_job__query_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs__spark_sql_job) -> ()

let yojson_of_jobs__spark_sql_job =
  (function
   | {
       jar_file_uris = v_jar_file_uris;
       properties = v_properties;
       query_file_uri = v_query_file_uri;
       script_variables = v_script_variables;
       logging_config = v_logging_config;
       query_list = v_query_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_list then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_jobs__spark_sql_job__query_list)
               v_query_list
           in
           let bnd = "query_list", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_jobs__spark_sql_job__logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
           bnd :: bnds
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
    : jobs__spark_sql_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs__spark_sql_job

[@@@deriving.end]

type jobs = {
  labels : (string * string prop) list option; [@option]
  prerequisite_step_ids : string prop list option; [@option]
  step_id : string prop;
  hadoop_job : jobs__hadoop_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hive_job : jobs__hive_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pig_job : jobs__pig_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  presto_job : jobs__presto_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pyspark_job : jobs__pyspark_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scheduling : jobs__scheduling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spark_job : jobs__spark_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spark_r_job : jobs__spark_r_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spark_sql_job : jobs__spark_sql_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jobs) -> ()

let yojson_of_jobs =
  (function
   | {
       labels = v_labels;
       prerequisite_step_ids = v_prerequisite_step_ids;
       step_id = v_step_id;
       hadoop_job = v_hadoop_job;
       hive_job = v_hive_job;
       pig_job = v_pig_job;
       presto_job = v_presto_job;
       pyspark_job = v_pyspark_job;
       scheduling = v_scheduling;
       spark_job = v_spark_job;
       spark_r_job = v_spark_r_job;
       spark_sql_job = v_spark_sql_job;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spark_sql_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__spark_sql_job)
               v_spark_sql_job
           in
           let bnd = "spark_sql_job", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_spark_r_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__spark_r_job)
               v_spark_r_job
           in
           let bnd = "spark_r_job", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_spark_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__spark_job) v_spark_job
           in
           let bnd = "spark_job", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scheduling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__scheduling) v_scheduling
           in
           let bnd = "scheduling", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pyspark_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__pyspark_job)
               v_pyspark_job
           in
           let bnd = "pyspark_job", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_presto_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__presto_job) v_presto_job
           in
           let bnd = "presto_job", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pig_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__pig_job) v_pig_job
           in
           let bnd = "pig_job", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hive_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__hive_job) v_hive_job
           in
           let bnd = "hive_job", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hadoop_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jobs__hadoop_job) v_hadoop_job
           in
           let bnd = "hadoop_job", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_step_id in
         ("step_id", arg) :: bnds
       in
       let bnds =
         match v_prerequisite_step_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "prerequisite_step_ids", arg in
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
       `Assoc bnds
    : jobs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jobs

[@@@deriving.end]

type parameters__validation__regex = {
  regexes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters__validation__regex) -> ()

let yojson_of_parameters__validation__regex =
  (function
   | { regexes = v_regexes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_regexes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_regexes
           in
           let bnd = "regexes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : parameters__validation__regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters__validation__regex

[@@@deriving.end]

type parameters__validation__values = {
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters__validation__values) -> ()

let yojson_of_parameters__validation__values =
  (function
   | { values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : parameters__validation__values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters__validation__values

[@@@deriving.end]

type parameters__validation = {
  regex : parameters__validation__regex list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  values : parameters__validation__values list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters__validation) -> ()

let yojson_of_parameters__validation =
  (function
   | { regex = v_regex; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameters__validation__values)
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_regex then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameters__validation__regex)
               v_regex
           in
           let bnd = "regex", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : parameters__validation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters__validation

[@@@deriving.end]

type parameters = {
  description : string prop option; [@option]
  fields : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  validation : parameters__validation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters) -> ()

let yojson_of_parameters =
  (function
   | {
       description = v_description;
       fields = v_fields;
       name = v_name;
       validation = v_validation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_validation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameters__validation)
               v_validation
           in
           let bnd = "validation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fields then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_fields
           in
           let bnd = "fields", arg in
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
       `Assoc bnds
    : parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters

[@@@deriving.end]

type placement__cluster_selector = {
  cluster_labels : (string * string prop) list;
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement__cluster_selector) -> ()

let yojson_of_placement__cluster_selector =
  (function
   | { cluster_labels = v_cluster_labels; zone = v_zone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_cluster_labels
         in
         ("cluster_labels", arg) :: bnds
       in
       `Assoc bnds
    : placement__cluster_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement__cluster_selector

[@@@deriving.end]

type placement__managed_cluster__config__autoscaling_config = {
  policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__autoscaling_config) ->
  ()

let yojson_of_placement__managed_cluster__config__autoscaling_config
    =
  (function
   | { policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__autoscaling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__autoscaling_config

[@@@deriving.end]

type placement__managed_cluster__config__encryption_config = {
  gce_pd_kms_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__encryption_config) ->
  ()

let yojson_of_placement__managed_cluster__config__encryption_config =
  (function
   | { gce_pd_kms_key_name = v_gce_pd_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_gce_pd_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gce_pd_kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__encryption_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__encryption_config

[@@@deriving.end]

type placement__managed_cluster__config__endpoint_config = {
  enable_http_port_access : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__endpoint_config) -> ()

let yojson_of_placement__managed_cluster__config__endpoint_config =
  (function
   | { enable_http_port_access = v_enable_http_port_access } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_http_port_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_http_port_access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__endpoint_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement__managed_cluster__config__endpoint_config

[@@@deriving.end]

type placement__managed_cluster__config__gce_cluster_config__node_group_affinity = {
  node_group : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__gce_cluster_config__node_group_affinity) ->
  ()

let yojson_of_placement__managed_cluster__config__gce_cluster_config__node_group_affinity
    =
  (function
   | { node_group = v_node_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_group in
         ("node_group", arg) :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__gce_cluster_config__node_group_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__gce_cluster_config__node_group_affinity

[@@@deriving.end]

type placement__managed_cluster__config__gce_cluster_config__reservation_affinity = {
  consume_reservation_type : string prop option; [@option]
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__gce_cluster_config__reservation_affinity) ->
  ()

let yojson_of_placement__managed_cluster__config__gce_cluster_config__reservation_affinity
    =
  (function
   | {
       consume_reservation_type = v_consume_reservation_type;
       key = v_key;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consume_reservation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consume_reservation_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__gce_cluster_config__reservation_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__gce_cluster_config__reservation_affinity

[@@@deriving.end]

type placement__managed_cluster__config__gce_cluster_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
  enable_secure_boot : bool prop option; [@option]
  enable_vtpm : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__gce_cluster_config__shielded_instance_config) ->
  ()

let yojson_of_placement__managed_cluster__config__gce_cluster_config__shielded_instance_config
    =
  (function
   | {
       enable_integrity_monitoring = v_enable_integrity_monitoring;
       enable_secure_boot = v_enable_secure_boot;
       enable_vtpm = v_enable_vtpm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_vtpm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_vtpm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_secure_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_secure_boot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_integrity_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_integrity_monitoring", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__gce_cluster_config__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__gce_cluster_config__shielded_instance_config

[@@@deriving.end]

type placement__managed_cluster__config__gce_cluster_config = {
  internal_ip_only : bool prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  network : string prop option; [@option]
  private_ipv6_google_access : string prop option; [@option]
  service_account : string prop option; [@option]
  service_account_scopes : string prop list option; [@option]
  subnetwork : string prop option; [@option]
  tags : string prop list option; [@option]
  zone : string prop option; [@option]
  node_group_affinity :
    placement__managed_cluster__config__gce_cluster_config__node_group_affinity
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reservation_affinity :
    placement__managed_cluster__config__gce_cluster_config__reservation_affinity
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shielded_instance_config :
    placement__managed_cluster__config__gce_cluster_config__shielded_instance_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__gce_cluster_config) ->
  ()

let yojson_of_placement__managed_cluster__config__gce_cluster_config
    =
  (function
   | {
       internal_ip_only = v_internal_ip_only;
       metadata = v_metadata;
       network = v_network;
       private_ipv6_google_access = v_private_ipv6_google_access;
       service_account = v_service_account;
       service_account_scopes = v_service_account_scopes;
       subnetwork = v_subnetwork;
       tags = v_tags;
       zone = v_zone;
       node_group_affinity = v_node_group_affinity;
       reservation_affinity = v_reservation_affinity;
       shielded_instance_config = v_shielded_instance_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_shielded_instance_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__gce_cluster_config__shielded_instance_config)
               v_shielded_instance_config
           in
           let bnd = "shielded_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_reservation_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__gce_cluster_config__reservation_affinity)
               v_reservation_affinity
           in
           let bnd = "reservation_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_group_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__gce_cluster_config__node_group_affinity)
               v_node_group_affinity
           in
           let bnd = "node_group_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_account_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ipv6_google_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ipv6_google_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata with
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
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internal_ip_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal_ip_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__gce_cluster_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__gce_cluster_config

[@@@deriving.end]

type placement__managed_cluster__config__initialization_actions = {
  executable_file : string prop option; [@option]
  execution_timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__initialization_actions) ->
  ()

let yojson_of_placement__managed_cluster__config__initialization_actions
    =
  (function
   | {
       executable_file = v_executable_file;
       execution_timeout = v_execution_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_execution_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_executable_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "executable_file", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__initialization_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__initialization_actions

[@@@deriving.end]

type placement__managed_cluster__config__lifecycle_config = {
  auto_delete_time : string prop option; [@option]
  auto_delete_ttl : string prop option; [@option]
  idle_delete_ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__lifecycle_config) -> ()

let yojson_of_placement__managed_cluster__config__lifecycle_config =
  (function
   | {
       auto_delete_time = v_auto_delete_time;
       auto_delete_ttl = v_auto_delete_ttl;
       idle_delete_ttl = v_idle_delete_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_idle_delete_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idle_delete_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_delete_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_delete_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_delete_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_delete_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__lifecycle_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__lifecycle_config

[@@@deriving.end]

type placement__managed_cluster__config__master_config__accelerators = {
  accelerator_count : float prop option; [@option]
  accelerator_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__master_config__accelerators) ->
  ()

let yojson_of_placement__managed_cluster__config__master_config__accelerators
    =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_accelerator_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accelerator_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "accelerator_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__master_config__accelerators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__master_config__accelerators

[@@@deriving.end]

type placement__managed_cluster__config__master_config__disk_config = {
  boot_disk_size_gb : float prop option; [@option]
  boot_disk_type : string prop option; [@option]
  num_local_ssds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__master_config__disk_config) ->
  ()

let yojson_of_placement__managed_cluster__config__master_config__disk_config
    =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       boot_disk_type = v_boot_disk_type;
       num_local_ssds = v_num_local_ssds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_num_local_ssds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_local_ssds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__master_config__disk_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__master_config__disk_config

[@@@deriving.end]

type placement__managed_cluster__config__master_config__managed_group_config = {
  instance_group_manager_name : string prop;
  instance_template_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__master_config__managed_group_config) ->
  ()

let yojson_of_placement__managed_cluster__config__master_config__managed_group_config
    =
  (function
   | {
       instance_group_manager_name = v_instance_group_manager_name;
       instance_template_name = v_instance_template_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_template_name
         in
         ("instance_template_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_instance_group_manager_name
         in
         ("instance_group_manager_name", arg) :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__master_config__managed_group_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__master_config__managed_group_config

[@@@deriving.end]

type placement__managed_cluster__config__master_config = {
  image : string prop option; [@option]
  machine_type : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  num_instances : float prop option; [@option]
  preemptibility : string prop option; [@option]
  accelerators :
    placement__managed_cluster__config__master_config__accelerators
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disk_config :
    placement__managed_cluster__config__master_config__disk_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__master_config) -> ()

let yojson_of_placement__managed_cluster__config__master_config =
  (function
   | {
       image = v_image;
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
       num_instances = v_num_instances;
       preemptibility = v_preemptibility;
       accelerators = v_accelerators;
       disk_config = v_disk_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_disk_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__master_config__disk_config)
               v_disk_config
           in
           let bnd = "disk_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerators then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__master_config__accelerators)
               v_accelerators
           in
           let bnd = "accelerators", arg in
           bnd :: bnds
       in
       let bnds =
         match v_preemptibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preemptibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__master_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement__managed_cluster__config__master_config

[@@@deriving.end]

type placement__managed_cluster__config__secondary_worker_config__accelerators = {
  accelerator_count : float prop option; [@option]
  accelerator_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__secondary_worker_config__accelerators) ->
  ()

let yojson_of_placement__managed_cluster__config__secondary_worker_config__accelerators
    =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_accelerator_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accelerator_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "accelerator_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__secondary_worker_config__accelerators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__secondary_worker_config__accelerators

[@@@deriving.end]

type placement__managed_cluster__config__secondary_worker_config__disk_config = {
  boot_disk_size_gb : float prop option; [@option]
  boot_disk_type : string prop option; [@option]
  num_local_ssds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__secondary_worker_config__disk_config) ->
  ()

let yojson_of_placement__managed_cluster__config__secondary_worker_config__disk_config
    =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       boot_disk_type = v_boot_disk_type;
       num_local_ssds = v_num_local_ssds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_num_local_ssds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_local_ssds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__secondary_worker_config__disk_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__secondary_worker_config__disk_config

[@@@deriving.end]

type placement__managed_cluster__config__secondary_worker_config__managed_group_config = {
  instance_group_manager_name : string prop;
  instance_template_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__secondary_worker_config__managed_group_config) ->
  ()

let yojson_of_placement__managed_cluster__config__secondary_worker_config__managed_group_config
    =
  (function
   | {
       instance_group_manager_name = v_instance_group_manager_name;
       instance_template_name = v_instance_template_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_template_name
         in
         ("instance_template_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_instance_group_manager_name
         in
         ("instance_group_manager_name", arg) :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__secondary_worker_config__managed_group_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__secondary_worker_config__managed_group_config

[@@@deriving.end]

type placement__managed_cluster__config__secondary_worker_config = {
  image : string prop option; [@option]
  machine_type : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  num_instances : float prop option; [@option]
  preemptibility : string prop option; [@option]
  accelerators :
    placement__managed_cluster__config__secondary_worker_config__accelerators
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disk_config :
    placement__managed_cluster__config__secondary_worker_config__disk_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__secondary_worker_config) ->
  ()

let yojson_of_placement__managed_cluster__config__secondary_worker_config
    =
  (function
   | {
       image = v_image;
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
       num_instances = v_num_instances;
       preemptibility = v_preemptibility;
       accelerators = v_accelerators;
       disk_config = v_disk_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_disk_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__secondary_worker_config__disk_config)
               v_disk_config
           in
           let bnd = "disk_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerators then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__secondary_worker_config__accelerators)
               v_accelerators
           in
           let bnd = "accelerators", arg in
           bnd :: bnds
       in
       let bnds =
         match v_preemptibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preemptibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__secondary_worker_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__secondary_worker_config

[@@@deriving.end]

type placement__managed_cluster__config__security_config__kerberos_config = {
  cross_realm_trust_admin_server : string prop option; [@option]
  cross_realm_trust_kdc : string prop option; [@option]
  cross_realm_trust_realm : string prop option; [@option]
  cross_realm_trust_shared_password : string prop option; [@option]
  enable_kerberos : bool prop option; [@option]
  kdc_db_key : string prop option; [@option]
  key_password : string prop option; [@option]
  keystore : string prop option; [@option]
  keystore_password : string prop option; [@option]
  kms_key : string prop option; [@option]
  realm : string prop option; [@option]
  root_principal_password : string prop option; [@option]
  tgt_lifetime_hours : float prop option; [@option]
  truststore : string prop option; [@option]
  truststore_password : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__security_config__kerberos_config) ->
  ()

let yojson_of_placement__managed_cluster__config__security_config__kerberos_config
    =
  (function
   | {
       cross_realm_trust_admin_server =
         v_cross_realm_trust_admin_server;
       cross_realm_trust_kdc = v_cross_realm_trust_kdc;
       cross_realm_trust_realm = v_cross_realm_trust_realm;
       cross_realm_trust_shared_password =
         v_cross_realm_trust_shared_password;
       enable_kerberos = v_enable_kerberos;
       kdc_db_key = v_kdc_db_key;
       key_password = v_key_password;
       keystore = v_keystore;
       keystore_password = v_keystore_password;
       kms_key = v_kms_key;
       realm = v_realm;
       root_principal_password = v_root_principal_password;
       tgt_lifetime_hours = v_tgt_lifetime_hours;
       truststore = v_truststore;
       truststore_password = v_truststore_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_truststore_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "truststore_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_truststore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "truststore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tgt_lifetime_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tgt_lifetime_hours", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_principal_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_principal_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_realm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "realm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keystore_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keystore_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keystore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keystore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kdc_db_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kdc_db_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_kerberos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_kerberos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_realm_trust_shared_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_realm_trust_shared_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_realm_trust_realm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_realm_trust_realm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_realm_trust_kdc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_realm_trust_kdc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_realm_trust_admin_server with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_realm_trust_admin_server", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__security_config__kerberos_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__security_config__kerberos_config

[@@@deriving.end]

type placement__managed_cluster__config__security_config = {
  kerberos_config :
    placement__managed_cluster__config__security_config__kerberos_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__security_config) -> ()

let yojson_of_placement__managed_cluster__config__security_config =
  (function
   | { kerberos_config = v_kerberos_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_kerberos_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__security_config__kerberos_config)
               v_kerberos_config
           in
           let bnd = "kerberos_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__security_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement__managed_cluster__config__security_config

[@@@deriving.end]

type placement__managed_cluster__config__software_config = {
  image_version : string prop option; [@option]
  optional_components : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__software_config) -> ()

let yojson_of_placement__managed_cluster__config__software_config =
  (function
   | {
       image_version = v_image_version;
       optional_components = v_optional_components;
       properties = v_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_optional_components with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "optional_components", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__software_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement__managed_cluster__config__software_config

[@@@deriving.end]

type placement__managed_cluster__config__worker_config__accelerators = {
  accelerator_count : float prop option; [@option]
  accelerator_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__worker_config__accelerators) ->
  ()

let yojson_of_placement__managed_cluster__config__worker_config__accelerators
    =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_accelerator_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accelerator_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "accelerator_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__worker_config__accelerators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__worker_config__accelerators

[@@@deriving.end]

type placement__managed_cluster__config__worker_config__disk_config = {
  boot_disk_size_gb : float prop option; [@option]
  boot_disk_type : string prop option; [@option]
  num_local_ssds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__worker_config__disk_config) ->
  ()

let yojson_of_placement__managed_cluster__config__worker_config__disk_config
    =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       boot_disk_type = v_boot_disk_type;
       num_local_ssds = v_num_local_ssds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_num_local_ssds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_local_ssds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__worker_config__disk_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__worker_config__disk_config

[@@@deriving.end]

type placement__managed_cluster__config__worker_config__managed_group_config = {
  instance_group_manager_name : string prop;
  instance_template_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       placement__managed_cluster__config__worker_config__managed_group_config) ->
  ()

let yojson_of_placement__managed_cluster__config__worker_config__managed_group_config
    =
  (function
   | {
       instance_group_manager_name = v_instance_group_manager_name;
       instance_template_name = v_instance_template_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_template_name
         in
         ("instance_template_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_instance_group_manager_name
         in
         ("instance_group_manager_name", arg) :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__worker_config__managed_group_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_placement__managed_cluster__config__worker_config__managed_group_config

[@@@deriving.end]

type placement__managed_cluster__config__worker_config = {
  image : string prop option; [@option]
  machine_type : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  num_instances : float prop option; [@option]
  preemptibility : string prop option; [@option]
  accelerators :
    placement__managed_cluster__config__worker_config__accelerators
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disk_config :
    placement__managed_cluster__config__worker_config__disk_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : placement__managed_cluster__config__worker_config) -> ()

let yojson_of_placement__managed_cluster__config__worker_config =
  (function
   | {
       image = v_image;
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
       num_instances = v_num_instances;
       preemptibility = v_preemptibility;
       accelerators = v_accelerators;
       disk_config = v_disk_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_disk_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__worker_config__disk_config)
               v_disk_config
           in
           let bnd = "disk_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerators then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__worker_config__accelerators)
               v_accelerators
           in
           let bnd = "accelerators", arg in
           bnd :: bnds
       in
       let bnds =
         match v_preemptibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preemptibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config__worker_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement__managed_cluster__config__worker_config

[@@@deriving.end]

type placement__managed_cluster__config = {
  staging_bucket : string prop option; [@option]
  temp_bucket : string prop option; [@option]
  autoscaling_config :
    placement__managed_cluster__config__autoscaling_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption_config :
    placement__managed_cluster__config__encryption_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  endpoint_config :
    placement__managed_cluster__config__endpoint_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gce_cluster_config :
    placement__managed_cluster__config__gce_cluster_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  initialization_actions :
    placement__managed_cluster__config__initialization_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lifecycle_config :
    placement__managed_cluster__config__lifecycle_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  master_config :
    placement__managed_cluster__config__master_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secondary_worker_config :
    placement__managed_cluster__config__secondary_worker_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_config :
    placement__managed_cluster__config__security_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  software_config :
    placement__managed_cluster__config__software_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  worker_config :
    placement__managed_cluster__config__worker_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement__managed_cluster__config) -> ()

let yojson_of_placement__managed_cluster__config =
  (function
   | {
       staging_bucket = v_staging_bucket;
       temp_bucket = v_temp_bucket;
       autoscaling_config = v_autoscaling_config;
       encryption_config = v_encryption_config;
       endpoint_config = v_endpoint_config;
       gce_cluster_config = v_gce_cluster_config;
       initialization_actions = v_initialization_actions;
       lifecycle_config = v_lifecycle_config;
       master_config = v_master_config;
       secondary_worker_config = v_secondary_worker_config;
       security_config = v_security_config;
       software_config = v_software_config;
       worker_config = v_worker_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_worker_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__worker_config)
               v_worker_config
           in
           let bnd = "worker_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_software_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__software_config)
               v_software_config
           in
           let bnd = "software_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__security_config)
               v_security_config
           in
           let bnd = "security_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secondary_worker_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__secondary_worker_config)
               v_secondary_worker_config
           in
           let bnd = "secondary_worker_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_master_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__master_config)
               v_master_config
           in
           let bnd = "master_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lifecycle_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__lifecycle_config)
               v_lifecycle_config
           in
           let bnd = "lifecycle_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_initialization_actions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__initialization_actions)
               v_initialization_actions
           in
           let bnd = "initialization_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gce_cluster_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__gce_cluster_config)
               v_gce_cluster_config
           in
           let bnd = "gce_cluster_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_endpoint_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__endpoint_config)
               v_endpoint_config
           in
           let bnd = "endpoint_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscaling_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config__autoscaling_config)
               v_autoscaling_config
           in
           let bnd = "autoscaling_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_temp_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "temp_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_staging_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "staging_bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster__config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement__managed_cluster__config

[@@@deriving.end]

type placement__managed_cluster = {
  cluster_name : string prop;
  labels : (string * string prop) list option; [@option]
  config : placement__managed_cluster__config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement__managed_cluster) -> ()

let yojson_of_placement__managed_cluster =
  (function
   | {
       cluster_name = v_cluster_name;
       labels = v_labels;
       config = v_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_placement__managed_cluster__config)
               v_config
           in
           let bnd = "config", arg in
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : placement__managed_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement__managed_cluster

[@@@deriving.end]

type placement = {
  cluster_selector : placement__cluster_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  managed_cluster : placement__managed_cluster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement) -> ()

let yojson_of_placement =
  (function
   | {
       cluster_selector = v_cluster_selector;
       managed_cluster = v_managed_cluster;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_managed_cluster then bnds
         else
           let arg =
             (yojson_of_list yojson_of_placement__managed_cluster)
               v_managed_cluster
           in
           let bnd = "managed_cluster", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cluster_selector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_placement__cluster_selector)
               v_cluster_selector
           in
           let bnd = "cluster_selector", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : placement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement

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

type google_dataproc_workflow_template = {
  dag_timeout : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  version : float prop option; [@option]
  jobs : jobs list; [@default []] [@yojson_drop_default Stdlib.( = )]
  parameters : parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  placement : placement list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_workflow_template) -> ()

let yojson_of_google_dataproc_workflow_template =
  (function
   | {
       dag_timeout = v_dag_timeout;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       version = v_version;
       jobs = v_jobs;
       parameters = v_parameters;
       placement = v_placement;
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
         if Stdlib.( = ) [] v_placement then bnds
         else
           let arg =
             (yojson_of_list yojson_of_placement) v_placement
           in
           let bnd = "placement", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameters) v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_jobs then bnds
         else
           let arg = (yojson_of_list yojson_of_jobs) v_jobs in
           let bnd = "jobs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "version", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_dag_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dag_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dataproc_workflow_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_workflow_template

[@@@deriving.end]

let jobs__hadoop_job__logging_config ?driver_log_levels () :
    jobs__hadoop_job__logging_config =
  { driver_log_levels }

let jobs__hadoop_job ?archive_uris ?args ?file_uris ?jar_file_uris
    ?main_class ?main_jar_file_uri ?properties ?(logging_config = [])
    () : jobs__hadoop_job =
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

let jobs__hive_job__query_list ~queries () :
    jobs__hive_job__query_list =
  { queries }

let jobs__hive_job ?continue_on_failure ?jar_file_uris ?properties
    ?query_file_uri ?script_variables ?(query_list = []) () :
    jobs__hive_job =
  {
    continue_on_failure;
    jar_file_uris;
    properties;
    query_file_uri;
    script_variables;
    query_list;
  }

let jobs__pig_job__logging_config ?driver_log_levels () :
    jobs__pig_job__logging_config =
  { driver_log_levels }

let jobs__pig_job__query_list ~queries () : jobs__pig_job__query_list
    =
  { queries }

let jobs__pig_job ?continue_on_failure ?jar_file_uris ?properties
    ?query_file_uri ?script_variables ?(logging_config = [])
    ?(query_list = []) () : jobs__pig_job =
  {
    continue_on_failure;
    jar_file_uris;
    properties;
    query_file_uri;
    script_variables;
    logging_config;
    query_list;
  }

let jobs__presto_job__logging_config ?driver_log_levels () :
    jobs__presto_job__logging_config =
  { driver_log_levels }

let jobs__presto_job__query_list ~queries () :
    jobs__presto_job__query_list =
  { queries }

let jobs__presto_job ?client_tags ?continue_on_failure ?output_format
    ?properties ?query_file_uri ?(logging_config = [])
    ?(query_list = []) () : jobs__presto_job =
  {
    client_tags;
    continue_on_failure;
    output_format;
    properties;
    query_file_uri;
    logging_config;
    query_list;
  }

let jobs__pyspark_job__logging_config ?driver_log_levels () :
    jobs__pyspark_job__logging_config =
  { driver_log_levels }

let jobs__pyspark_job ?archive_uris ?args ?file_uris ?jar_file_uris
    ?properties ?python_file_uris ?(logging_config = [])
    ~main_python_file_uri () : jobs__pyspark_job =
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

let jobs__scheduling ?max_failures_per_hour ?max_failures_total () :
    jobs__scheduling =
  { max_failures_per_hour; max_failures_total }

let jobs__spark_job__logging_config ?driver_log_levels () :
    jobs__spark_job__logging_config =
  { driver_log_levels }

let jobs__spark_job ?archive_uris ?args ?file_uris ?jar_file_uris
    ?main_class ?main_jar_file_uri ?properties ?(logging_config = [])
    () : jobs__spark_job =
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

let jobs__spark_r_job__logging_config ?driver_log_levels () :
    jobs__spark_r_job__logging_config =
  { driver_log_levels }

let jobs__spark_r_job ?archive_uris ?args ?file_uris ?properties
    ?(logging_config = []) ~main_r_file_uri () : jobs__spark_r_job =
  {
    archive_uris;
    args;
    file_uris;
    main_r_file_uri;
    properties;
    logging_config;
  }

let jobs__spark_sql_job__logging_config ?driver_log_levels () :
    jobs__spark_sql_job__logging_config =
  { driver_log_levels }

let jobs__spark_sql_job__query_list ~queries () :
    jobs__spark_sql_job__query_list =
  { queries }

let jobs__spark_sql_job ?jar_file_uris ?properties ?query_file_uri
    ?script_variables ?(logging_config = []) ?(query_list = []) () :
    jobs__spark_sql_job =
  {
    jar_file_uris;
    properties;
    query_file_uri;
    script_variables;
    logging_config;
    query_list;
  }

let jobs ?labels ?prerequisite_step_ids ?(hadoop_job = [])
    ?(hive_job = []) ?(pig_job = []) ?(presto_job = [])
    ?(pyspark_job = []) ?(scheduling = []) ?(spark_job = [])
    ?(spark_r_job = []) ?(spark_sql_job = []) ~step_id () : jobs =
  {
    labels;
    prerequisite_step_ids;
    step_id;
    hadoop_job;
    hive_job;
    pig_job;
    presto_job;
    pyspark_job;
    scheduling;
    spark_job;
    spark_r_job;
    spark_sql_job;
  }

let parameters__validation__regex ~regexes () :
    parameters__validation__regex =
  { regexes }

let parameters__validation__values ~values () :
    parameters__validation__values =
  { values }

let parameters__validation ?(regex = []) ?(values = []) () :
    parameters__validation =
  { regex; values }

let parameters ?description ?(validation = []) ~fields ~name () :
    parameters =
  { description; fields; name; validation }

let placement__cluster_selector ?zone ~cluster_labels () :
    placement__cluster_selector =
  { cluster_labels; zone }

let placement__managed_cluster__config__autoscaling_config ?policy ()
    : placement__managed_cluster__config__autoscaling_config =
  { policy }

let placement__managed_cluster__config__encryption_config
    ?gce_pd_kms_key_name () :
    placement__managed_cluster__config__encryption_config =
  { gce_pd_kms_key_name }

let placement__managed_cluster__config__endpoint_config
    ?enable_http_port_access () :
    placement__managed_cluster__config__endpoint_config =
  { enable_http_port_access }

let placement__managed_cluster__config__gce_cluster_config__node_group_affinity
    ~node_group () :
    placement__managed_cluster__config__gce_cluster_config__node_group_affinity
    =
  { node_group }

let placement__managed_cluster__config__gce_cluster_config__reservation_affinity
    ?consume_reservation_type ?key ?values () :
    placement__managed_cluster__config__gce_cluster_config__reservation_affinity
    =
  { consume_reservation_type; key; values }

let placement__managed_cluster__config__gce_cluster_config__shielded_instance_config
    ?enable_integrity_monitoring ?enable_secure_boot ?enable_vtpm ()
    :
    placement__managed_cluster__config__gce_cluster_config__shielded_instance_config
    =
  { enable_integrity_monitoring; enable_secure_boot; enable_vtpm }

let placement__managed_cluster__config__gce_cluster_config
    ?internal_ip_only ?metadata ?network ?private_ipv6_google_access
    ?service_account ?service_account_scopes ?subnetwork ?tags ?zone
    ?(node_group_affinity = []) ?(reservation_affinity = [])
    ?(shielded_instance_config = []) () :
    placement__managed_cluster__config__gce_cluster_config =
  {
    internal_ip_only;
    metadata;
    network;
    private_ipv6_google_access;
    service_account;
    service_account_scopes;
    subnetwork;
    tags;
    zone;
    node_group_affinity;
    reservation_affinity;
    shielded_instance_config;
  }

let placement__managed_cluster__config__initialization_actions
    ?executable_file ?execution_timeout () :
    placement__managed_cluster__config__initialization_actions =
  { executable_file; execution_timeout }

let placement__managed_cluster__config__lifecycle_config
    ?auto_delete_time ?auto_delete_ttl ?idle_delete_ttl () :
    placement__managed_cluster__config__lifecycle_config =
  { auto_delete_time; auto_delete_ttl; idle_delete_ttl }

let placement__managed_cluster__config__master_config__accelerators
    ?accelerator_count ?accelerator_type () :
    placement__managed_cluster__config__master_config__accelerators =
  { accelerator_count; accelerator_type }

let placement__managed_cluster__config__master_config__disk_config
    ?boot_disk_size_gb ?boot_disk_type ?num_local_ssds () :
    placement__managed_cluster__config__master_config__disk_config =
  { boot_disk_size_gb; boot_disk_type; num_local_ssds }

let placement__managed_cluster__config__master_config ?image
    ?machine_type ?min_cpu_platform ?num_instances ?preemptibility
    ?(accelerators = []) ?(disk_config = []) () :
    placement__managed_cluster__config__master_config =
  {
    image;
    machine_type;
    min_cpu_platform;
    num_instances;
    preemptibility;
    accelerators;
    disk_config;
  }

let placement__managed_cluster__config__secondary_worker_config__accelerators
    ?accelerator_count ?accelerator_type () :
    placement__managed_cluster__config__secondary_worker_config__accelerators
    =
  { accelerator_count; accelerator_type }

let placement__managed_cluster__config__secondary_worker_config__disk_config
    ?boot_disk_size_gb ?boot_disk_type ?num_local_ssds () :
    placement__managed_cluster__config__secondary_worker_config__disk_config
    =
  { boot_disk_size_gb; boot_disk_type; num_local_ssds }

let placement__managed_cluster__config__secondary_worker_config
    ?image ?machine_type ?min_cpu_platform ?num_instances
    ?preemptibility ?(accelerators = []) ?(disk_config = []) () :
    placement__managed_cluster__config__secondary_worker_config =
  {
    image;
    machine_type;
    min_cpu_platform;
    num_instances;
    preemptibility;
    accelerators;
    disk_config;
  }

let placement__managed_cluster__config__security_config__kerberos_config
    ?cross_realm_trust_admin_server ?cross_realm_trust_kdc
    ?cross_realm_trust_realm ?cross_realm_trust_shared_password
    ?enable_kerberos ?kdc_db_key ?key_password ?keystore
    ?keystore_password ?kms_key ?realm ?root_principal_password
    ?tgt_lifetime_hours ?truststore ?truststore_password () :
    placement__managed_cluster__config__security_config__kerberos_config
    =
  {
    cross_realm_trust_admin_server;
    cross_realm_trust_kdc;
    cross_realm_trust_realm;
    cross_realm_trust_shared_password;
    enable_kerberos;
    kdc_db_key;
    key_password;
    keystore;
    keystore_password;
    kms_key;
    realm;
    root_principal_password;
    tgt_lifetime_hours;
    truststore;
    truststore_password;
  }

let placement__managed_cluster__config__security_config
    ?(kerberos_config = []) () :
    placement__managed_cluster__config__security_config =
  { kerberos_config }

let placement__managed_cluster__config__software_config
    ?image_version ?optional_components ?properties () :
    placement__managed_cluster__config__software_config =
  { image_version; optional_components; properties }

let placement__managed_cluster__config__worker_config__accelerators
    ?accelerator_count ?accelerator_type () :
    placement__managed_cluster__config__worker_config__accelerators =
  { accelerator_count; accelerator_type }

let placement__managed_cluster__config__worker_config__disk_config
    ?boot_disk_size_gb ?boot_disk_type ?num_local_ssds () :
    placement__managed_cluster__config__worker_config__disk_config =
  { boot_disk_size_gb; boot_disk_type; num_local_ssds }

let placement__managed_cluster__config__worker_config ?image
    ?machine_type ?min_cpu_platform ?num_instances ?preemptibility
    ?(accelerators = []) ?(disk_config = []) () :
    placement__managed_cluster__config__worker_config =
  {
    image;
    machine_type;
    min_cpu_platform;
    num_instances;
    preemptibility;
    accelerators;
    disk_config;
  }

let placement__managed_cluster__config ?staging_bucket ?temp_bucket
    ?(autoscaling_config = []) ?(encryption_config = [])
    ?(endpoint_config = []) ?(gce_cluster_config = [])
    ?(initialization_actions = []) ?(lifecycle_config = [])
    ?(master_config = []) ?(secondary_worker_config = [])
    ?(security_config = []) ?(software_config = [])
    ?(worker_config = []) () : placement__managed_cluster__config =
  {
    staging_bucket;
    temp_bucket;
    autoscaling_config;
    encryption_config;
    endpoint_config;
    gce_cluster_config;
    initialization_actions;
    lifecycle_config;
    master_config;
    secondary_worker_config;
    security_config;
    software_config;
    worker_config;
  }

let placement__managed_cluster ?labels ~cluster_name ~config () :
    placement__managed_cluster =
  { cluster_name; labels; config }

let placement ?(cluster_selector = []) ?(managed_cluster = []) () :
    placement =
  { cluster_selector; managed_cluster }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataproc_workflow_template ?dag_timeout ?id ?labels
    ?project ?version ?(parameters = []) ?timeouts ~location ~name
    ~jobs ~placement () : google_dataproc_workflow_template =
  {
    dag_timeout;
    id;
    labels;
    location;
    name;
    project;
    version;
    jobs;
    parameters;
    placement;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  dag_timeout : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  version : float prop;
}

let make ?dag_timeout ?id ?labels ?project ?version
    ?(parameters = []) ?timeouts ~location ~name ~jobs ~placement
    __id =
  let __type = "google_dataproc_workflow_template" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       dag_timeout = Prop.computed __type __id "dag_timeout";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataproc_workflow_template
        (google_dataproc_workflow_template ?dag_timeout ?id ?labels
           ?project ?version ~parameters ?timeouts ~location ~name
           ~jobs ~placement ());
    attrs = __attrs;
  }

let register ?tf_module ?dag_timeout ?id ?labels ?project ?version
    ?(parameters = []) ?timeouts ~location ~name ~jobs ~placement
    __id =
  let (r : _ Tf_core.resource) =
    make ?dag_timeout ?id ?labels ?project ?version ~parameters
      ?timeouts ~location ~name ~jobs ~placement __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
