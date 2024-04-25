(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type artifact_config__s3_encryption = {
  encryption_mode : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : artifact_config__s3_encryption) -> ()

let yojson_of_artifact_config__s3_encryption =
  (function
   | {
       encryption_mode = v_encryption_mode;
       kms_key_arn = v_kms_key_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : artifact_config__s3_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_artifact_config__s3_encryption

[@@@deriving.end]

type artifact_config = {
  s3_encryption : artifact_config__s3_encryption list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : artifact_config) -> ()

let yojson_of_artifact_config =
  (function
   | { s3_encryption = v_s3_encryption } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_artifact_config__s3_encryption
             v_s3_encryption
         in
         ("s3_encryption", arg) :: bnds
       in
       `Assoc bnds
    : artifact_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_artifact_config

[@@@deriving.end]

type run_config = {
  active_tracing : bool prop option; [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  memory_in_mb : float prop option; [@option]
  timeout_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : run_config) -> ()

let yojson_of_run_config =
  (function
   | {
       active_tracing = v_active_tracing;
       environment_variables = v_environment_variables;
       memory_in_mb = v_memory_in_mb;
       timeout_in_seconds = v_timeout_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_in_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_in_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_variables with
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
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_tracing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active_tracing", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : run_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_run_config

[@@@deriving.end]

type schedule = {
  duration_in_seconds : float prop option; [@option]
  expression : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       duration_in_seconds = v_duration_in_seconds;
       expression = v_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         match v_duration_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "duration_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type vpc_config = {
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type timeline = {
  created : string prop;
  last_modified : string prop;
  last_started : string prop;
  last_stopped : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeline) -> ()

let yojson_of_timeline =
  (function
   | {
       created = v_created;
       last_modified = v_last_modified;
       last_started = v_last_started;
       last_stopped = v_last_stopped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_stopped in
         ("last_stopped", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_started in
         ("last_started", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_modified in
         ("last_modified", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created in
         ("created", arg) :: bnds
       in
       `Assoc bnds
    : timeline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeline

[@@@deriving.end]

type aws_synthetics_canary = {
  artifact_s3_location : string prop;
  delete_lambda : bool prop option; [@option]
  execution_role_arn : string prop;
  failure_retention_period : float prop option; [@option]
  handler : string prop;
  id : string prop option; [@option]
  name : string prop;
  runtime_version : string prop;
  s3_bucket : string prop option; [@option]
  s3_key : string prop option; [@option]
  s3_version : string prop option; [@option]
  start_canary : bool prop option; [@option]
  success_retention_period : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  zip_file : string prop option; [@option]
  artifact_config : artifact_config list;
  run_config : run_config list;
  schedule : schedule list;
  vpc_config : vpc_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_synthetics_canary) -> ()

let yojson_of_aws_synthetics_canary =
  (function
   | {
       artifact_s3_location = v_artifact_s3_location;
       delete_lambda = v_delete_lambda;
       execution_role_arn = v_execution_role_arn;
       failure_retention_period = v_failure_retention_period;
       handler = v_handler;
       id = v_id;
       name = v_name;
       runtime_version = v_runtime_version;
       s3_bucket = v_s3_bucket;
       s3_key = v_s3_key;
       s3_version = v_s3_version;
       start_canary = v_start_canary;
       success_retention_period = v_success_retention_period;
       tags = v_tags;
       tags_all = v_tags_all;
       zip_file = v_zip_file;
       artifact_config = v_artifact_config;
       run_config = v_run_config;
       schedule = v_schedule;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_config v_vpc_config
         in
         ("vpc_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_schedule v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_run_config v_run_config
         in
         ("run_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_artifact_config v_artifact_config
         in
         ("artifact_config", arg) :: bnds
       in
       let bnds =
         match v_zip_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zip_file", arg in
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
         match v_success_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_canary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "start_canary", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_runtime_version
         in
         ("runtime_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_handler in
         ("handler", arg) :: bnds
       in
       let bnds =
         match v_failure_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_role_arn
         in
         ("execution_role_arn", arg) :: bnds
       in
       let bnds =
         match v_delete_lambda with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_lambda", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_artifact_s3_location
         in
         ("artifact_s3_location", arg) :: bnds
       in
       `Assoc bnds
    : aws_synthetics_canary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_synthetics_canary

[@@@deriving.end]

let artifact_config__s3_encryption ?encryption_mode ?kms_key_arn () :
    artifact_config__s3_encryption =
  { encryption_mode; kms_key_arn }

let artifact_config ?(s3_encryption = []) () : artifact_config =
  { s3_encryption }

let run_config ?active_tracing ?environment_variables ?memory_in_mb
    ?timeout_in_seconds () : run_config =
  {
    active_tracing;
    environment_variables;
    memory_in_mb;
    timeout_in_seconds;
  }

let schedule ?duration_in_seconds ~expression () : schedule =
  { duration_in_seconds; expression }

let vpc_config ?security_group_ids ?subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_synthetics_canary ?delete_lambda ?failure_retention_period
    ?id ?s3_bucket ?s3_key ?s3_version ?start_canary
    ?success_retention_period ?tags ?tags_all ?zip_file
    ?(artifact_config = []) ?(run_config = []) ?(vpc_config = [])
    ~artifact_s3_location ~execution_role_arn ~handler ~name
    ~runtime_version ~schedule () : aws_synthetics_canary =
  {
    artifact_s3_location;
    delete_lambda;
    execution_role_arn;
    failure_retention_period;
    handler;
    id;
    name;
    runtime_version;
    s3_bucket;
    s3_key;
    s3_version;
    start_canary;
    success_retention_period;
    tags;
    tags_all;
    zip_file;
    artifact_config;
    run_config;
    schedule;
    vpc_config;
  }

type t = {
  arn : string prop;
  artifact_s3_location : string prop;
  delete_lambda : bool prop;
  engine_arn : string prop;
  execution_role_arn : string prop;
  failure_retention_period : float prop;
  handler : string prop;
  id : string prop;
  name : string prop;
  runtime_version : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_version : string prop;
  source_location_arn : string prop;
  start_canary : bool prop;
  status : string prop;
  success_retention_period : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeline : timeline list prop;
  zip_file : string prop;
}

let make ?delete_lambda ?failure_retention_period ?id ?s3_bucket
    ?s3_key ?s3_version ?start_canary ?success_retention_period ?tags
    ?tags_all ?zip_file ?(artifact_config = []) ?(run_config = [])
    ?(vpc_config = []) ~artifact_s3_location ~execution_role_arn
    ~handler ~name ~runtime_version ~schedule __id =
  let __type = "aws_synthetics_canary" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       artifact_s3_location =
         Prop.computed __type __id "artifact_s3_location";
       delete_lambda = Prop.computed __type __id "delete_lambda";
       engine_arn = Prop.computed __type __id "engine_arn";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       failure_retention_period =
         Prop.computed __type __id "failure_retention_period";
       handler = Prop.computed __type __id "handler";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       runtime_version = Prop.computed __type __id "runtime_version";
       s3_bucket = Prop.computed __type __id "s3_bucket";
       s3_key = Prop.computed __type __id "s3_key";
       s3_version = Prop.computed __type __id "s3_version";
       source_location_arn =
         Prop.computed __type __id "source_location_arn";
       start_canary = Prop.computed __type __id "start_canary";
       status = Prop.computed __type __id "status";
       success_retention_period =
         Prop.computed __type __id "success_retention_period";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timeline = Prop.computed __type __id "timeline";
       zip_file = Prop.computed __type __id "zip_file";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_synthetics_canary
        (aws_synthetics_canary ?delete_lambda
           ?failure_retention_period ?id ?s3_bucket ?s3_key
           ?s3_version ?start_canary ?success_retention_period ?tags
           ?tags_all ?zip_file ~artifact_config ~run_config
           ~vpc_config ~artifact_s3_location ~execution_role_arn
           ~handler ~name ~runtime_version ~schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_lambda ?failure_retention_period ?id
    ?s3_bucket ?s3_key ?s3_version ?start_canary
    ?success_retention_period ?tags ?tags_all ?zip_file
    ?(artifact_config = []) ?(run_config = []) ?(vpc_config = [])
    ~artifact_s3_location ~execution_role_arn ~handler ~name
    ~runtime_version ~schedule __id =
  let (r : _ Tf_core.resource) =
    make ?delete_lambda ?failure_retention_period ?id ?s3_bucket
      ?s3_key ?s3_version ?start_canary ?success_retention_period
      ?tags ?tags_all ?zip_file ~artifact_config ~run_config
      ~vpc_config ~artifact_s3_location ~execution_role_arn ~handler
      ~name ~runtime_version ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
