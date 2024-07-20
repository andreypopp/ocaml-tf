(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type command = {
  name : string prop option; [@option]
  python_version : string prop option; [@option]
  runtime : string prop option; [@option]
  script_location : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : command) -> ()

let yojson_of_command =
  (function
   | {
       name = v_name;
       python_version = v_python_version;
       runtime = v_runtime;
       script_location = v_script_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_script_location
         in
         ("script_location", arg) :: bnds
       in
       let bnds =
         match v_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_python_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "python_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : command -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_command

[@@@deriving.end]

type execution_property = {
  max_concurrent_runs : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_property) -> ()

let yojson_of_execution_property =
  (function
   | { max_concurrent_runs = v_max_concurrent_runs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_concurrent_runs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_runs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : execution_property -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_property

[@@@deriving.end]

type notification_property = {
  notify_delay_after : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_property) -> ()

let yojson_of_notification_property =
  (function
   | { notify_delay_after = v_notify_delay_after } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_notify_delay_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "notify_delay_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notification_property -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_property

[@@@deriving.end]

type aws_glue_job = {
  connections : string prop list option; [@option]
  default_arguments : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  execution_class : string prop option; [@option]
  glue_version : string prop option; [@option]
  id : string prop option; [@option]
  maintenance_window : string prop option; [@option]
  max_capacity : float prop option; [@option]
  max_retries : float prop option; [@option]
  name : string prop;
  non_overridable_arguments : (string * string prop) list option;
      [@option]
  number_of_workers : float prop option; [@option]
  role_arn : string prop;
  security_configuration : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeout : float prop option; [@option]
  worker_type : string prop option; [@option]
  command : command list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  execution_property : execution_property list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notification_property : notification_property list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_job) -> ()

let yojson_of_aws_glue_job =
  (function
   | {
       connections = v_connections;
       default_arguments = v_default_arguments;
       description = v_description;
       execution_class = v_execution_class;
       glue_version = v_glue_version;
       id = v_id;
       maintenance_window = v_maintenance_window;
       max_capacity = v_max_capacity;
       max_retries = v_max_retries;
       name = v_name;
       non_overridable_arguments = v_non_overridable_arguments;
       number_of_workers = v_number_of_workers;
       role_arn = v_role_arn;
       security_configuration = v_security_configuration;
       tags = v_tags;
       tags_all = v_tags_all;
       timeout = v_timeout;
       worker_type = v_worker_type;
       command = v_command;
       execution_property = v_execution_property;
       notification_property = v_notification_property;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_property then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_property)
               v_notification_property
           in
           let bnd = "notification_property", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_execution_property then bnds
         else
           let arg =
             (yojson_of_list yojson_of_execution_property)
               v_execution_property
           in
           let bnd = "execution_property", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_command then bnds
         else
           let arg = (yojson_of_list yojson_of_command) v_command in
           let bnd = "command", arg in
           bnd :: bnds
       in
       let bnds =
         match v_worker_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_number_of_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_non_overridable_arguments with
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
             let bnd = "non_overridable_arguments", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_max_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_window", arg in
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
         match v_glue_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "glue_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_class", arg in
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
         match v_default_arguments with
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
             let bnd = "default_arguments", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "connections", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_job

[@@@deriving.end]

let command ?name ?python_version ?runtime ~script_location () :
    command =
  { name; python_version; runtime; script_location }

let execution_property ?max_concurrent_runs () : execution_property =
  { max_concurrent_runs }

let notification_property ?notify_delay_after () :
    notification_property =
  { notify_delay_after }

let aws_glue_job ?connections ?default_arguments ?description
    ?execution_class ?glue_version ?id ?maintenance_window
    ?max_capacity ?max_retries ?non_overridable_arguments
    ?number_of_workers ?security_configuration ?tags ?tags_all
    ?timeout ?worker_type ?(execution_property = [])
    ?(notification_property = []) ~name ~role_arn ~command () :
    aws_glue_job =
  {
    connections;
    default_arguments;
    description;
    execution_class;
    glue_version;
    id;
    maintenance_window;
    max_capacity;
    max_retries;
    name;
    non_overridable_arguments;
    number_of_workers;
    role_arn;
    security_configuration;
    tags;
    tags_all;
    timeout;
    worker_type;
    command;
    execution_property;
    notification_property;
  }

type t = {
  tf_name : string;
  arn : string prop;
  connections : string list prop;
  default_arguments : (string * string) list prop;
  description : string prop;
  execution_class : string prop;
  glue_version : string prop;
  id : string prop;
  maintenance_window : string prop;
  max_capacity : float prop;
  max_retries : float prop;
  name : string prop;
  non_overridable_arguments : (string * string) list prop;
  number_of_workers : float prop;
  role_arn : string prop;
  security_configuration : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  worker_type : string prop;
}

let make ?connections ?default_arguments ?description
    ?execution_class ?glue_version ?id ?maintenance_window
    ?max_capacity ?max_retries ?non_overridable_arguments
    ?number_of_workers ?security_configuration ?tags ?tags_all
    ?timeout ?worker_type ?(execution_property = [])
    ?(notification_property = []) ~name ~role_arn ~command __id =
  let __type = "aws_glue_job" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       connections = Prop.computed __type __id "connections";
       default_arguments =
         Prop.computed __type __id "default_arguments";
       description = Prop.computed __type __id "description";
       execution_class = Prop.computed __type __id "execution_class";
       glue_version = Prop.computed __type __id "glue_version";
       id = Prop.computed __type __id "id";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       max_capacity = Prop.computed __type __id "max_capacity";
       max_retries = Prop.computed __type __id "max_retries";
       name = Prop.computed __type __id "name";
       non_overridable_arguments =
         Prop.computed __type __id "non_overridable_arguments";
       number_of_workers =
         Prop.computed __type __id "number_of_workers";
       role_arn = Prop.computed __type __id "role_arn";
       security_configuration =
         Prop.computed __type __id "security_configuration";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timeout = Prop.computed __type __id "timeout";
       worker_type = Prop.computed __type __id "worker_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_job
        (aws_glue_job ?connections ?default_arguments ?description
           ?execution_class ?glue_version ?id ?maintenance_window
           ?max_capacity ?max_retries ?non_overridable_arguments
           ?number_of_workers ?security_configuration ?tags ?tags_all
           ?timeout ?worker_type ~execution_property
           ~notification_property ~name ~role_arn ~command ());
    attrs = __attrs;
  }

let register ?tf_module ?connections ?default_arguments ?description
    ?execution_class ?glue_version ?id ?maintenance_window
    ?max_capacity ?max_retries ?non_overridable_arguments
    ?number_of_workers ?security_configuration ?tags ?tags_all
    ?timeout ?worker_type ?(execution_property = [])
    ?(notification_property = []) ~name ~role_arn ~command __id =
  let (r : _ Tf_core.resource) =
    make ?connections ?default_arguments ?description
      ?execution_class ?glue_version ?id ?maintenance_window
      ?max_capacity ?max_retries ?non_overridable_arguments
      ?number_of_workers ?security_configuration ?tags ?tags_all
      ?timeout ?worker_type ~execution_property
      ~notification_property ~name ~role_arn ~command __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
