(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type execution_spec = {
  args : (string * string prop) list option; [@option]
  kms_key : string prop option; [@option]
  max_job_execution_lifetime : string prop option; [@option]
  project : string prop option; [@option]
  service_account : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_spec) -> ()

let yojson_of_execution_spec =
  (function
   | {
       args = v_args;
       kms_key = v_kms_key;
       max_job_execution_lifetime = v_max_job_execution_lifetime;
       project = v_project;
       service_account = v_service_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
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
         match v_max_job_execution_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_job_execution_lifetime", arg in
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
         match v_args with
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
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : execution_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_spec

[@@@deriving.end]

type notebook__infrastructure_spec__batch = {
  executors_count : float prop option; [@option]
  max_executors_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notebook__infrastructure_spec__batch) -> ()

let yojson_of_notebook__infrastructure_spec__batch =
  (function
   | {
       executors_count = v_executors_count;
       max_executors_count = v_max_executors_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_executors_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_executors_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_executors_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "executors_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notebook__infrastructure_spec__batch ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notebook__infrastructure_spec__batch

[@@@deriving.end]

type notebook__infrastructure_spec__container_image = {
  image : string prop option; [@option]
  java_jars : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
  python_packages : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : notebook__infrastructure_spec__container_image) -> ()

let yojson_of_notebook__infrastructure_spec__container_image =
  (function
   | {
       image = v_image;
       java_jars = v_java_jars;
       properties = v_properties;
       python_packages = v_python_packages;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_python_packages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "python_packages", arg in
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
         match v_java_jars with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "java_jars", arg in
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
    : notebook__infrastructure_spec__container_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notebook__infrastructure_spec__container_image

[@@@deriving.end]

type notebook__infrastructure_spec__vpc_network = {
  network : string prop option; [@option]
  network_tags : string prop list option; [@option]
  sub_network : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notebook__infrastructure_spec__vpc_network) -> ()

let yojson_of_notebook__infrastructure_spec__vpc_network =
  (function
   | {
       network = v_network;
       network_tags = v_network_tags;
       sub_network = v_sub_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sub_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sub_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_tags", arg in
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
       `Assoc bnds
    : notebook__infrastructure_spec__vpc_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notebook__infrastructure_spec__vpc_network

[@@@deriving.end]

type notebook__infrastructure_spec = {
  batch : notebook__infrastructure_spec__batch list;
  container_image :
    notebook__infrastructure_spec__container_image list;
  vpc_network : notebook__infrastructure_spec__vpc_network list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notebook__infrastructure_spec) -> ()

let yojson_of_notebook__infrastructure_spec =
  (function
   | {
       batch = v_batch;
       container_image = v_container_image;
       vpc_network = v_vpc_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_notebook__infrastructure_spec__vpc_network
             v_vpc_network
         in
         ("vpc_network", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_notebook__infrastructure_spec__container_image
             v_container_image
         in
         ("container_image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_notebook__infrastructure_spec__batch v_batch
         in
         ("batch", arg) :: bnds
       in
       `Assoc bnds
    : notebook__infrastructure_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notebook__infrastructure_spec

[@@@deriving.end]

type notebook = {
  archive_uris : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  notebook : string prop;
  infrastructure_spec : notebook__infrastructure_spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notebook) -> ()

let yojson_of_notebook =
  (function
   | {
       archive_uris = v_archive_uris;
       file_uris = v_file_uris;
       notebook = v_notebook;
       infrastructure_spec = v_infrastructure_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_notebook__infrastructure_spec
             v_infrastructure_spec
         in
         ("infrastructure_spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_notebook in
         ("notebook", arg) :: bnds
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
    : notebook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notebook

[@@@deriving.end]

type spark__infrastructure_spec__batch = {
  executors_count : float prop option; [@option]
  max_executors_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark__infrastructure_spec__batch) -> ()

let yojson_of_spark__infrastructure_spec__batch =
  (function
   | {
       executors_count = v_executors_count;
       max_executors_count = v_max_executors_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_executors_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_executors_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_executors_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "executors_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spark__infrastructure_spec__batch ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark__infrastructure_spec__batch

[@@@deriving.end]

type spark__infrastructure_spec__container_image = {
  image : string prop option; [@option]
  java_jars : string prop list option; [@option]
  properties : (string * string prop) list option; [@option]
  python_packages : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark__infrastructure_spec__container_image) -> ()

let yojson_of_spark__infrastructure_spec__container_image =
  (function
   | {
       image = v_image;
       java_jars = v_java_jars;
       properties = v_properties;
       python_packages = v_python_packages;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_python_packages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "python_packages", arg in
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
         match v_java_jars with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "java_jars", arg in
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
    : spark__infrastructure_spec__container_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark__infrastructure_spec__container_image

[@@@deriving.end]

type spark__infrastructure_spec__vpc_network = {
  network : string prop option; [@option]
  network_tags : string prop list option; [@option]
  sub_network : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark__infrastructure_spec__vpc_network) -> ()

let yojson_of_spark__infrastructure_spec__vpc_network =
  (function
   | {
       network = v_network;
       network_tags = v_network_tags;
       sub_network = v_sub_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sub_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sub_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_tags", arg in
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
       `Assoc bnds
    : spark__infrastructure_spec__vpc_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark__infrastructure_spec__vpc_network

[@@@deriving.end]

type spark__infrastructure_spec = {
  batch : spark__infrastructure_spec__batch list;
  container_image : spark__infrastructure_spec__container_image list;
  vpc_network : spark__infrastructure_spec__vpc_network list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark__infrastructure_spec) -> ()

let yojson_of_spark__infrastructure_spec =
  (function
   | {
       batch = v_batch;
       container_image = v_container_image;
       vpc_network = v_vpc_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spark__infrastructure_spec__vpc_network
             v_vpc_network
         in
         ("vpc_network", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spark__infrastructure_spec__container_image
             v_container_image
         in
         ("container_image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spark__infrastructure_spec__batch
             v_batch
         in
         ("batch", arg) :: bnds
       in
       `Assoc bnds
    : spark__infrastructure_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark__infrastructure_spec

[@@@deriving.end]

type spark = {
  archive_uris : string prop list option; [@option]
  file_uris : string prop list option; [@option]
  main_class : string prop option; [@option]
  main_jar_file_uri : string prop option; [@option]
  python_script_file : string prop option; [@option]
  sql_script : string prop option; [@option]
  sql_script_file : string prop option; [@option]
  infrastructure_spec : spark__infrastructure_spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spark) -> ()

let yojson_of_spark =
  (function
   | {
       archive_uris = v_archive_uris;
       file_uris = v_file_uris;
       main_class = v_main_class;
       main_jar_file_uri = v_main_jar_file_uri;
       python_script_file = v_python_script_file;
       sql_script = v_sql_script;
       sql_script_file = v_sql_script_file;
       infrastructure_spec = v_infrastructure_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spark__infrastructure_spec
             v_infrastructure_spec
         in
         ("infrastructure_spec", arg) :: bnds
       in
       let bnds =
         match v_sql_script_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_script_file", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_script", arg in
             bnd :: bnds
       in
       let bnds =
         match v_python_script_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "python_script_file", arg in
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
    : spark -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark

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

type trigger_spec = {
  disabled : bool prop option; [@option]
  max_retries : float prop option; [@option]
  schedule : string prop option; [@option]
  start_time : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger_spec) -> ()

let yojson_of_trigger_spec =
  (function
   | {
       disabled = v_disabled;
       max_retries = v_max_retries;
       schedule = v_schedule;
       start_time = v_start_time;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger_spec

[@@@deriving.end]

type execution_status__latest_job = {
  end_time : string prop;
  message : string prop;
  name : string prop;
  retry_count : float prop;
  service : string prop;
  service_job : string prop;
  start_time : string prop;
  state : string prop;
  uid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_status__latest_job) -> ()

let yojson_of_execution_status__latest_job =
  (function
   | {
       end_time = v_end_time;
       message = v_message;
       name = v_name;
       retry_count = v_retry_count;
       service = v_service;
       service_job = v_service_job;
       start_time = v_start_time;
       state = v_state;
       uid = v_uid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uid in
         ("uid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_job in
         ("service_job", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_retry_count in
         ("retry_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       `Assoc bnds
    : execution_status__latest_job ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_status__latest_job

[@@@deriving.end]

type execution_status = {
  latest_job : execution_status__latest_job list;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_status) -> ()

let yojson_of_execution_status =
  (function
   | { latest_job = v_latest_job; update_time = v_update_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_execution_status__latest_job
             v_latest_job
         in
         ("latest_job", arg) :: bnds
       in
       `Assoc bnds
    : execution_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_status

[@@@deriving.end]

type google_dataplex_task = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  lake : string prop option; [@option]
  location : string prop option; [@option]
  project : string prop option; [@option]
  task_id : string prop option; [@option]
  execution_spec : execution_spec list;
  notebook : notebook list;
  spark : spark list;
  timeouts : timeouts option;
  trigger_spec : trigger_spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataplex_task) -> ()

let yojson_of_google_dataplex_task =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       lake = v_lake;
       location = v_location;
       project = v_project;
       task_id = v_task_id;
       execution_spec = v_execution_spec;
       notebook = v_notebook;
       spark = v_spark;
       timeouts = v_timeouts;
       trigger_spec = v_trigger_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_trigger_spec v_trigger_spec
         in
         ("trigger_spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spark v_spark in
         ("spark", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_notebook v_notebook in
         ("notebook", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_execution_spec v_execution_spec
         in
         ("execution_spec", arg) :: bnds
       in
       let bnds =
         match v_task_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "task_id", arg in
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lake with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lake", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : google_dataplex_task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataplex_task

[@@@deriving.end]

let execution_spec ?args ?kms_key ?max_job_execution_lifetime
    ?project ~service_account () : execution_spec =
  {
    args;
    kms_key;
    max_job_execution_lifetime;
    project;
    service_account;
  }

let notebook__infrastructure_spec__batch ?executors_count
    ?max_executors_count () : notebook__infrastructure_spec__batch =
  { executors_count; max_executors_count }

let notebook__infrastructure_spec__container_image ?image ?java_jars
    ?properties ?python_packages () :
    notebook__infrastructure_spec__container_image =
  { image; java_jars; properties; python_packages }

let notebook__infrastructure_spec__vpc_network ?network ?network_tags
    ?sub_network () : notebook__infrastructure_spec__vpc_network =
  { network; network_tags; sub_network }

let notebook__infrastructure_spec ?(batch = [])
    ?(container_image = []) ?(vpc_network = []) () :
    notebook__infrastructure_spec =
  { batch; container_image; vpc_network }

let notebook ?archive_uris ?file_uris ?(infrastructure_spec = [])
    ~notebook () : notebook =
  { archive_uris; file_uris; notebook; infrastructure_spec }

let spark__infrastructure_spec__batch ?executors_count
    ?max_executors_count () : spark__infrastructure_spec__batch =
  { executors_count; max_executors_count }

let spark__infrastructure_spec__container_image ?image ?java_jars
    ?properties ?python_packages () :
    spark__infrastructure_spec__container_image =
  { image; java_jars; properties; python_packages }

let spark__infrastructure_spec__vpc_network ?network ?network_tags
    ?sub_network () : spark__infrastructure_spec__vpc_network =
  { network; network_tags; sub_network }

let spark__infrastructure_spec ?(batch = []) ?(container_image = [])
    ?(vpc_network = []) () : spark__infrastructure_spec =
  { batch; container_image; vpc_network }

let spark ?archive_uris ?file_uris ?main_class ?main_jar_file_uri
    ?python_script_file ?sql_script ?sql_script_file
    ?(infrastructure_spec = []) () : spark =
  {
    archive_uris;
    file_uris;
    main_class;
    main_jar_file_uri;
    python_script_file;
    sql_script;
    sql_script_file;
    infrastructure_spec;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let trigger_spec ?disabled ?max_retries ?schedule ?start_time ~type_
    () : trigger_spec =
  { disabled; max_retries; schedule; start_time; type_ }

let google_dataplex_task ?description ?display_name ?id ?labels ?lake
    ?location ?project ?task_id ?(notebook = []) ?(spark = [])
    ?timeouts ~execution_spec ~trigger_spec () : google_dataplex_task
    =
  {
    description;
    display_name;
    id;
    labels;
    lake;
    location;
    project;
    task_id;
    execution_spec;
    notebook;
    spark;
    timeouts;
    trigger_spec;
  }

type t = {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  execution_status : execution_status list prop;
  id : string prop;
  labels : (string * string) list prop;
  lake : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  task_id : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?labels ?lake ?location
    ?project ?task_id ?(notebook = []) ?(spark = []) ?timeouts
    ~execution_spec ~trigger_spec __id =
  let __type = "google_dataplex_task" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       execution_status =
         Prop.computed __type __id "execution_status";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       lake = Prop.computed __type __id "lake";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       task_id = Prop.computed __type __id "task_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataplex_task
        (google_dataplex_task ?description ?display_name ?id ?labels
           ?lake ?location ?project ?task_id ~notebook ~spark
           ?timeouts ~execution_spec ~trigger_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?labels ?lake
    ?location ?project ?task_id ?(notebook = []) ?(spark = [])
    ?timeouts ~execution_spec ~trigger_spec __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?labels ?lake ?location
      ?project ?task_id ~notebook ~spark ?timeouts ~execution_spec
      ~trigger_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
