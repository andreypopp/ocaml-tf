(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type excludes = {
  filter_type : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : excludes) -> ()

let yojson_of_excludes =
  (function
   | { filter_type = v_filter_type; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : excludes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_excludes

[@@@deriving.end]

type includes = {
  filter_type : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : includes) -> ()

let yojson_of_includes =
  (function
   | { filter_type = v_filter_type; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : includes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_includes

[@@@deriving.end]

type options = {
  atime : string prop option; [@option]
  bytes_per_second : float prop option; [@option]
  gid : string prop option; [@option]
  log_level : string prop option; [@option]
  mtime : string prop option; [@option]
  object_tags : string prop option; [@option]
  overwrite_mode : string prop option; [@option]
  posix_permissions : string prop option; [@option]
  preserve_deleted_files : string prop option; [@option]
  preserve_devices : string prop option; [@option]
  security_descriptor_copy_flags : string prop option; [@option]
  task_queueing : string prop option; [@option]
  transfer_mode : string prop option; [@option]
  uid : string prop option; [@option]
  verify_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : options) -> ()

let yojson_of_options =
  (function
   | {
       atime = v_atime;
       bytes_per_second = v_bytes_per_second;
       gid = v_gid;
       log_level = v_log_level;
       mtime = v_mtime;
       object_tags = v_object_tags;
       overwrite_mode = v_overwrite_mode;
       posix_permissions = v_posix_permissions;
       preserve_deleted_files = v_preserve_deleted_files;
       preserve_devices = v_preserve_devices;
       security_descriptor_copy_flags =
         v_security_descriptor_copy_flags;
       task_queueing = v_task_queueing;
       transfer_mode = v_transfer_mode;
       uid = v_uid;
       verify_mode = v_verify_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_verify_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "verify_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_uid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transfer_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transfer_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_task_queueing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "task_queueing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_descriptor_copy_flags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_descriptor_copy_flags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_devices with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preserve_devices", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_deleted_files with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preserve_deleted_files", arg in
             bnd :: bnds
       in
       let bnds =
         match v_posix_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "posix_permissions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_overwrite_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "overwrite_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mtime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bytes_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bytes_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_atime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "atime", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_options

[@@@deriving.end]

type schedule = { schedule_expression : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | { schedule_expression = v_schedule_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schedule_expression
         in
         ("schedule_expression", arg) :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type task_report_config__report_overrides = {
  deleted_override : string prop option; [@option]
  skipped_override : string prop option; [@option]
  transferred_override : string prop option; [@option]
  verified_override : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : task_report_config__report_overrides) -> ()

let yojson_of_task_report_config__report_overrides =
  (function
   | {
       deleted_override = v_deleted_override;
       skipped_override = v_skipped_override;
       transferred_override = v_transferred_override;
       verified_override = v_verified_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_verified_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "verified_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transferred_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transferred_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skipped_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "skipped_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deleted_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deleted_override", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_report_config__report_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_report_config__report_overrides

[@@@deriving.end]

type task_report_config__s3_destination = {
  bucket_access_role_arn : string prop;
  s3_bucket_arn : string prop;
  subdirectory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : task_report_config__s3_destination) -> ()

let yojson_of_task_report_config__s3_destination =
  (function
   | {
       bucket_access_role_arn = v_bucket_access_role_arn;
       s3_bucket_arn = v_s3_bucket_arn;
       subdirectory = v_subdirectory;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subdirectory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subdirectory", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket_arn in
         ("s3_bucket_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bucket_access_role_arn
         in
         ("bucket_access_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : task_report_config__s3_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_report_config__s3_destination

[@@@deriving.end]

type task_report_config = {
  output_type : string prop option; [@option]
  report_level : string prop option; [@option]
  s3_object_versioning : string prop option; [@option]
  report_overrides : task_report_config__report_overrides list;
  s3_destination : task_report_config__s3_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : task_report_config) -> ()

let yojson_of_task_report_config =
  (function
   | {
       output_type = v_output_type;
       report_level = v_report_level;
       s3_object_versioning = v_s3_object_versioning;
       report_overrides = v_report_overrides;
       s3_destination = v_s3_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_report_config__s3_destination
             v_s3_destination
         in
         ("s3_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_task_report_config__report_overrides
             v_report_overrides
         in
         ("report_overrides", arg) :: bnds
       in
       let bnds =
         match v_s3_object_versioning with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_object_versioning", arg in
             bnd :: bnds
       in
       let bnds =
         match v_report_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "report_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_report_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_report_config

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_datasync_task = {
  cloudwatch_log_group_arn : string prop option; [@option]
  destination_location_arn : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  source_location_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  excludes : excludes list;
  includes : includes list;
  options : options list;
  schedule : schedule list;
  task_report_config : task_report_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_task) -> ()

let yojson_of_aws_datasync_task =
  (function
   | {
       cloudwatch_log_group_arn = v_cloudwatch_log_group_arn;
       destination_location_arn = v_destination_location_arn;
       id = v_id;
       name = v_name;
       source_location_arn = v_source_location_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       excludes = v_excludes;
       includes = v_includes;
       options = v_options;
       schedule = v_schedule;
       task_report_config = v_task_report_config;
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
           yojson_of_list yojson_of_task_report_config
             v_task_report_config
         in
         ("task_report_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_schedule v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_options v_options in
         ("options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_includes v_includes in
         ("includes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_excludes v_excludes in
         ("excludes", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_source_location_arn
         in
         ("source_location_arn", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_location_arn
         in
         ("destination_location_arn", arg) :: bnds
       in
       let bnds =
         match v_cloudwatch_log_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_log_group_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datasync_task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_task

[@@@deriving.end]

let excludes ?filter_type ?value () : excludes =
  { filter_type; value }

let includes ?filter_type ?value () : includes =
  { filter_type; value }

let options ?atime ?bytes_per_second ?gid ?log_level ?mtime
    ?object_tags ?overwrite_mode ?posix_permissions
    ?preserve_deleted_files ?preserve_devices
    ?security_descriptor_copy_flags ?task_queueing ?transfer_mode
    ?uid ?verify_mode () : options =
  {
    atime;
    bytes_per_second;
    gid;
    log_level;
    mtime;
    object_tags;
    overwrite_mode;
    posix_permissions;
    preserve_deleted_files;
    preserve_devices;
    security_descriptor_copy_flags;
    task_queueing;
    transfer_mode;
    uid;
    verify_mode;
  }

let schedule ~schedule_expression () : schedule =
  { schedule_expression }

let task_report_config__report_overrides ?deleted_override
    ?skipped_override ?transferred_override ?verified_override () :
    task_report_config__report_overrides =
  {
    deleted_override;
    skipped_override;
    transferred_override;
    verified_override;
  }

let task_report_config__s3_destination ?subdirectory
    ~bucket_access_role_arn ~s3_bucket_arn () :
    task_report_config__s3_destination =
  { bucket_access_role_arn; s3_bucket_arn; subdirectory }

let task_report_config ?output_type ?report_level
    ?s3_object_versioning ?(report_overrides = []) ~s3_destination ()
    : task_report_config =
  {
    output_type;
    report_level;
    s3_object_versioning;
    report_overrides;
    s3_destination;
  }

let timeouts ?create () : timeouts = { create }

let aws_datasync_task ?cloudwatch_log_group_arn ?id ?name ?tags
    ?tags_all ?(excludes = []) ?(includes = []) ?(options = [])
    ?(schedule = []) ?(task_report_config = []) ?timeouts
    ~destination_location_arn ~source_location_arn () :
    aws_datasync_task =
  {
    cloudwatch_log_group_arn;
    destination_location_arn;
    id;
    name;
    source_location_arn;
    tags;
    tags_all;
    excludes;
    includes;
    options;
    schedule;
    task_report_config;
    timeouts;
  }

type t = {
  arn : string prop;
  cloudwatch_log_group_arn : string prop;
  destination_location_arn : string prop;
  id : string prop;
  name : string prop;
  source_location_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?cloudwatch_log_group_arn ?id ?name ?tags ?tags_all
    ?(excludes = []) ?(includes = []) ?(options = [])
    ?(schedule = []) ?(task_report_config = []) ?timeouts
    ~destination_location_arn ~source_location_arn __id =
  let __type = "aws_datasync_task" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cloudwatch_log_group_arn =
         Prop.computed __type __id "cloudwatch_log_group_arn";
       destination_location_arn =
         Prop.computed __type __id "destination_location_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       source_location_arn =
         Prop.computed __type __id "source_location_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_task
        (aws_datasync_task ?cloudwatch_log_group_arn ?id ?name ?tags
           ?tags_all ~excludes ~includes ~options ~schedule
           ~task_report_config ?timeouts ~destination_location_arn
           ~source_location_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?cloudwatch_log_group_arn ?id ?name ?tags
    ?tags_all ?(excludes = []) ?(includes = []) ?(options = [])
    ?(schedule = []) ?(task_report_config = []) ?timeouts
    ~destination_location_arn ~source_location_arn __id =
  let (r : _ Tf_core.resource) =
    make ?cloudwatch_log_group_arn ?id ?name ?tags ?tags_all
      ~excludes ~includes ~options ~schedule ~task_report_config
      ?timeouts ~destination_location_arn ~source_location_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
