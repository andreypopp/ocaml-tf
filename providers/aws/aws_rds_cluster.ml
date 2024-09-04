(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type restore_to_point_in_time = {
  restore_to_time : string prop option; [@option]
  restore_type : string prop option; [@option]
  source_cluster_identifier : string prop;
  use_latest_restorable_time : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_to_point_in_time) -> ()

let yojson_of_restore_to_point_in_time =
  (function
   | {
       restore_to_time = v_restore_to_time;
       restore_type = v_restore_type;
       source_cluster_identifier = v_source_cluster_identifier;
       use_latest_restorable_time = v_use_latest_restorable_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_latest_restorable_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_latest_restorable_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_cluster_identifier
         in
         ("source_cluster_identifier", arg) :: bnds
       in
       let bnds =
         match v_restore_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restore_to_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_to_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_to_point_in_time -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_to_point_in_time

[@@@deriving.end]

type s3_import = {
  bucket_name : string prop;
  bucket_prefix : string prop option; [@option]
  ingestion_role : string prop;
  source_engine : string prop;
  source_engine_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_import) -> ()

let yojson_of_s3_import =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       ingestion_role = v_ingestion_role;
       source_engine = v_source_engine;
       source_engine_version = v_source_engine_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_engine_version
         in
         ("source_engine_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_engine in
         ("source_engine", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ingestion_role
         in
         ("ingestion_role", arg) :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : s3_import -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_import

[@@@deriving.end]

type scaling_configuration = {
  auto_pause : bool prop option; [@option]
  max_capacity : float prop option; [@option]
  min_capacity : float prop option; [@option]
  seconds_until_auto_pause : float prop option; [@option]
  timeout_action : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scaling_configuration) -> ()

let yojson_of_scaling_configuration =
  (function
   | {
       auto_pause = v_auto_pause;
       max_capacity = v_max_capacity;
       min_capacity = v_min_capacity;
       seconds_until_auto_pause = v_seconds_until_auto_pause;
       timeout_action = v_timeout_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_seconds_until_auto_pause with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds_until_auto_pause", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_capacity", arg in
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
         match v_auto_pause with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_pause", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_configuration

[@@@deriving.end]

type serverlessv2_scaling_configuration = {
  max_capacity : float prop;
  min_capacity : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serverlessv2_scaling_configuration) -> ()

let yojson_of_serverlessv2_scaling_configuration =
  (function
   | { max_capacity = v_max_capacity; min_capacity = v_min_capacity }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_capacity in
         ("min_capacity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_capacity in
         ("max_capacity", arg) :: bnds
       in
       `Assoc bnds
    : serverlessv2_scaling_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serverlessv2_scaling_configuration

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

type master_user_secret = {
  kms_key_id : string prop;
  secret_arn : string prop;
  secret_status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_user_secret) -> ()

let yojson_of_master_user_secret =
  (function
   | {
       kms_key_id = v_kms_key_id;
       secret_arn = v_secret_arn;
       secret_status = v_secret_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_status in
         ("secret_status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_arn in
         ("secret_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       `Assoc bnds
    : master_user_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_user_secret

[@@@deriving.end]

type aws_rds_cluster = {
  allocated_storage : float prop option; [@option]
  allow_major_version_upgrade : bool prop option; [@option]
  apply_immediately : bool prop option; [@option]
  availability_zones : string prop list option; [@option]
  backtrack_window : float prop option; [@option]
  backup_retention_period : float prop option; [@option]
  ca_certificate_identifier : string prop option; [@option]
  cluster_identifier : string prop option; [@option]
  cluster_identifier_prefix : string prop option; [@option]
  cluster_members : string prop list option; [@option]
  copy_tags_to_snapshot : bool prop option; [@option]
  database_name : string prop option; [@option]
  db_cluster_instance_class : string prop option; [@option]
  db_cluster_parameter_group_name : string prop option; [@option]
  db_instance_parameter_group_name : string prop option; [@option]
  db_subnet_group_name : string prop option; [@option]
  db_system_id : string prop option; [@option]
  delete_automated_backups : bool prop option; [@option]
  deletion_protection : bool prop option; [@option]
  domain : string prop option; [@option]
  domain_iam_role_name : string prop option; [@option]
  enable_global_write_forwarding : bool prop option; [@option]
  enable_http_endpoint : bool prop option; [@option]
  enable_local_write_forwarding : bool prop option; [@option]
  enabled_cloudwatch_logs_exports : string prop list option;
      [@option]
  engine : string prop;
  engine_lifecycle_support : string prop option; [@option]
  engine_mode : string prop option; [@option]
  engine_version : string prop option; [@option]
  final_snapshot_identifier : string prop option; [@option]
  global_cluster_identifier : string prop option; [@option]
  iam_database_authentication_enabled : bool prop option; [@option]
  iam_roles : string prop list option; [@option]
  id : string prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  manage_master_user_password : bool prop option; [@option]
  master_password : string prop option; [@option]
  master_user_secret_kms_key_id : string prop option; [@option]
  master_username : string prop option; [@option]
  network_type : string prop option; [@option]
  port : float prop option; [@option]
  preferred_backup_window : string prop option; [@option]
  preferred_maintenance_window : string prop option; [@option]
  replication_source_identifier : string prop option; [@option]
  skip_final_snapshot : bool prop option; [@option]
  snapshot_identifier : string prop option; [@option]
  source_region : string prop option; [@option]
  storage_encrypted : bool prop option; [@option]
  storage_type : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  restore_to_point_in_time : restore_to_point_in_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_import : s3_import list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scaling_configuration : scaling_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  serverlessv2_scaling_configuration :
    serverlessv2_scaling_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_cluster) -> ()

let yojson_of_aws_rds_cluster =
  (function
   | {
       allocated_storage = v_allocated_storage;
       allow_major_version_upgrade = v_allow_major_version_upgrade;
       apply_immediately = v_apply_immediately;
       availability_zones = v_availability_zones;
       backtrack_window = v_backtrack_window;
       backup_retention_period = v_backup_retention_period;
       ca_certificate_identifier = v_ca_certificate_identifier;
       cluster_identifier = v_cluster_identifier;
       cluster_identifier_prefix = v_cluster_identifier_prefix;
       cluster_members = v_cluster_members;
       copy_tags_to_snapshot = v_copy_tags_to_snapshot;
       database_name = v_database_name;
       db_cluster_instance_class = v_db_cluster_instance_class;
       db_cluster_parameter_group_name =
         v_db_cluster_parameter_group_name;
       db_instance_parameter_group_name =
         v_db_instance_parameter_group_name;
       db_subnet_group_name = v_db_subnet_group_name;
       db_system_id = v_db_system_id;
       delete_automated_backups = v_delete_automated_backups;
       deletion_protection = v_deletion_protection;
       domain = v_domain;
       domain_iam_role_name = v_domain_iam_role_name;
       enable_global_write_forwarding =
         v_enable_global_write_forwarding;
       enable_http_endpoint = v_enable_http_endpoint;
       enable_local_write_forwarding =
         v_enable_local_write_forwarding;
       enabled_cloudwatch_logs_exports =
         v_enabled_cloudwatch_logs_exports;
       engine = v_engine;
       engine_lifecycle_support = v_engine_lifecycle_support;
       engine_mode = v_engine_mode;
       engine_version = v_engine_version;
       final_snapshot_identifier = v_final_snapshot_identifier;
       global_cluster_identifier = v_global_cluster_identifier;
       iam_database_authentication_enabled =
         v_iam_database_authentication_enabled;
       iam_roles = v_iam_roles;
       id = v_id;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       manage_master_user_password = v_manage_master_user_password;
       master_password = v_master_password;
       master_user_secret_kms_key_id =
         v_master_user_secret_kms_key_id;
       master_username = v_master_username;
       network_type = v_network_type;
       port = v_port;
       preferred_backup_window = v_preferred_backup_window;
       preferred_maintenance_window = v_preferred_maintenance_window;
       replication_source_identifier =
         v_replication_source_identifier;
       skip_final_snapshot = v_skip_final_snapshot;
       snapshot_identifier = v_snapshot_identifier;
       source_region = v_source_region;
       storage_encrypted = v_storage_encrypted;
       storage_type = v_storage_type;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_security_group_ids = v_vpc_security_group_ids;
       restore_to_point_in_time = v_restore_to_point_in_time;
       s3_import = v_s3_import;
       scaling_configuration = v_scaling_configuration;
       serverlessv2_scaling_configuration =
         v_serverlessv2_scaling_configuration;
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
         if Stdlib.( = ) [] v_serverlessv2_scaling_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_serverlessv2_scaling_configuration)
               v_serverlessv2_scaling_configuration
           in
           let bnd = "serverlessv2_scaling_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scaling_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scaling_configuration)
               v_scaling_configuration
           in
           let bnd = "scaling_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_import then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3_import) v_s3_import
           in
           let bnd = "s3_import", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_restore_to_point_in_time then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restore_to_point_in_time)
               v_restore_to_point_in_time
           in
           let bnd = "restore_to_point_in_time", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_ids", arg in
             bnd :: bnds
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
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "storage_encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_final_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_final_snapshot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replication_source_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replication_source_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_maintenance_window", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_backup_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_backup_window", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_user_secret_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_user_secret_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manage_master_user_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manage_master_user_password", arg in
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
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
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
         match v_iam_roles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "iam_roles", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_database_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "iam_database_authentication_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_global_cluster_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "global_cluster_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_final_snapshot_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "final_snapshot_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine_lifecycle_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_lifecycle_support", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       let bnds =
         match v_enabled_cloudwatch_logs_exports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enabled_cloudwatch_logs_exports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_local_write_forwarding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_local_write_forwarding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_http_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_http_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_global_write_forwarding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_global_write_forwarding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_iam_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_iam_role_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_automated_backups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_automated_backups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_system_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_system_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_subnet_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_subnet_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_instance_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_instance_parameter_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_cluster_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_cluster_parameter_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_cluster_instance_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_cluster_instance_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_tags_to_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags_to_snapshot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_members with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cluster_members", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_identifier_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_identifier_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_certificate_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_certificate_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backtrack_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backtrack_window", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "availability_zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apply_immediately with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "apply_immediately", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_major_version_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_major_version_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocated_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "allocated_storage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rds_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_cluster

[@@@deriving.end]

let restore_to_point_in_time ?restore_to_time ?restore_type
    ?use_latest_restorable_time ~source_cluster_identifier () :
    restore_to_point_in_time =
  {
    restore_to_time;
    restore_type;
    source_cluster_identifier;
    use_latest_restorable_time;
  }

let s3_import ?bucket_prefix ~bucket_name ~ingestion_role
    ~source_engine ~source_engine_version () : s3_import =
  {
    bucket_name;
    bucket_prefix;
    ingestion_role;
    source_engine;
    source_engine_version;
  }

let scaling_configuration ?auto_pause ?max_capacity ?min_capacity
    ?seconds_until_auto_pause ?timeout_action () :
    scaling_configuration =
  {
    auto_pause;
    max_capacity;
    min_capacity;
    seconds_until_auto_pause;
    timeout_action;
  }

let serverlessv2_scaling_configuration ~max_capacity ~min_capacity ()
    : serverlessv2_scaling_configuration =
  { max_capacity; min_capacity }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_rds_cluster ?allocated_storage ?allow_major_version_upgrade
    ?apply_immediately ?availability_zones ?backtrack_window
    ?backup_retention_period ?ca_certificate_identifier
    ?cluster_identifier ?cluster_identifier_prefix ?cluster_members
    ?copy_tags_to_snapshot ?database_name ?db_cluster_instance_class
    ?db_cluster_parameter_group_name
    ?db_instance_parameter_group_name ?db_subnet_group_name
    ?db_system_id ?delete_automated_backups ?deletion_protection
    ?domain ?domain_iam_role_name ?enable_global_write_forwarding
    ?enable_http_endpoint ?enable_local_write_forwarding
    ?enabled_cloudwatch_logs_exports ?engine_lifecycle_support
    ?engine_mode ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?iam_database_authentication_enabled
    ?iam_roles ?id ?iops ?kms_key_id ?manage_master_user_password
    ?master_password ?master_user_secret_kms_key_id ?master_username
    ?network_type ?port ?preferred_backup_window
    ?preferred_maintenance_window ?replication_source_identifier
    ?skip_final_snapshot ?snapshot_identifier ?source_region
    ?storage_encrypted ?storage_type ?tags ?tags_all
    ?vpc_security_group_ids ?(restore_to_point_in_time = [])
    ?(s3_import = []) ?(scaling_configuration = [])
    ?(serverlessv2_scaling_configuration = []) ?timeouts ~engine () :
    aws_rds_cluster =
  {
    allocated_storage;
    allow_major_version_upgrade;
    apply_immediately;
    availability_zones;
    backtrack_window;
    backup_retention_period;
    ca_certificate_identifier;
    cluster_identifier;
    cluster_identifier_prefix;
    cluster_members;
    copy_tags_to_snapshot;
    database_name;
    db_cluster_instance_class;
    db_cluster_parameter_group_name;
    db_instance_parameter_group_name;
    db_subnet_group_name;
    db_system_id;
    delete_automated_backups;
    deletion_protection;
    domain;
    domain_iam_role_name;
    enable_global_write_forwarding;
    enable_http_endpoint;
    enable_local_write_forwarding;
    enabled_cloudwatch_logs_exports;
    engine;
    engine_lifecycle_support;
    engine_mode;
    engine_version;
    final_snapshot_identifier;
    global_cluster_identifier;
    iam_database_authentication_enabled;
    iam_roles;
    id;
    iops;
    kms_key_id;
    manage_master_user_password;
    master_password;
    master_user_secret_kms_key_id;
    master_username;
    network_type;
    port;
    preferred_backup_window;
    preferred_maintenance_window;
    replication_source_identifier;
    skip_final_snapshot;
    snapshot_identifier;
    source_region;
    storage_encrypted;
    storage_type;
    tags;
    tags_all;
    vpc_security_group_ids;
    restore_to_point_in_time;
    s3_import;
    scaling_configuration;
    serverlessv2_scaling_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  allocated_storage : float prop;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  backtrack_window : float prop;
  backup_retention_period : float prop;
  ca_certificate_identifier : string prop;
  ca_certificate_valid_till : string prop;
  cluster_identifier : string prop;
  cluster_identifier_prefix : string prop;
  cluster_members : string list prop;
  cluster_resource_id : string prop;
  copy_tags_to_snapshot : bool prop;
  database_name : string prop;
  db_cluster_instance_class : string prop;
  db_cluster_parameter_group_name : string prop;
  db_instance_parameter_group_name : string prop;
  db_subnet_group_name : string prop;
  db_system_id : string prop;
  delete_automated_backups : bool prop;
  deletion_protection : bool prop;
  domain : string prop;
  domain_iam_role_name : string prop;
  enable_global_write_forwarding : bool prop;
  enable_http_endpoint : bool prop;
  enable_local_write_forwarding : bool prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_lifecycle_support : string prop;
  engine_mode : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  final_snapshot_identifier : string prop;
  global_cluster_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  iam_roles : string list prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  manage_master_user_password : bool prop;
  master_password : string prop;
  master_user_secret : master_user_secret list prop;
  master_user_secret_kms_key_id : string prop;
  master_username : string prop;
  network_type : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  replication_source_identifier : string prop;
  skip_final_snapshot : bool prop;
  snapshot_identifier : string prop;
  source_region : string prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_security_group_ids : string list prop;
}

let make ?allocated_storage ?allow_major_version_upgrade
    ?apply_immediately ?availability_zones ?backtrack_window
    ?backup_retention_period ?ca_certificate_identifier
    ?cluster_identifier ?cluster_identifier_prefix ?cluster_members
    ?copy_tags_to_snapshot ?database_name ?db_cluster_instance_class
    ?db_cluster_parameter_group_name
    ?db_instance_parameter_group_name ?db_subnet_group_name
    ?db_system_id ?delete_automated_backups ?deletion_protection
    ?domain ?domain_iam_role_name ?enable_global_write_forwarding
    ?enable_http_endpoint ?enable_local_write_forwarding
    ?enabled_cloudwatch_logs_exports ?engine_lifecycle_support
    ?engine_mode ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?iam_database_authentication_enabled
    ?iam_roles ?id ?iops ?kms_key_id ?manage_master_user_password
    ?master_password ?master_user_secret_kms_key_id ?master_username
    ?network_type ?port ?preferred_backup_window
    ?preferred_maintenance_window ?replication_source_identifier
    ?skip_final_snapshot ?snapshot_identifier ?source_region
    ?storage_encrypted ?storage_type ?tags ?tags_all
    ?vpc_security_group_ids ?(restore_to_point_in_time = [])
    ?(s3_import = []) ?(scaling_configuration = [])
    ?(serverlessv2_scaling_configuration = []) ?timeouts ~engine __id
    =
  let __type = "aws_rds_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       allow_major_version_upgrade =
         Prop.computed __type __id "allow_major_version_upgrade";
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       backtrack_window =
         Prop.computed __type __id "backtrack_window";
       backup_retention_period =
         Prop.computed __type __id "backup_retention_period";
       ca_certificate_identifier =
         Prop.computed __type __id "ca_certificate_identifier";
       ca_certificate_valid_till =
         Prop.computed __type __id "ca_certificate_valid_till";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       cluster_identifier_prefix =
         Prop.computed __type __id "cluster_identifier_prefix";
       cluster_members = Prop.computed __type __id "cluster_members";
       cluster_resource_id =
         Prop.computed __type __id "cluster_resource_id";
       copy_tags_to_snapshot =
         Prop.computed __type __id "copy_tags_to_snapshot";
       database_name = Prop.computed __type __id "database_name";
       db_cluster_instance_class =
         Prop.computed __type __id "db_cluster_instance_class";
       db_cluster_parameter_group_name =
         Prop.computed __type __id "db_cluster_parameter_group_name";
       db_instance_parameter_group_name =
         Prop.computed __type __id "db_instance_parameter_group_name";
       db_subnet_group_name =
         Prop.computed __type __id "db_subnet_group_name";
       db_system_id = Prop.computed __type __id "db_system_id";
       delete_automated_backups =
         Prop.computed __type __id "delete_automated_backups";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       domain = Prop.computed __type __id "domain";
       domain_iam_role_name =
         Prop.computed __type __id "domain_iam_role_name";
       enable_global_write_forwarding =
         Prop.computed __type __id "enable_global_write_forwarding";
       enable_http_endpoint =
         Prop.computed __type __id "enable_http_endpoint";
       enable_local_write_forwarding =
         Prop.computed __type __id "enable_local_write_forwarding";
       enabled_cloudwatch_logs_exports =
         Prop.computed __type __id "enabled_cloudwatch_logs_exports";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       engine_lifecycle_support =
         Prop.computed __type __id "engine_lifecycle_support";
       engine_mode = Prop.computed __type __id "engine_mode";
       engine_version = Prop.computed __type __id "engine_version";
       engine_version_actual =
         Prop.computed __type __id "engine_version_actual";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       global_cluster_identifier =
         Prop.computed __type __id "global_cluster_identifier";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       iam_database_authentication_enabled =
         Prop.computed __type __id
           "iam_database_authentication_enabled";
       iam_roles = Prop.computed __type __id "iam_roles";
       id = Prop.computed __type __id "id";
       iops = Prop.computed __type __id "iops";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       manage_master_user_password =
         Prop.computed __type __id "manage_master_user_password";
       master_password = Prop.computed __type __id "master_password";
       master_user_secret =
         Prop.computed __type __id "master_user_secret";
       master_user_secret_kms_key_id =
         Prop.computed __type __id "master_user_secret_kms_key_id";
       master_username = Prop.computed __type __id "master_username";
       network_type = Prop.computed __type __id "network_type";
       port = Prop.computed __type __id "port";
       preferred_backup_window =
         Prop.computed __type __id "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       reader_endpoint = Prop.computed __type __id "reader_endpoint";
       replication_source_identifier =
         Prop.computed __type __id "replication_source_identifier";
       skip_final_snapshot =
         Prop.computed __type __id "skip_final_snapshot";
       snapshot_identifier =
         Prop.computed __type __id "snapshot_identifier";
       source_region = Prop.computed __type __id "source_region";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
       storage_type = Prop.computed __type __id "storage_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_cluster
        (aws_rds_cluster ?allocated_storage
           ?allow_major_version_upgrade ?apply_immediately
           ?availability_zones ?backtrack_window
           ?backup_retention_period ?ca_certificate_identifier
           ?cluster_identifier ?cluster_identifier_prefix
           ?cluster_members ?copy_tags_to_snapshot ?database_name
           ?db_cluster_instance_class
           ?db_cluster_parameter_group_name
           ?db_instance_parameter_group_name ?db_subnet_group_name
           ?db_system_id ?delete_automated_backups
           ?deletion_protection ?domain ?domain_iam_role_name
           ?enable_global_write_forwarding ?enable_http_endpoint
           ?enable_local_write_forwarding
           ?enabled_cloudwatch_logs_exports ?engine_lifecycle_support
           ?engine_mode ?engine_version ?final_snapshot_identifier
           ?global_cluster_identifier
           ?iam_database_authentication_enabled ?iam_roles ?id ?iops
           ?kms_key_id ?manage_master_user_password ?master_password
           ?master_user_secret_kms_key_id ?master_username
           ?network_type ?port ?preferred_backup_window
           ?preferred_maintenance_window
           ?replication_source_identifier ?skip_final_snapshot
           ?snapshot_identifier ?source_region ?storage_encrypted
           ?storage_type ?tags ?tags_all ?vpc_security_group_ids
           ~restore_to_point_in_time ~s3_import
           ~scaling_configuration ~serverlessv2_scaling_configuration
           ?timeouts ~engine ());
    attrs = __attrs;
  }

let register ?tf_module ?allocated_storage
    ?allow_major_version_upgrade ?apply_immediately
    ?availability_zones ?backtrack_window ?backup_retention_period
    ?ca_certificate_identifier ?cluster_identifier
    ?cluster_identifier_prefix ?cluster_members
    ?copy_tags_to_snapshot ?database_name ?db_cluster_instance_class
    ?db_cluster_parameter_group_name
    ?db_instance_parameter_group_name ?db_subnet_group_name
    ?db_system_id ?delete_automated_backups ?deletion_protection
    ?domain ?domain_iam_role_name ?enable_global_write_forwarding
    ?enable_http_endpoint ?enable_local_write_forwarding
    ?enabled_cloudwatch_logs_exports ?engine_lifecycle_support
    ?engine_mode ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?iam_database_authentication_enabled
    ?iam_roles ?id ?iops ?kms_key_id ?manage_master_user_password
    ?master_password ?master_user_secret_kms_key_id ?master_username
    ?network_type ?port ?preferred_backup_window
    ?preferred_maintenance_window ?replication_source_identifier
    ?skip_final_snapshot ?snapshot_identifier ?source_region
    ?storage_encrypted ?storage_type ?tags ?tags_all
    ?vpc_security_group_ids ?(restore_to_point_in_time = [])
    ?(s3_import = []) ?(scaling_configuration = [])
    ?(serverlessv2_scaling_configuration = []) ?timeouts ~engine __id
    =
  let (r : _ Tf_core.resource) =
    make ?allocated_storage ?allow_major_version_upgrade
      ?apply_immediately ?availability_zones ?backtrack_window
      ?backup_retention_period ?ca_certificate_identifier
      ?cluster_identifier ?cluster_identifier_prefix ?cluster_members
      ?copy_tags_to_snapshot ?database_name
      ?db_cluster_instance_class ?db_cluster_parameter_group_name
      ?db_instance_parameter_group_name ?db_subnet_group_name
      ?db_system_id ?delete_automated_backups ?deletion_protection
      ?domain ?domain_iam_role_name ?enable_global_write_forwarding
      ?enable_http_endpoint ?enable_local_write_forwarding
      ?enabled_cloudwatch_logs_exports ?engine_lifecycle_support
      ?engine_mode ?engine_version ?final_snapshot_identifier
      ?global_cluster_identifier ?iam_database_authentication_enabled
      ?iam_roles ?id ?iops ?kms_key_id ?manage_master_user_password
      ?master_password ?master_user_secret_kms_key_id
      ?master_username ?network_type ?port ?preferred_backup_window
      ?preferred_maintenance_window ?replication_source_identifier
      ?skip_final_snapshot ?snapshot_identifier ?source_region
      ?storage_encrypted ?storage_type ?tags ?tags_all
      ?vpc_security_group_ids ~restore_to_point_in_time ~s3_import
      ~scaling_configuration ~serverlessv2_scaling_configuration
      ?timeouts ~engine __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
