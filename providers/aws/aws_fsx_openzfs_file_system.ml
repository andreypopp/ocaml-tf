(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type root_volume_configuration__nfs_exports__client_configurations = {
  clients : string prop;
  options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       root_volume_configuration__nfs_exports__client_configurations) ->
  ()

let yojson_of_root_volume_configuration__nfs_exports__client_configurations
    =
  (function
   | { clients = v_clients; options = v_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_options
           in
           let bnd = "options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_clients in
         ("clients", arg) :: bnds
       in
       `Assoc bnds
    : root_volume_configuration__nfs_exports__client_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_root_volume_configuration__nfs_exports__client_configurations

[@@@deriving.end]

type root_volume_configuration__nfs_exports = {
  client_configurations :
    root_volume_configuration__nfs_exports__client_configurations
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_volume_configuration__nfs_exports) -> ()

let yojson_of_root_volume_configuration__nfs_exports =
  (function
   | { client_configurations = v_client_configurations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_client_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_root_volume_configuration__nfs_exports__client_configurations)
               v_client_configurations
           in
           let bnd = "client_configurations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : root_volume_configuration__nfs_exports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_volume_configuration__nfs_exports

[@@@deriving.end]

type root_volume_configuration__user_and_group_quotas = {
  id : float prop;
  storage_capacity_quota_gib : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : root_volume_configuration__user_and_group_quotas) -> ()

let yojson_of_root_volume_configuration__user_and_group_quotas =
  (function
   | {
       id = v_id;
       storage_capacity_quota_gib = v_storage_capacity_quota_gib;
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
         let arg =
           yojson_of_prop yojson_of_float
             v_storage_capacity_quota_gib
         in
         ("storage_capacity_quota_gib", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : root_volume_configuration__user_and_group_quotas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_volume_configuration__user_and_group_quotas

[@@@deriving.end]

type root_volume_configuration = {
  copy_tags_to_snapshots : bool prop option; [@option]
  data_compression_type : string prop option; [@option]
  read_only : bool prop option; [@option]
  record_size_kib : float prop option; [@option]
  nfs_exports : root_volume_configuration__nfs_exports list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_and_group_quotas :
    root_volume_configuration__user_and_group_quotas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_volume_configuration) -> ()

let yojson_of_root_volume_configuration =
  (function
   | {
       copy_tags_to_snapshots = v_copy_tags_to_snapshots;
       data_compression_type = v_data_compression_type;
       read_only = v_read_only;
       record_size_kib = v_record_size_kib;
       nfs_exports = v_nfs_exports;
       user_and_group_quotas = v_user_and_group_quotas;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_and_group_quotas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_root_volume_configuration__user_and_group_quotas)
               v_user_and_group_quotas
           in
           let bnd = "user_and_group_quotas", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_nfs_exports then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_root_volume_configuration__nfs_exports)
               v_nfs_exports
           in
           let bnd = "nfs_exports", arg in
           bnd :: bnds
       in
       let bnds =
         match v_record_size_kib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "record_size_kib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
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
         match v_copy_tags_to_snapshots with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags_to_snapshots", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : root_volume_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_volume_configuration

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

type aws_fsx_openzfs_file_system = {
  automatic_backup_retention_days : float prop option; [@option]
  backup_id : string prop option; [@option]
  copy_tags_to_backups : bool prop option; [@option]
  copy_tags_to_volumes : bool prop option; [@option]
  daily_automatic_backup_start_time : string prop option; [@option]
  delete_options : string prop list option; [@option]
  deployment_type : string prop;
  endpoint_ip_address_range : string prop option; [@option]
  final_backup_tags : string prop Tf_core.assoc option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  preferred_subnet_id : string prop option; [@option]
  route_table_ids : string prop list option; [@option]
  security_group_ids : string prop list option; [@option]
  skip_final_backup : bool prop option; [@option]
  storage_capacity : float prop option; [@option]
  storage_type : string prop option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  throughput_capacity : float prop;
  weekly_maintenance_start_time : string prop option; [@option]
  disk_iops_configuration : disk_iops_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  root_volume_configuration : root_volume_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_openzfs_file_system) -> ()

let yojson_of_aws_fsx_openzfs_file_system =
  (function
   | {
       automatic_backup_retention_days =
         v_automatic_backup_retention_days;
       backup_id = v_backup_id;
       copy_tags_to_backups = v_copy_tags_to_backups;
       copy_tags_to_volumes = v_copy_tags_to_volumes;
       daily_automatic_backup_start_time =
         v_daily_automatic_backup_start_time;
       delete_options = v_delete_options;
       deployment_type = v_deployment_type;
       endpoint_ip_address_range = v_endpoint_ip_address_range;
       final_backup_tags = v_final_backup_tags;
       id = v_id;
       kms_key_id = v_kms_key_id;
       preferred_subnet_id = v_preferred_subnet_id;
       route_table_ids = v_route_table_ids;
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
       disk_iops_configuration = v_disk_iops_configuration;
       root_volume_configuration = v_root_volume_configuration;
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
         if Stdlib.( = ) [] v_root_volume_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_root_volume_configuration)
               v_root_volume_configuration
           in
           let bnd = "root_volume_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disk_iops_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_disk_iops_configuration)
               v_disk_iops_configuration
           in
           let bnd = "disk_iops_configuration", arg in
           bnd :: bnds
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
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
         match v_route_table_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "route_table_ids", arg in
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
         match v_final_backup_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "final_backup_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_ip_address_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_ip_address_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_deployment_type
         in
         ("deployment_type", arg) :: bnds
       in
       let bnds =
         match v_delete_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "delete_options", arg in
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
         match v_copy_tags_to_volumes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags_to_volumes", arg in
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
       `Assoc bnds
    : aws_fsx_openzfs_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_openzfs_file_system

[@@@deriving.end]

let disk_iops_configuration ?iops ?mode () : disk_iops_configuration
    =
  { iops; mode }

let root_volume_configuration__nfs_exports__client_configurations
    ~clients ~options () :
    root_volume_configuration__nfs_exports__client_configurations =
  { clients; options }

let root_volume_configuration__nfs_exports ~client_configurations ()
    : root_volume_configuration__nfs_exports =
  { client_configurations }

let root_volume_configuration__user_and_group_quotas ~id
    ~storage_capacity_quota_gib ~type_ () :
    root_volume_configuration__user_and_group_quotas =
  { id; storage_capacity_quota_gib; type_ }

let root_volume_configuration ?copy_tags_to_snapshots
    ?data_compression_type ?read_only ?record_size_kib
    ?(nfs_exports = []) ~user_and_group_quotas () :
    root_volume_configuration =
  {
    copy_tags_to_snapshots;
    data_compression_type;
    read_only;
    record_size_kib;
    nfs_exports;
    user_and_group_quotas;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_openzfs_file_system ?automatic_backup_retention_days
    ?backup_id ?copy_tags_to_backups ?copy_tags_to_volumes
    ?daily_automatic_backup_start_time ?delete_options
    ?endpoint_ip_address_range ?final_backup_tags ?id ?kms_key_id
    ?preferred_subnet_id ?route_table_ids ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time
    ?(disk_iops_configuration = []) ?(root_volume_configuration = [])
    ?timeouts ~deployment_type ~subnet_ids ~throughput_capacity () :
    aws_fsx_openzfs_file_system =
  {
    automatic_backup_retention_days;
    backup_id;
    copy_tags_to_backups;
    copy_tags_to_volumes;
    daily_automatic_backup_start_time;
    delete_options;
    deployment_type;
    endpoint_ip_address_range;
    final_backup_tags;
    id;
    kms_key_id;
    preferred_subnet_id;
    route_table_ids;
    security_group_ids;
    skip_final_backup;
    storage_capacity;
    storage_type;
    subnet_ids;
    tags;
    tags_all;
    throughput_capacity;
    weekly_maintenance_start_time;
    disk_iops_configuration;
    root_volume_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  copy_tags_to_volumes : bool prop;
  daily_automatic_backup_start_time : string prop;
  delete_options : string list prop;
  deployment_type : string prop;
  dns_name : string prop;
  endpoint_ip_address : string prop;
  endpoint_ip_address_range : string prop;
  final_backup_tags : string Tf_core.assoc prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_subnet_id : string prop;
  root_volume_id : string prop;
  route_table_ids : string list prop;
  security_group_ids : string list prop;
  skip_final_backup : bool prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  throughput_capacity : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let make ?automatic_backup_retention_days ?backup_id
    ?copy_tags_to_backups ?copy_tags_to_volumes
    ?daily_automatic_backup_start_time ?delete_options
    ?endpoint_ip_address_range ?final_backup_tags ?id ?kms_key_id
    ?preferred_subnet_id ?route_table_ids ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time
    ?(disk_iops_configuration = []) ?(root_volume_configuration = [])
    ?timeouts ~deployment_type ~subnet_ids ~throughput_capacity __id
    =
  let __type = "aws_fsx_openzfs_file_system" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       automatic_backup_retention_days =
         Prop.computed __type __id "automatic_backup_retention_days";
       backup_id = Prop.computed __type __id "backup_id";
       copy_tags_to_backups =
         Prop.computed __type __id "copy_tags_to_backups";
       copy_tags_to_volumes =
         Prop.computed __type __id "copy_tags_to_volumes";
       daily_automatic_backup_start_time =
         Prop.computed __type __id
           "daily_automatic_backup_start_time";
       delete_options = Prop.computed __type __id "delete_options";
       deployment_type = Prop.computed __type __id "deployment_type";
       dns_name = Prop.computed __type __id "dns_name";
       endpoint_ip_address =
         Prop.computed __type __id "endpoint_ip_address";
       endpoint_ip_address_range =
         Prop.computed __type __id "endpoint_ip_address_range";
       final_backup_tags =
         Prop.computed __type __id "final_backup_tags";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       preferred_subnet_id =
         Prop.computed __type __id "preferred_subnet_id";
       root_volume_id = Prop.computed __type __id "root_volume_id";
       route_table_ids = Prop.computed __type __id "route_table_ids";
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
      yojson_of_aws_fsx_openzfs_file_system
        (aws_fsx_openzfs_file_system ?automatic_backup_retention_days
           ?backup_id ?copy_tags_to_backups ?copy_tags_to_volumes
           ?daily_automatic_backup_start_time ?delete_options
           ?endpoint_ip_address_range ?final_backup_tags ?id
           ?kms_key_id ?preferred_subnet_id ?route_table_ids
           ?security_group_ids ?skip_final_backup ?storage_capacity
           ?storage_type ?tags ?tags_all
           ?weekly_maintenance_start_time ~disk_iops_configuration
           ~root_volume_configuration ?timeouts ~deployment_type
           ~subnet_ids ~throughput_capacity ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_backup_retention_days ?backup_id
    ?copy_tags_to_backups ?copy_tags_to_volumes
    ?daily_automatic_backup_start_time ?delete_options
    ?endpoint_ip_address_range ?final_backup_tags ?id ?kms_key_id
    ?preferred_subnet_id ?route_table_ids ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time
    ?(disk_iops_configuration = []) ?(root_volume_configuration = [])
    ?timeouts ~deployment_type ~subnet_ids ~throughput_capacity __id
    =
  let (r : _ Tf_core.resource) =
    make ?automatic_backup_retention_days ?backup_id
      ?copy_tags_to_backups ?copy_tags_to_volumes
      ?daily_automatic_backup_start_time ?delete_options
      ?endpoint_ip_address_range ?final_backup_tags ?id ?kms_key_id
      ?preferred_subnet_id ?route_table_ids ?security_group_ids
      ?skip_final_backup ?storage_capacity ?storage_type ?tags
      ?tags_all ?weekly_maintenance_start_time
      ~disk_iops_configuration ~root_volume_configuration ?timeouts
      ~deployment_type ~subnet_ids ~throughput_capacity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
