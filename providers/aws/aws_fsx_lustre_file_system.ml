(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_configuration = {
  destination : string prop option; [@option]
  level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_configuration) -> ()

let yojson_of_log_configuration =
  (function
   | { destination = v_destination; level = v_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_configuration

[@@@deriving.end]

type root_squash_configuration = {
  no_squash_nids : string prop list option; [@option]
  root_squash : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_squash_configuration) -> ()

let yojson_of_root_squash_configuration =
  (function
   | {
       no_squash_nids = v_no_squash_nids;
       root_squash = v_root_squash;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_root_squash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_squash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_squash_nids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "no_squash_nids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : root_squash_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_squash_configuration

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

type aws_fsx_lustre_file_system = {
  auto_import_policy : string prop option; [@option]
  automatic_backup_retention_days : float prop option; [@option]
  backup_id : string prop option; [@option]
  copy_tags_to_backups : bool prop option; [@option]
  daily_automatic_backup_start_time : string prop option; [@option]
  data_compression_type : string prop option; [@option]
  deployment_type : string prop option; [@option]
  drive_cache_type : string prop option; [@option]
  export_path : string prop option; [@option]
  file_system_type_version : string prop option; [@option]
  id : string prop option; [@option]
  import_path : string prop option; [@option]
  imported_file_chunk_size : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  per_unit_storage_throughput : float prop option; [@option]
  security_group_ids : string prop list option; [@option]
  storage_capacity : float prop option; [@option]
  storage_type : string prop option; [@option]
  subnet_ids : string prop list;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  weekly_maintenance_start_time : string prop option; [@option]
  log_configuration : log_configuration list;
  root_squash_configuration : root_squash_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_lustre_file_system) -> ()

let yojson_of_aws_fsx_lustre_file_system =
  (function
   | {
       auto_import_policy = v_auto_import_policy;
       automatic_backup_retention_days =
         v_automatic_backup_retention_days;
       backup_id = v_backup_id;
       copy_tags_to_backups = v_copy_tags_to_backups;
       daily_automatic_backup_start_time =
         v_daily_automatic_backup_start_time;
       data_compression_type = v_data_compression_type;
       deployment_type = v_deployment_type;
       drive_cache_type = v_drive_cache_type;
       export_path = v_export_path;
       file_system_type_version = v_file_system_type_version;
       id = v_id;
       import_path = v_import_path;
       imported_file_chunk_size = v_imported_file_chunk_size;
       kms_key_id = v_kms_key_id;
       per_unit_storage_throughput = v_per_unit_storage_throughput;
       security_group_ids = v_security_group_ids;
       storage_capacity = v_storage_capacity;
       storage_type = v_storage_type;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       weekly_maintenance_start_time =
         v_weekly_maintenance_start_time;
       log_configuration = v_log_configuration;
       root_squash_configuration = v_root_squash_configuration;
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
           yojson_of_list yojson_of_root_squash_configuration
             v_root_squash_configuration
         in
         ("root_squash_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_log_configuration
             v_log_configuration
         in
         ("log_configuration", arg) :: bnds
       in
       let bnds =
         match v_weekly_maintenance_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weekly_maintenance_start_time", arg in
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_capacity", arg in
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
       let bnds =
         match v_per_unit_storage_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "per_unit_storage_throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_imported_file_chunk_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "imported_file_chunk_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_import_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "import_path", arg in
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
         match v_file_system_type_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_type_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_export_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "export_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drive_cache_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "drive_cache_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_compression_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_compression_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_daily_automatic_backup_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "daily_automatic_backup_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_tags_to_backups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags_to_backups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_backup_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "automatic_backup_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_import_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_import_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_fsx_lustre_file_system -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_lustre_file_system

[@@@deriving.end]

let log_configuration ?destination ?level () : log_configuration =
  { destination; level }

let root_squash_configuration ?no_squash_nids ?root_squash () :
    root_squash_configuration =
  { no_squash_nids; root_squash }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_lustre_file_system ?auto_import_policy
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?data_compression_type
    ?deployment_type ?drive_cache_type ?export_path
    ?file_system_type_version ?id ?import_path
    ?imported_file_chunk_size ?kms_key_id
    ?per_unit_storage_throughput ?security_group_ids
    ?storage_capacity ?storage_type ?tags ?tags_all
    ?weekly_maintenance_start_time ?(log_configuration = [])
    ?(root_squash_configuration = []) ?timeouts ~subnet_ids () :
    aws_fsx_lustre_file_system =
  {
    auto_import_policy;
    automatic_backup_retention_days;
    backup_id;
    copy_tags_to_backups;
    daily_automatic_backup_start_time;
    data_compression_type;
    deployment_type;
    drive_cache_type;
    export_path;
    file_system_type_version;
    id;
    import_path;
    imported_file_chunk_size;
    kms_key_id;
    per_unit_storage_throughput;
    security_group_ids;
    storage_capacity;
    storage_type;
    subnet_ids;
    tags;
    tags_all;
    weekly_maintenance_start_time;
    log_configuration;
    root_squash_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_import_policy : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  daily_automatic_backup_start_time : string prop;
  data_compression_type : string prop;
  deployment_type : string prop;
  dns_name : string prop;
  drive_cache_type : string prop;
  export_path : string prop;
  file_system_type_version : string prop;
  id : string prop;
  import_path : string prop;
  imported_file_chunk_size : float prop;
  kms_key_id : string prop;
  mount_name : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  per_unit_storage_throughput : float prop;
  security_group_ids : string list prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let make ?auto_import_policy ?automatic_backup_retention_days
    ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?data_compression_type
    ?deployment_type ?drive_cache_type ?export_path
    ?file_system_type_version ?id ?import_path
    ?imported_file_chunk_size ?kms_key_id
    ?per_unit_storage_throughput ?security_group_ids
    ?storage_capacity ?storage_type ?tags ?tags_all
    ?weekly_maintenance_start_time ?(log_configuration = [])
    ?(root_squash_configuration = []) ?timeouts ~subnet_ids __id =
  let __type = "aws_fsx_lustre_file_system" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_import_policy =
         Prop.computed __type __id "auto_import_policy";
       automatic_backup_retention_days =
         Prop.computed __type __id "automatic_backup_retention_days";
       backup_id = Prop.computed __type __id "backup_id";
       copy_tags_to_backups =
         Prop.computed __type __id "copy_tags_to_backups";
       daily_automatic_backup_start_time =
         Prop.computed __type __id
           "daily_automatic_backup_start_time";
       data_compression_type =
         Prop.computed __type __id "data_compression_type";
       deployment_type = Prop.computed __type __id "deployment_type";
       dns_name = Prop.computed __type __id "dns_name";
       drive_cache_type =
         Prop.computed __type __id "drive_cache_type";
       export_path = Prop.computed __type __id "export_path";
       file_system_type_version =
         Prop.computed __type __id "file_system_type_version";
       id = Prop.computed __type __id "id";
       import_path = Prop.computed __type __id "import_path";
       imported_file_chunk_size =
         Prop.computed __type __id "imported_file_chunk_size";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       mount_name = Prop.computed __type __id "mount_name";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       per_unit_storage_throughput =
         Prop.computed __type __id "per_unit_storage_throughput";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       storage_capacity =
         Prop.computed __type __id "storage_capacity";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
       weekly_maintenance_start_time =
         Prop.computed __type __id "weekly_maintenance_start_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_lustre_file_system
        (aws_fsx_lustre_file_system ?auto_import_policy
           ?automatic_backup_retention_days ?backup_id
           ?copy_tags_to_backups ?daily_automatic_backup_start_time
           ?data_compression_type ?deployment_type ?drive_cache_type
           ?export_path ?file_system_type_version ?id ?import_path
           ?imported_file_chunk_size ?kms_key_id
           ?per_unit_storage_throughput ?security_group_ids
           ?storage_capacity ?storage_type ?tags ?tags_all
           ?weekly_maintenance_start_time ~log_configuration
           ~root_squash_configuration ?timeouts ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_import_policy
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?data_compression_type
    ?deployment_type ?drive_cache_type ?export_path
    ?file_system_type_version ?id ?import_path
    ?imported_file_chunk_size ?kms_key_id
    ?per_unit_storage_throughput ?security_group_ids
    ?storage_capacity ?storage_type ?tags ?tags_all
    ?weekly_maintenance_start_time ?(log_configuration = [])
    ?(root_squash_configuration = []) ?timeouts ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?auto_import_policy ?automatic_backup_retention_days
      ?backup_id ?copy_tags_to_backups
      ?daily_automatic_backup_start_time ?data_compression_type
      ?deployment_type ?drive_cache_type ?export_path
      ?file_system_type_version ?id ?import_path
      ?imported_file_chunk_size ?kms_key_id
      ?per_unit_storage_throughput ?security_group_ids
      ?storage_capacity ?storage_type ?tags ?tags_all
      ?weekly_maintenance_start_time ~log_configuration
      ~root_squash_configuration ?timeouts ~subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
