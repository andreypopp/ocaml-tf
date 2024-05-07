(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type blue_green_update = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : blue_green_update) -> ()

let yojson_of_blue_green_update =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blue_green_update -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blue_green_update

[@@@deriving.end]

type restore_to_point_in_time = {
  restore_time : string prop option; [@option]
  source_db_instance_automated_backups_arn : string prop option;
      [@option]
  source_db_instance_identifier : string prop option; [@option]
  source_dbi_resource_id : string prop option; [@option]
  use_latest_restorable_time : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_to_point_in_time) -> ()

let yojson_of_restore_to_point_in_time =
  (function
   | {
       restore_time = v_restore_time;
       source_db_instance_automated_backups_arn =
         v_source_db_instance_automated_backups_arn;
       source_db_instance_identifier =
         v_source_db_instance_identifier;
       source_dbi_resource_id = v_source_dbi_resource_id;
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
         match v_source_dbi_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_dbi_resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_db_instance_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_db_instance_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_db_instance_automated_backups_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "source_db_instance_automated_backups_arn", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_restore_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_time", arg in
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

type listener_endpoint = {
  address : string prop;
  hosted_zone_id : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : listener_endpoint) -> ()

let yojson_of_listener_endpoint =
  (function
   | {
       address = v_address;
       hosted_zone_id = v_hosted_zone_id;
       port = v_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hosted_zone_id
         in
         ("hosted_zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : listener_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_listener_endpoint

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

type aws_db_instance = {
  allocated_storage : float prop option; [@option]
  allow_major_version_upgrade : bool prop option; [@option]
  apply_immediately : bool prop option; [@option]
  auto_minor_version_upgrade : bool prop option; [@option]
  availability_zone : string prop option; [@option]
  backup_retention_period : float prop option; [@option]
  backup_target : string prop option; [@option]
  backup_window : string prop option; [@option]
  ca_cert_identifier : string prop option; [@option]
  character_set_name : string prop option; [@option]
  copy_tags_to_snapshot : bool prop option; [@option]
  custom_iam_instance_profile : string prop option; [@option]
  customer_owned_ip_enabled : bool prop option; [@option]
  db_name : string prop option; [@option]
  db_subnet_group_name : string prop option; [@option]
  delete_automated_backups : bool prop option; [@option]
  deletion_protection : bool prop option; [@option]
  domain : string prop option; [@option]
  domain_auth_secret_arn : string prop option; [@option]
  domain_dns_ips : string prop list option; [@option]
  domain_fqdn : string prop option; [@option]
  domain_iam_role_name : string prop option; [@option]
  domain_ou : string prop option; [@option]
  enabled_cloudwatch_logs_exports : string prop list option;
      [@option]
  engine : string prop option; [@option]
  engine_version : string prop option; [@option]
  final_snapshot_identifier : string prop option; [@option]
  iam_database_authentication_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  identifier : string prop option; [@option]
  identifier_prefix : string prop option; [@option]
  instance_class : string prop;
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  license_model : string prop option; [@option]
  maintenance_window : string prop option; [@option]
  manage_master_user_password : bool prop option; [@option]
  master_user_secret_kms_key_id : string prop option; [@option]
  max_allocated_storage : float prop option; [@option]
  monitoring_interval : float prop option; [@option]
  monitoring_role_arn : string prop option; [@option]
  multi_az : bool prop option; [@option]
  nchar_character_set_name : string prop option; [@option]
  network_type : string prop option; [@option]
  option_group_name : string prop option; [@option]
  parameter_group_name : string prop option; [@option]
  password : string prop option; [@option]
  performance_insights_enabled : bool prop option; [@option]
  performance_insights_kms_key_id : string prop option; [@option]
  performance_insights_retention_period : float prop option;
      [@option]
  port : float prop option; [@option]
  publicly_accessible : bool prop option; [@option]
  replica_mode : string prop option; [@option]
  replicate_source_db : string prop option; [@option]
  skip_final_snapshot : bool prop option; [@option]
  snapshot_identifier : string prop option; [@option]
  storage_encrypted : bool prop option; [@option]
  storage_throughput : float prop option; [@option]
  storage_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timezone : string prop option; [@option]
  username : string prop option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  blue_green_update : blue_green_update list;
  restore_to_point_in_time : restore_to_point_in_time list;
  s3_import : s3_import list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_instance) -> ()

let yojson_of_aws_db_instance =
  (function
   | {
       allocated_storage = v_allocated_storage;
       allow_major_version_upgrade = v_allow_major_version_upgrade;
       apply_immediately = v_apply_immediately;
       auto_minor_version_upgrade = v_auto_minor_version_upgrade;
       availability_zone = v_availability_zone;
       backup_retention_period = v_backup_retention_period;
       backup_target = v_backup_target;
       backup_window = v_backup_window;
       ca_cert_identifier = v_ca_cert_identifier;
       character_set_name = v_character_set_name;
       copy_tags_to_snapshot = v_copy_tags_to_snapshot;
       custom_iam_instance_profile = v_custom_iam_instance_profile;
       customer_owned_ip_enabled = v_customer_owned_ip_enabled;
       db_name = v_db_name;
       db_subnet_group_name = v_db_subnet_group_name;
       delete_automated_backups = v_delete_automated_backups;
       deletion_protection = v_deletion_protection;
       domain = v_domain;
       domain_auth_secret_arn = v_domain_auth_secret_arn;
       domain_dns_ips = v_domain_dns_ips;
       domain_fqdn = v_domain_fqdn;
       domain_iam_role_name = v_domain_iam_role_name;
       domain_ou = v_domain_ou;
       enabled_cloudwatch_logs_exports =
         v_enabled_cloudwatch_logs_exports;
       engine = v_engine;
       engine_version = v_engine_version;
       final_snapshot_identifier = v_final_snapshot_identifier;
       iam_database_authentication_enabled =
         v_iam_database_authentication_enabled;
       id = v_id;
       identifier = v_identifier;
       identifier_prefix = v_identifier_prefix;
       instance_class = v_instance_class;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       license_model = v_license_model;
       maintenance_window = v_maintenance_window;
       manage_master_user_password = v_manage_master_user_password;
       master_user_secret_kms_key_id =
         v_master_user_secret_kms_key_id;
       max_allocated_storage = v_max_allocated_storage;
       monitoring_interval = v_monitoring_interval;
       monitoring_role_arn = v_monitoring_role_arn;
       multi_az = v_multi_az;
       nchar_character_set_name = v_nchar_character_set_name;
       network_type = v_network_type;
       option_group_name = v_option_group_name;
       parameter_group_name = v_parameter_group_name;
       password = v_password;
       performance_insights_enabled = v_performance_insights_enabled;
       performance_insights_kms_key_id =
         v_performance_insights_kms_key_id;
       performance_insights_retention_period =
         v_performance_insights_retention_period;
       port = v_port;
       publicly_accessible = v_publicly_accessible;
       replica_mode = v_replica_mode;
       replicate_source_db = v_replicate_source_db;
       skip_final_snapshot = v_skip_final_snapshot;
       snapshot_identifier = v_snapshot_identifier;
       storage_encrypted = v_storage_encrypted;
       storage_throughput = v_storage_throughput;
       storage_type = v_storage_type;
       tags = v_tags;
       tags_all = v_tags_all;
       timezone = v_timezone;
       username = v_username;
       vpc_security_group_ids = v_vpc_security_group_ids;
       blue_green_update = v_blue_green_update;
       restore_to_point_in_time = v_restore_to_point_in_time;
       s3_import = v_s3_import;
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
         let arg = yojson_of_list yojson_of_s3_import v_s3_import in
         ("s3_import", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_restore_to_point_in_time
             v_restore_to_point_in_time
         in
         ("restore_to_point_in_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_blue_green_update
             v_blue_green_update
         in
         ("blue_green_update", arg) :: bnds
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
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
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
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_throughput", arg in
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
         match v_replicate_source_db with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replicate_source_db", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replica_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replica_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publicly_accessible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publicly_accessible", arg in
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
         match v_performance_insights_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "performance_insights_retention_period", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_performance_insights_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "performance_insights_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_performance_insights_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "performance_insights_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_option_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "option_group_name", arg in
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
         match v_nchar_character_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nchar_character_set_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_multi_az with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_az", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monitoring_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "monitoring_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monitoring_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "monitoring_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_allocated_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_allocated_storage", arg in
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
         match v_manage_master_user_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manage_master_user_password", arg in
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
         match v_license_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_model", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_instance_class
         in
         ("instance_class", arg) :: bnds
       in
       let bnds =
         match v_identifier_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier", arg in
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
         match v_iam_database_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "iam_database_authentication_enabled", arg in
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
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
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
         match v_domain_ou with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_ou", arg in
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
         match v_domain_fqdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_fqdn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_dns_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domain_dns_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_auth_secret_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_auth_secret_arn", arg in
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
         match v_db_subnet_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_subnet_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_owned_ip_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "customer_owned_ip_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_iam_instance_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_iam_instance_profile", arg in
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
         match v_character_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "character_set_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_cert_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_cert_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_window", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_target", arg in
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
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_minor_version_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_minor_version_upgrade", arg in
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
    : aws_db_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_instance

[@@@deriving.end]

let blue_green_update ?enabled () : blue_green_update = { enabled }

let restore_to_point_in_time ?restore_time
    ?source_db_instance_automated_backups_arn
    ?source_db_instance_identifier ?source_dbi_resource_id
    ?use_latest_restorable_time () : restore_to_point_in_time =
  {
    restore_time;
    source_db_instance_automated_backups_arn;
    source_db_instance_identifier;
    source_dbi_resource_id;
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

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_db_instance ?allocated_storage ?allow_major_version_upgrade
    ?apply_immediately ?auto_minor_version_upgrade ?availability_zone
    ?backup_retention_period ?backup_target ?backup_window
    ?ca_cert_identifier ?character_set_name ?copy_tags_to_snapshot
    ?custom_iam_instance_profile ?customer_owned_ip_enabled ?db_name
    ?db_subnet_group_name ?delete_automated_backups
    ?deletion_protection ?domain ?domain_auth_secret_arn
    ?domain_dns_ips ?domain_fqdn ?domain_iam_role_name ?domain_ou
    ?enabled_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?iam_database_authentication_enabled
    ?id ?identifier ?identifier_prefix ?iops ?kms_key_id
    ?license_model ?maintenance_window ?manage_master_user_password
    ?master_user_secret_kms_key_id ?max_allocated_storage
    ?monitoring_interval ?monitoring_role_arn ?multi_az
    ?nchar_character_set_name ?network_type ?option_group_name
    ?parameter_group_name ?password ?performance_insights_enabled
    ?performance_insights_kms_key_id
    ?performance_insights_retention_period ?port ?publicly_accessible
    ?replica_mode ?replicate_source_db ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_throughput
    ?storage_type ?tags ?tags_all ?timezone ?username
    ?vpc_security_group_ids ?(blue_green_update = [])
    ?(restore_to_point_in_time = []) ?(s3_import = []) ?timeouts
    ~instance_class () : aws_db_instance =
  {
    allocated_storage;
    allow_major_version_upgrade;
    apply_immediately;
    auto_minor_version_upgrade;
    availability_zone;
    backup_retention_period;
    backup_target;
    backup_window;
    ca_cert_identifier;
    character_set_name;
    copy_tags_to_snapshot;
    custom_iam_instance_profile;
    customer_owned_ip_enabled;
    db_name;
    db_subnet_group_name;
    delete_automated_backups;
    deletion_protection;
    domain;
    domain_auth_secret_arn;
    domain_dns_ips;
    domain_fqdn;
    domain_iam_role_name;
    domain_ou;
    enabled_cloudwatch_logs_exports;
    engine;
    engine_version;
    final_snapshot_identifier;
    iam_database_authentication_enabled;
    id;
    identifier;
    identifier_prefix;
    instance_class;
    iops;
    kms_key_id;
    license_model;
    maintenance_window;
    manage_master_user_password;
    master_user_secret_kms_key_id;
    max_allocated_storage;
    monitoring_interval;
    monitoring_role_arn;
    multi_az;
    nchar_character_set_name;
    network_type;
    option_group_name;
    parameter_group_name;
    password;
    performance_insights_enabled;
    performance_insights_kms_key_id;
    performance_insights_retention_period;
    port;
    publicly_accessible;
    replica_mode;
    replicate_source_db;
    skip_final_snapshot;
    snapshot_identifier;
    storage_encrypted;
    storage_throughput;
    storage_type;
    tags;
    tags_all;
    timezone;
    username;
    vpc_security_group_ids;
    blue_green_update;
    restore_to_point_in_time;
    s3_import;
    timeouts;
  }

type t = {
  tf_name : string;
  address : string prop;
  allocated_storage : float prop;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  backup_retention_period : float prop;
  backup_target : string prop;
  backup_window : string prop;
  ca_cert_identifier : string prop;
  character_set_name : string prop;
  copy_tags_to_snapshot : bool prop;
  custom_iam_instance_profile : string prop;
  customer_owned_ip_enabled : bool prop;
  db_name : string prop;
  db_subnet_group_name : string prop;
  delete_automated_backups : bool prop;
  deletion_protection : bool prop;
  domain : string prop;
  domain_auth_secret_arn : string prop;
  domain_dns_ips : string list prop;
  domain_fqdn : string prop;
  domain_iam_role_name : string prop;
  domain_ou : string prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  final_snapshot_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  instance_class : string prop;
  iops : float prop;
  kms_key_id : string prop;
  latest_restorable_time : string prop;
  license_model : string prop;
  listener_endpoint : listener_endpoint list prop;
  maintenance_window : string prop;
  manage_master_user_password : bool prop;
  master_user_secret : master_user_secret list prop;
  master_user_secret_kms_key_id : string prop;
  max_allocated_storage : float prop;
  monitoring_interval : float prop;
  monitoring_role_arn : string prop;
  multi_az : bool prop;
  nchar_character_set_name : string prop;
  network_type : string prop;
  option_group_name : string prop;
  parameter_group_name : string prop;
  password : string prop;
  performance_insights_enabled : bool prop;
  performance_insights_kms_key_id : string prop;
  performance_insights_retention_period : float prop;
  port : float prop;
  publicly_accessible : bool prop;
  replica_mode : string prop;
  replicas : string list prop;
  replicate_source_db : string prop;
  resource_id : string prop;
  skip_final_snapshot : bool prop;
  snapshot_identifier : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  storage_throughput : float prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timezone : string prop;
  username : string prop;
  vpc_security_group_ids : string list prop;
}

let make ?allocated_storage ?allow_major_version_upgrade
    ?apply_immediately ?auto_minor_version_upgrade ?availability_zone
    ?backup_retention_period ?backup_target ?backup_window
    ?ca_cert_identifier ?character_set_name ?copy_tags_to_snapshot
    ?custom_iam_instance_profile ?customer_owned_ip_enabled ?db_name
    ?db_subnet_group_name ?delete_automated_backups
    ?deletion_protection ?domain ?domain_auth_secret_arn
    ?domain_dns_ips ?domain_fqdn ?domain_iam_role_name ?domain_ou
    ?enabled_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?iam_database_authentication_enabled
    ?id ?identifier ?identifier_prefix ?iops ?kms_key_id
    ?license_model ?maintenance_window ?manage_master_user_password
    ?master_user_secret_kms_key_id ?max_allocated_storage
    ?monitoring_interval ?monitoring_role_arn ?multi_az
    ?nchar_character_set_name ?network_type ?option_group_name
    ?parameter_group_name ?password ?performance_insights_enabled
    ?performance_insights_kms_key_id
    ?performance_insights_retention_period ?port ?publicly_accessible
    ?replica_mode ?replicate_source_db ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_throughput
    ?storage_type ?tags ?tags_all ?timezone ?username
    ?vpc_security_group_ids ?(blue_green_update = [])
    ?(restore_to_point_in_time = []) ?(s3_import = []) ?timeouts
    ~instance_class __id =
  let __type = "aws_db_instance" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       allow_major_version_upgrade =
         Prop.computed __type __id "allow_major_version_upgrade";
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       backup_retention_period =
         Prop.computed __type __id "backup_retention_period";
       backup_target = Prop.computed __type __id "backup_target";
       backup_window = Prop.computed __type __id "backup_window";
       ca_cert_identifier =
         Prop.computed __type __id "ca_cert_identifier";
       character_set_name =
         Prop.computed __type __id "character_set_name";
       copy_tags_to_snapshot =
         Prop.computed __type __id "copy_tags_to_snapshot";
       custom_iam_instance_profile =
         Prop.computed __type __id "custom_iam_instance_profile";
       customer_owned_ip_enabled =
         Prop.computed __type __id "customer_owned_ip_enabled";
       db_name = Prop.computed __type __id "db_name";
       db_subnet_group_name =
         Prop.computed __type __id "db_subnet_group_name";
       delete_automated_backups =
         Prop.computed __type __id "delete_automated_backups";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       domain = Prop.computed __type __id "domain";
       domain_auth_secret_arn =
         Prop.computed __type __id "domain_auth_secret_arn";
       domain_dns_ips = Prop.computed __type __id "domain_dns_ips";
       domain_fqdn = Prop.computed __type __id "domain_fqdn";
       domain_iam_role_name =
         Prop.computed __type __id "domain_iam_role_name";
       domain_ou = Prop.computed __type __id "domain_ou";
       enabled_cloudwatch_logs_exports =
         Prop.computed __type __id "enabled_cloudwatch_logs_exports";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       engine_version_actual =
         Prop.computed __type __id "engine_version_actual";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       iam_database_authentication_enabled =
         Prop.computed __type __id
           "iam_database_authentication_enabled";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       identifier_prefix =
         Prop.computed __type __id "identifier_prefix";
       instance_class = Prop.computed __type __id "instance_class";
       iops = Prop.computed __type __id "iops";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       latest_restorable_time =
         Prop.computed __type __id "latest_restorable_time";
       license_model = Prop.computed __type __id "license_model";
       listener_endpoint =
         Prop.computed __type __id "listener_endpoint";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       manage_master_user_password =
         Prop.computed __type __id "manage_master_user_password";
       master_user_secret =
         Prop.computed __type __id "master_user_secret";
       master_user_secret_kms_key_id =
         Prop.computed __type __id "master_user_secret_kms_key_id";
       max_allocated_storage =
         Prop.computed __type __id "max_allocated_storage";
       monitoring_interval =
         Prop.computed __type __id "monitoring_interval";
       monitoring_role_arn =
         Prop.computed __type __id "monitoring_role_arn";
       multi_az = Prop.computed __type __id "multi_az";
       nchar_character_set_name =
         Prop.computed __type __id "nchar_character_set_name";
       network_type = Prop.computed __type __id "network_type";
       option_group_name =
         Prop.computed __type __id "option_group_name";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       password = Prop.computed __type __id "password";
       performance_insights_enabled =
         Prop.computed __type __id "performance_insights_enabled";
       performance_insights_kms_key_id =
         Prop.computed __type __id "performance_insights_kms_key_id";
       performance_insights_retention_period =
         Prop.computed __type __id
           "performance_insights_retention_period";
       port = Prop.computed __type __id "port";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       replica_mode = Prop.computed __type __id "replica_mode";
       replicas = Prop.computed __type __id "replicas";
       replicate_source_db =
         Prop.computed __type __id "replicate_source_db";
       resource_id = Prop.computed __type __id "resource_id";
       skip_final_snapshot =
         Prop.computed __type __id "skip_final_snapshot";
       snapshot_identifier =
         Prop.computed __type __id "snapshot_identifier";
       status = Prop.computed __type __id "status";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
       storage_throughput =
         Prop.computed __type __id "storage_throughput";
       storage_type = Prop.computed __type __id "storage_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timezone = Prop.computed __type __id "timezone";
       username = Prop.computed __type __id "username";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_instance
        (aws_db_instance ?allocated_storage
           ?allow_major_version_upgrade ?apply_immediately
           ?auto_minor_version_upgrade ?availability_zone
           ?backup_retention_period ?backup_target ?backup_window
           ?ca_cert_identifier ?character_set_name
           ?copy_tags_to_snapshot ?custom_iam_instance_profile
           ?customer_owned_ip_enabled ?db_name ?db_subnet_group_name
           ?delete_automated_backups ?deletion_protection ?domain
           ?domain_auth_secret_arn ?domain_dns_ips ?domain_fqdn
           ?domain_iam_role_name ?domain_ou
           ?enabled_cloudwatch_logs_exports ?engine ?engine_version
           ?final_snapshot_identifier
           ?iam_database_authentication_enabled ?id ?identifier
           ?identifier_prefix ?iops ?kms_key_id ?license_model
           ?maintenance_window ?manage_master_user_password
           ?master_user_secret_kms_key_id ?max_allocated_storage
           ?monitoring_interval ?monitoring_role_arn ?multi_az
           ?nchar_character_set_name ?network_type ?option_group_name
           ?parameter_group_name ?password
           ?performance_insights_enabled
           ?performance_insights_kms_key_id
           ?performance_insights_retention_period ?port
           ?publicly_accessible ?replica_mode ?replicate_source_db
           ?skip_final_snapshot ?snapshot_identifier
           ?storage_encrypted ?storage_throughput ?storage_type ?tags
           ?tags_all ?timezone ?username ?vpc_security_group_ids
           ~blue_green_update ~restore_to_point_in_time ~s3_import
           ?timeouts ~instance_class ());
    attrs = __attrs;
  }

let register ?tf_module ?allocated_storage
    ?allow_major_version_upgrade ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone
    ?backup_retention_period ?backup_target ?backup_window
    ?ca_cert_identifier ?character_set_name ?copy_tags_to_snapshot
    ?custom_iam_instance_profile ?customer_owned_ip_enabled ?db_name
    ?db_subnet_group_name ?delete_automated_backups
    ?deletion_protection ?domain ?domain_auth_secret_arn
    ?domain_dns_ips ?domain_fqdn ?domain_iam_role_name ?domain_ou
    ?enabled_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?iam_database_authentication_enabled
    ?id ?identifier ?identifier_prefix ?iops ?kms_key_id
    ?license_model ?maintenance_window ?manage_master_user_password
    ?master_user_secret_kms_key_id ?max_allocated_storage
    ?monitoring_interval ?monitoring_role_arn ?multi_az
    ?nchar_character_set_name ?network_type ?option_group_name
    ?parameter_group_name ?password ?performance_insights_enabled
    ?performance_insights_kms_key_id
    ?performance_insights_retention_period ?port ?publicly_accessible
    ?replica_mode ?replicate_source_db ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_throughput
    ?storage_type ?tags ?tags_all ?timezone ?username
    ?vpc_security_group_ids ?(blue_green_update = [])
    ?(restore_to_point_in_time = []) ?(s3_import = []) ?timeouts
    ~instance_class __id =
  let (r : _ Tf_core.resource) =
    make ?allocated_storage ?allow_major_version_upgrade
      ?apply_immediately ?auto_minor_version_upgrade
      ?availability_zone ?backup_retention_period ?backup_target
      ?backup_window ?ca_cert_identifier ?character_set_name
      ?copy_tags_to_snapshot ?custom_iam_instance_profile
      ?customer_owned_ip_enabled ?db_name ?db_subnet_group_name
      ?delete_automated_backups ?deletion_protection ?domain
      ?domain_auth_secret_arn ?domain_dns_ips ?domain_fqdn
      ?domain_iam_role_name ?domain_ou
      ?enabled_cloudwatch_logs_exports ?engine ?engine_version
      ?final_snapshot_identifier ?iam_database_authentication_enabled
      ?id ?identifier ?identifier_prefix ?iops ?kms_key_id
      ?license_model ?maintenance_window ?manage_master_user_password
      ?master_user_secret_kms_key_id ?max_allocated_storage
      ?monitoring_interval ?monitoring_role_arn ?multi_az
      ?nchar_character_set_name ?network_type ?option_group_name
      ?parameter_group_name ?password ?performance_insights_enabled
      ?performance_insights_kms_key_id
      ?performance_insights_retention_period ?port
      ?publicly_accessible ?replica_mode ?replicate_source_db
      ?skip_final_snapshot ?snapshot_identifier ?storage_encrypted
      ?storage_throughput ?storage_type ?tags ?tags_all ?timezone
      ?username ?vpc_security_group_ids ~blue_green_update
      ~restore_to_point_in_time ~s3_import ?timeouts ~instance_class
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
