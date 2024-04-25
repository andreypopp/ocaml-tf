(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audit_log_configuration = {
  audit_log_destination : string prop option; [@option]
  file_access_audit_log_level : string prop option; [@option]
  file_share_access_audit_log_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : audit_log_configuration) -> ()

let yojson_of_audit_log_configuration =
  (function
   | {
       audit_log_destination = v_audit_log_destination;
       file_access_audit_log_level = v_file_access_audit_log_level;
       file_share_access_audit_log_level =
         v_file_share_access_audit_log_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_file_share_access_audit_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_share_access_audit_log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_access_audit_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_access_audit_log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_log_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit_log_destination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : audit_log_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_audit_log_configuration

[@@@deriving.end]

type disk_iops_configuration = {
  iops : float prop option; [@option]
  mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_iops_configuration) -> ()

let yojson_of_disk_iops_configuration =
  (function
   | { iops = v_iops; mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : disk_iops_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_iops_configuration

[@@@deriving.end]

type self_managed_active_directory = {
  dns_ips : string prop list;
  domain_name : string prop;
  file_system_administrators_group : string prop option; [@option]
  organizational_unit_distinguished_name : string prop option;
      [@option]
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : self_managed_active_directory) -> ()

let yojson_of_self_managed_active_directory =
  (function
   | {
       dns_ips = v_dns_ips;
       domain_name = v_domain_name;
       file_system_administrators_group =
         v_file_system_administrators_group;
       organizational_unit_distinguished_name =
         v_organizational_unit_distinguished_name;
       password = v_password;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_organizational_unit_distinguished_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "organizational_unit_distinguished_name", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_file_system_administrators_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_administrators_group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_dns_ips
         in
         ("dns_ips", arg) :: bnds
       in
       `Assoc bnds
    : self_managed_active_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_self_managed_active_directory

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

type aws_fsx_windows_file_system = {
  active_directory_id : string prop option; [@option]
  aliases : string prop list option; [@option]
  automatic_backup_retention_days : float prop option; [@option]
  backup_id : string prop option; [@option]
  copy_tags_to_backups : bool prop option; [@option]
  daily_automatic_backup_start_time : string prop option; [@option]
  deployment_type : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  preferred_subnet_id : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  skip_final_backup : bool prop option; [@option]
  storage_capacity : float prop option; [@option]
  storage_type : string prop option; [@option]
  subnet_ids : string prop list;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  throughput_capacity : float prop;
  weekly_maintenance_start_time : string prop option; [@option]
  audit_log_configuration : audit_log_configuration list;
  disk_iops_configuration : disk_iops_configuration list;
  self_managed_active_directory : self_managed_active_directory list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_windows_file_system) -> ()

let yojson_of_aws_fsx_windows_file_system =
  (function
   | {
       active_directory_id = v_active_directory_id;
       aliases = v_aliases;
       automatic_backup_retention_days =
         v_automatic_backup_retention_days;
       backup_id = v_backup_id;
       copy_tags_to_backups = v_copy_tags_to_backups;
       daily_automatic_backup_start_time =
         v_daily_automatic_backup_start_time;
       deployment_type = v_deployment_type;
       id = v_id;
       kms_key_id = v_kms_key_id;
       preferred_subnet_id = v_preferred_subnet_id;
       security_group_ids = v_security_group_ids;
       skip_final_backup = v_skip_final_backup;
       storage_capacity = v_storage_capacity;
       storage_type = v_storage_type;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       throughput_capacity = v_throughput_capacity;
       weekly_maintenance_start_time =
         v_weekly_maintenance_start_time;
       audit_log_configuration = v_audit_log_configuration;
       disk_iops_configuration = v_disk_iops_configuration;
       self_managed_active_directory =
         v_self_managed_active_directory;
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
           yojson_of_list yojson_of_self_managed_active_directory
             v_self_managed_active_directory
         in
         ("self_managed_active_directory", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_disk_iops_configuration
             v_disk_iops_configuration
         in
         ("disk_iops_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_audit_log_configuration
             v_audit_log_configuration
         in
         ("audit_log_configuration", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float v_throughput_capacity
         in
         ("throughput_capacity", arg) :: bnds
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
         match v_skip_final_backup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_final_backup", arg in
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
         match v_preferred_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_subnet_id", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
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
         match v_aliases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "aliases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_directory_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "active_directory_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_fsx_windows_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_windows_file_system

[@@@deriving.end]

let audit_log_configuration ?audit_log_destination
    ?file_access_audit_log_level ?file_share_access_audit_log_level
    () : audit_log_configuration =
  {
    audit_log_destination;
    file_access_audit_log_level;
    file_share_access_audit_log_level;
  }

let disk_iops_configuration ?iops ?mode () : disk_iops_configuration
    =
  { iops; mode }

let self_managed_active_directory ?file_system_administrators_group
    ?organizational_unit_distinguished_name ~dns_ips ~domain_name
    ~password ~username () : self_managed_active_directory =
  {
    dns_ips;
    domain_name;
    file_system_administrators_group;
    organizational_unit_distinguished_name;
    password;
    username;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_windows_file_system ?active_directory_id ?aliases
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?deployment_type ?id
    ?kms_key_id ?preferred_subnet_id ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time
    ?(audit_log_configuration = []) ?(disk_iops_configuration = [])
    ?(self_managed_active_directory = []) ?timeouts ~subnet_ids
    ~throughput_capacity () : aws_fsx_windows_file_system =
  {
    active_directory_id;
    aliases;
    automatic_backup_retention_days;
    backup_id;
    copy_tags_to_backups;
    daily_automatic_backup_start_time;
    deployment_type;
    id;
    kms_key_id;
    preferred_subnet_id;
    security_group_ids;
    skip_final_backup;
    storage_capacity;
    storage_type;
    subnet_ids;
    tags;
    tags_all;
    throughput_capacity;
    weekly_maintenance_start_time;
    audit_log_configuration;
    disk_iops_configuration;
    self_managed_active_directory;
    timeouts;
  }

type t = {
  active_directory_id : string prop;
  aliases : string list prop;
  arn : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  dns_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_file_server_ip : string prop;
  preferred_subnet_id : string prop;
  remote_administration_endpoint : string prop;
  security_group_ids : string list prop;
  skip_final_backup : bool prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  throughput_capacity : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let make ?active_directory_id ?aliases
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?deployment_type ?id
    ?kms_key_id ?preferred_subnet_id ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time
    ?(audit_log_configuration = []) ?(disk_iops_configuration = [])
    ?(self_managed_active_directory = []) ?timeouts ~subnet_ids
    ~throughput_capacity __id =
  let __type = "aws_fsx_windows_file_system" in
  let __attrs =
    ({
       active_directory_id =
         Prop.computed __type __id "active_directory_id";
       aliases = Prop.computed __type __id "aliases";
       arn = Prop.computed __type __id "arn";
       automatic_backup_retention_days =
         Prop.computed __type __id "automatic_backup_retention_days";
       backup_id = Prop.computed __type __id "backup_id";
       copy_tags_to_backups =
         Prop.computed __type __id "copy_tags_to_backups";
       daily_automatic_backup_start_time =
         Prop.computed __type __id
           "daily_automatic_backup_start_time";
       deployment_type = Prop.computed __type __id "deployment_type";
       dns_name = Prop.computed __type __id "dns_name";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       preferred_file_server_ip =
         Prop.computed __type __id "preferred_file_server_ip";
       preferred_subnet_id =
         Prop.computed __type __id "preferred_subnet_id";
       remote_administration_endpoint =
         Prop.computed __type __id "remote_administration_endpoint";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       skip_final_backup =
         Prop.computed __type __id "skip_final_backup";
       storage_capacity =
         Prop.computed __type __id "storage_capacity";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       throughput_capacity =
         Prop.computed __type __id "throughput_capacity";
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
      yojson_of_aws_fsx_windows_file_system
        (aws_fsx_windows_file_system ?active_directory_id ?aliases
           ?automatic_backup_retention_days ?backup_id
           ?copy_tags_to_backups ?daily_automatic_backup_start_time
           ?deployment_type ?id ?kms_key_id ?preferred_subnet_id
           ?security_group_ids ?skip_final_backup ?storage_capacity
           ?storage_type ?tags ?tags_all
           ?weekly_maintenance_start_time ~audit_log_configuration
           ~disk_iops_configuration ~self_managed_active_directory
           ?timeouts ~subnet_ids ~throughput_capacity ());
    attrs = __attrs;
  }

let register ?tf_module ?active_directory_id ?aliases
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?deployment_type ?id
    ?kms_key_id ?preferred_subnet_id ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time
    ?(audit_log_configuration = []) ?(disk_iops_configuration = [])
    ?(self_managed_active_directory = []) ?timeouts ~subnet_ids
    ~throughput_capacity __id =
  let (r : _ Tf_core.resource) =
    make ?active_directory_id ?aliases
      ?automatic_backup_retention_days ?backup_id
      ?copy_tags_to_backups ?daily_automatic_backup_start_time
      ?deployment_type ?id ?kms_key_id ?preferred_subnet_id
      ?security_group_ids ?skip_final_backup ?storage_capacity
      ?storage_type ?tags ?tags_all ?weekly_maintenance_start_time
      ~audit_log_configuration ~disk_iops_configuration
      ~self_managed_active_directory ?timeouts ~subnet_ids
      ~throughput_capacity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
