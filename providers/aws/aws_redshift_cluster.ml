(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging = {
  bucket_name : string prop option; [@option]
  enable : bool prop;
  log_destination_type : string prop option; [@option]
  log_exports : string prop list option; [@option]
  s3_key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging) -> ()

let yojson_of_logging =
  (function
   | {
       bucket_name = v_bucket_name;
       enable = v_enable;
       log_destination_type = v_log_destination_type;
       log_exports = v_log_exports;
       s3_key_prefix = v_s3_key_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_exports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "log_exports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_destination_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_destination_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging

[@@@deriving.end]

type snapshot_copy = {
  destination_region : string prop;
  grant_name : string prop option; [@option]
  retention_period : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_copy) -> ()

let yojson_of_snapshot_copy =
  (function
   | {
       destination_region = v_destination_region;
       grant_name = v_grant_name;
       retention_period = v_retention_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_grant_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grant_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_region
         in
         ("destination_region", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_copy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_copy

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

type cluster_nodes = {
  node_role : string prop;
  private_ip_address : string prop;
  public_ip_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_nodes) -> ()

let yojson_of_cluster_nodes =
  (function
   | {
       node_role = v_node_role;
       private_ip_address = v_private_ip_address;
       public_ip_address = v_public_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address
         in
         ("public_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_role in
         ("node_role", arg) :: bnds
       in
       `Assoc bnds
    : cluster_nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_nodes

[@@@deriving.end]

type aws_redshift_cluster = {
  allow_version_upgrade : bool prop option; [@option]
  apply_immediately : bool prop option; [@option]
  aqua_configuration_status : string prop option; [@option]
  automated_snapshot_retention_period : float prop option; [@option]
  availability_zone : string prop option; [@option]
  availability_zone_relocation_enabled : bool prop option; [@option]
  cluster_identifier : string prop;
  cluster_parameter_group_name : string prop option; [@option]
  cluster_public_key : string prop option; [@option]
  cluster_revision_number : string prop option; [@option]
  cluster_subnet_group_name : string prop option; [@option]
  cluster_type : string prop option; [@option]
  cluster_version : string prop option; [@option]
  database_name : string prop option; [@option]
  default_iam_role_arn : string prop option; [@option]
  elastic_ip : string prop option; [@option]
  encrypted : bool prop option; [@option]
  endpoint : string prop option; [@option]
  enhanced_vpc_routing : bool prop option; [@option]
  final_snapshot_identifier : string prop option; [@option]
  iam_roles : string prop list option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  maintenance_track_name : string prop option; [@option]
  manage_master_password : bool prop option; [@option]
  manual_snapshot_retention_period : float prop option; [@option]
  master_password : string prop option; [@option]
  master_password_secret_kms_key_id : string prop option; [@option]
  master_username : string prop option; [@option]
  multi_az : bool prop option; [@option]
  node_type : string prop;
  number_of_nodes : float prop option; [@option]
  owner_account : string prop option; [@option]
  port : float prop option; [@option]
  preferred_maintenance_window : string prop option; [@option]
  publicly_accessible : bool prop option; [@option]
  skip_final_snapshot : bool prop option; [@option]
  snapshot_arn : string prop option; [@option]
  snapshot_cluster_identifier : string prop option; [@option]
  snapshot_identifier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  logging : logging list;
  snapshot_copy : snapshot_copy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_cluster) -> ()

let yojson_of_aws_redshift_cluster =
  (function
   | {
       allow_version_upgrade = v_allow_version_upgrade;
       apply_immediately = v_apply_immediately;
       aqua_configuration_status = v_aqua_configuration_status;
       automated_snapshot_retention_period =
         v_automated_snapshot_retention_period;
       availability_zone = v_availability_zone;
       availability_zone_relocation_enabled =
         v_availability_zone_relocation_enabled;
       cluster_identifier = v_cluster_identifier;
       cluster_parameter_group_name = v_cluster_parameter_group_name;
       cluster_public_key = v_cluster_public_key;
       cluster_revision_number = v_cluster_revision_number;
       cluster_subnet_group_name = v_cluster_subnet_group_name;
       cluster_type = v_cluster_type;
       cluster_version = v_cluster_version;
       database_name = v_database_name;
       default_iam_role_arn = v_default_iam_role_arn;
       elastic_ip = v_elastic_ip;
       encrypted = v_encrypted;
       endpoint = v_endpoint;
       enhanced_vpc_routing = v_enhanced_vpc_routing;
       final_snapshot_identifier = v_final_snapshot_identifier;
       iam_roles = v_iam_roles;
       id = v_id;
       kms_key_id = v_kms_key_id;
       maintenance_track_name = v_maintenance_track_name;
       manage_master_password = v_manage_master_password;
       manual_snapshot_retention_period =
         v_manual_snapshot_retention_period;
       master_password = v_master_password;
       master_password_secret_kms_key_id =
         v_master_password_secret_kms_key_id;
       master_username = v_master_username;
       multi_az = v_multi_az;
       node_type = v_node_type;
       number_of_nodes = v_number_of_nodes;
       owner_account = v_owner_account;
       port = v_port;
       preferred_maintenance_window = v_preferred_maintenance_window;
       publicly_accessible = v_publicly_accessible;
       skip_final_snapshot = v_skip_final_snapshot;
       snapshot_arn = v_snapshot_arn;
       snapshot_cluster_identifier = v_snapshot_cluster_identifier;
       snapshot_identifier = v_snapshot_identifier;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_security_group_ids = v_vpc_security_group_ids;
       logging = v_logging;
       snapshot_copy = v_snapshot_copy;
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
           yojson_of_list yojson_of_snapshot_copy v_snapshot_copy
         in
         ("snapshot_copy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_logging v_logging in
         ("logging", arg) :: bnds
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
         match v_snapshot_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_cluster_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_cluster_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_arn", arg in
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
         match v_publicly_accessible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publicly_accessible", arg in
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_of_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type in
         ("node_type", arg) :: bnds
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
         match v_master_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_password_secret_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_password_secret_kms_key_id", arg in
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
         match v_manual_snapshot_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "manual_snapshot_retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manage_master_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manage_master_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintenance_track_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_track_name", arg in
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
         match v_final_snapshot_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "final_snapshot_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enhanced_vpc_routing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enhanced_vpc_routing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elastic_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elastic_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_iam_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_iam_role_arn", arg in
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
         match v_cluster_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_subnet_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_subnet_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_revision_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_revision_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_public_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_public_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_parameter_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       let bnds =
         match v_availability_zone_relocation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "availability_zone_relocation_enabled", arg in
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
         match v_automated_snapshot_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "automated_snapshot_retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aqua_configuration_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aqua_configuration_status", arg in
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
         match v_allow_version_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_version_upgrade", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_cluster

[@@@deriving.end]

let logging ?bucket_name ?log_destination_type ?log_exports
    ?s3_key_prefix ~enable () : logging =
  {
    bucket_name;
    enable;
    log_destination_type;
    log_exports;
    s3_key_prefix;
  }

let snapshot_copy ?grant_name ?retention_period ~destination_region
    () : snapshot_copy =
  { destination_region; grant_name; retention_period }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_redshift_cluster ?allow_version_upgrade ?apply_immediately
    ?aqua_configuration_status ?automated_snapshot_retention_period
    ?availability_zone ?availability_zone_relocation_enabled
    ?cluster_parameter_group_name ?cluster_public_key
    ?cluster_revision_number ?cluster_subnet_group_name ?cluster_type
    ?cluster_version ?database_name ?default_iam_role_arn ?elastic_ip
    ?encrypted ?endpoint ?enhanced_vpc_routing
    ?final_snapshot_identifier ?iam_roles ?id ?kms_key_id
    ?maintenance_track_name ?manage_master_password
    ?manual_snapshot_retention_period ?master_password
    ?master_password_secret_kms_key_id ?master_username ?multi_az
    ?number_of_nodes ?owner_account ?port
    ?preferred_maintenance_window ?publicly_accessible
    ?skip_final_snapshot ?snapshot_arn ?snapshot_cluster_identifier
    ?snapshot_identifier ?tags ?tags_all ?vpc_security_group_ids
    ?timeouts ~cluster_identifier ~node_type ~logging ~snapshot_copy
    () : aws_redshift_cluster =
  {
    allow_version_upgrade;
    apply_immediately;
    aqua_configuration_status;
    automated_snapshot_retention_period;
    availability_zone;
    availability_zone_relocation_enabled;
    cluster_identifier;
    cluster_parameter_group_name;
    cluster_public_key;
    cluster_revision_number;
    cluster_subnet_group_name;
    cluster_type;
    cluster_version;
    database_name;
    default_iam_role_arn;
    elastic_ip;
    encrypted;
    endpoint;
    enhanced_vpc_routing;
    final_snapshot_identifier;
    iam_roles;
    id;
    kms_key_id;
    maintenance_track_name;
    manage_master_password;
    manual_snapshot_retention_period;
    master_password;
    master_password_secret_kms_key_id;
    master_username;
    multi_az;
    node_type;
    number_of_nodes;
    owner_account;
    port;
    preferred_maintenance_window;
    publicly_accessible;
    skip_final_snapshot;
    snapshot_arn;
    snapshot_cluster_identifier;
    snapshot_identifier;
    tags;
    tags_all;
    vpc_security_group_ids;
    logging;
    snapshot_copy;
    timeouts;
  }

type t = {
  allow_version_upgrade : bool prop;
  apply_immediately : bool prop;
  aqua_configuration_status : string prop;
  arn : string prop;
  automated_snapshot_retention_period : float prop;
  availability_zone : string prop;
  availability_zone_relocation_enabled : bool prop;
  cluster_identifier : string prop;
  cluster_namespace_arn : string prop;
  cluster_nodes : cluster_nodes list prop;
  cluster_parameter_group_name : string prop;
  cluster_public_key : string prop;
  cluster_revision_number : string prop;
  cluster_subnet_group_name : string prop;
  cluster_type : string prop;
  cluster_version : string prop;
  database_name : string prop;
  default_iam_role_arn : string prop;
  dns_name : string prop;
  elastic_ip : string prop;
  encrypted : bool prop;
  endpoint : string prop;
  enhanced_vpc_routing : bool prop;
  final_snapshot_identifier : string prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  maintenance_track_name : string prop;
  manage_master_password : bool prop;
  manual_snapshot_retention_period : float prop;
  master_password : string prop;
  master_password_secret_arn : string prop;
  master_password_secret_kms_key_id : string prop;
  master_username : string prop;
  multi_az : bool prop;
  node_type : string prop;
  number_of_nodes : float prop;
  owner_account : string prop;
  port : float prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  skip_final_snapshot : bool prop;
  snapshot_arn : string prop;
  snapshot_cluster_identifier : string prop;
  snapshot_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let make ?allow_version_upgrade ?apply_immediately
    ?aqua_configuration_status ?automated_snapshot_retention_period
    ?availability_zone ?availability_zone_relocation_enabled
    ?cluster_parameter_group_name ?cluster_public_key
    ?cluster_revision_number ?cluster_subnet_group_name ?cluster_type
    ?cluster_version ?database_name ?default_iam_role_arn ?elastic_ip
    ?encrypted ?endpoint ?enhanced_vpc_routing
    ?final_snapshot_identifier ?iam_roles ?id ?kms_key_id
    ?maintenance_track_name ?manage_master_password
    ?manual_snapshot_retention_period ?master_password
    ?master_password_secret_kms_key_id ?master_username ?multi_az
    ?number_of_nodes ?owner_account ?port
    ?preferred_maintenance_window ?publicly_accessible
    ?skip_final_snapshot ?snapshot_arn ?snapshot_cluster_identifier
    ?snapshot_identifier ?tags ?tags_all ?vpc_security_group_ids
    ?timeouts ~cluster_identifier ~node_type ~logging ~snapshot_copy
    __id =
  let __type = "aws_redshift_cluster" in
  let __attrs =
    ({
       allow_version_upgrade =
         Prop.computed __type __id "allow_version_upgrade";
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       aqua_configuration_status =
         Prop.computed __type __id "aqua_configuration_status";
       arn = Prop.computed __type __id "arn";
       automated_snapshot_retention_period =
         Prop.computed __type __id
           "automated_snapshot_retention_period";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       availability_zone_relocation_enabled =
         Prop.computed __type __id
           "availability_zone_relocation_enabled";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       cluster_namespace_arn =
         Prop.computed __type __id "cluster_namespace_arn";
       cluster_nodes = Prop.computed __type __id "cluster_nodes";
       cluster_parameter_group_name =
         Prop.computed __type __id "cluster_parameter_group_name";
       cluster_public_key =
         Prop.computed __type __id "cluster_public_key";
       cluster_revision_number =
         Prop.computed __type __id "cluster_revision_number";
       cluster_subnet_group_name =
         Prop.computed __type __id "cluster_subnet_group_name";
       cluster_type = Prop.computed __type __id "cluster_type";
       cluster_version = Prop.computed __type __id "cluster_version";
       database_name = Prop.computed __type __id "database_name";
       default_iam_role_arn =
         Prop.computed __type __id "default_iam_role_arn";
       dns_name = Prop.computed __type __id "dns_name";
       elastic_ip = Prop.computed __type __id "elastic_ip";
       encrypted = Prop.computed __type __id "encrypted";
       endpoint = Prop.computed __type __id "endpoint";
       enhanced_vpc_routing =
         Prop.computed __type __id "enhanced_vpc_routing";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       iam_roles = Prop.computed __type __id "iam_roles";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       maintenance_track_name =
         Prop.computed __type __id "maintenance_track_name";
       manage_master_password =
         Prop.computed __type __id "manage_master_password";
       manual_snapshot_retention_period =
         Prop.computed __type __id "manual_snapshot_retention_period";
       master_password = Prop.computed __type __id "master_password";
       master_password_secret_arn =
         Prop.computed __type __id "master_password_secret_arn";
       master_password_secret_kms_key_id =
         Prop.computed __type __id
           "master_password_secret_kms_key_id";
       master_username = Prop.computed __type __id "master_username";
       multi_az = Prop.computed __type __id "multi_az";
       node_type = Prop.computed __type __id "node_type";
       number_of_nodes = Prop.computed __type __id "number_of_nodes";
       owner_account = Prop.computed __type __id "owner_account";
       port = Prop.computed __type __id "port";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       skip_final_snapshot =
         Prop.computed __type __id "skip_final_snapshot";
       snapshot_arn = Prop.computed __type __id "snapshot_arn";
       snapshot_cluster_identifier =
         Prop.computed __type __id "snapshot_cluster_identifier";
       snapshot_identifier =
         Prop.computed __type __id "snapshot_identifier";
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
      yojson_of_aws_redshift_cluster
        (aws_redshift_cluster ?allow_version_upgrade
           ?apply_immediately ?aqua_configuration_status
           ?automated_snapshot_retention_period ?availability_zone
           ?availability_zone_relocation_enabled
           ?cluster_parameter_group_name ?cluster_public_key
           ?cluster_revision_number ?cluster_subnet_group_name
           ?cluster_type ?cluster_version ?database_name
           ?default_iam_role_arn ?elastic_ip ?encrypted ?endpoint
           ?enhanced_vpc_routing ?final_snapshot_identifier
           ?iam_roles ?id ?kms_key_id ?maintenance_track_name
           ?manage_master_password ?manual_snapshot_retention_period
           ?master_password ?master_password_secret_kms_key_id
           ?master_username ?multi_az ?number_of_nodes ?owner_account
           ?port ?preferred_maintenance_window ?publicly_accessible
           ?skip_final_snapshot ?snapshot_arn
           ?snapshot_cluster_identifier ?snapshot_identifier ?tags
           ?tags_all ?vpc_security_group_ids ?timeouts
           ~cluster_identifier ~node_type ~logging ~snapshot_copy ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_version_upgrade ?apply_immediately
    ?aqua_configuration_status ?automated_snapshot_retention_period
    ?availability_zone ?availability_zone_relocation_enabled
    ?cluster_parameter_group_name ?cluster_public_key
    ?cluster_revision_number ?cluster_subnet_group_name ?cluster_type
    ?cluster_version ?database_name ?default_iam_role_arn ?elastic_ip
    ?encrypted ?endpoint ?enhanced_vpc_routing
    ?final_snapshot_identifier ?iam_roles ?id ?kms_key_id
    ?maintenance_track_name ?manage_master_password
    ?manual_snapshot_retention_period ?master_password
    ?master_password_secret_kms_key_id ?master_username ?multi_az
    ?number_of_nodes ?owner_account ?port
    ?preferred_maintenance_window ?publicly_accessible
    ?skip_final_snapshot ?snapshot_arn ?snapshot_cluster_identifier
    ?snapshot_identifier ?tags ?tags_all ?vpc_security_group_ids
    ?timeouts ~cluster_identifier ~node_type ~logging ~snapshot_copy
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_version_upgrade ?apply_immediately
      ?aqua_configuration_status ?automated_snapshot_retention_period
      ?availability_zone ?availability_zone_relocation_enabled
      ?cluster_parameter_group_name ?cluster_public_key
      ?cluster_revision_number ?cluster_subnet_group_name
      ?cluster_type ?cluster_version ?database_name
      ?default_iam_role_arn ?elastic_ip ?encrypted ?endpoint
      ?enhanced_vpc_routing ?final_snapshot_identifier ?iam_roles ?id
      ?kms_key_id ?maintenance_track_name ?manage_master_password
      ?manual_snapshot_retention_period ?master_password
      ?master_password_secret_kms_key_id ?master_username ?multi_az
      ?number_of_nodes ?owner_account ?port
      ?preferred_maintenance_window ?publicly_accessible
      ?skip_final_snapshot ?snapshot_arn ?snapshot_cluster_identifier
      ?snapshot_identifier ?tags ?tags_all ?vpc_security_group_ids
      ?timeouts ~cluster_identifier ~node_type ~logging
      ~snapshot_copy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
