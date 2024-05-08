(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type serverless_v2_scaling_configuration = {
  max_capacity : float prop option; [@option]
  min_capacity : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serverless_v2_scaling_configuration) -> ()

let yojson_of_serverless_v2_scaling_configuration =
  (function
   | { max_capacity = v_max_capacity; min_capacity = v_min_capacity }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : serverless_v2_scaling_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serverless_v2_scaling_configuration

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

type aws_neptune_cluster = {
  allow_major_version_upgrade : bool prop option; [@option]
  apply_immediately : bool prop option; [@option]
  availability_zones : string prop list option; [@option]
  backup_retention_period : float prop option; [@option]
  cluster_identifier : string prop option; [@option]
  cluster_identifier_prefix : string prop option; [@option]
  copy_tags_to_snapshot : bool prop option; [@option]
  deletion_protection : bool prop option; [@option]
  enable_cloudwatch_logs_exports : string prop list option; [@option]
  engine : string prop option; [@option]
  engine_version : string prop option; [@option]
  final_snapshot_identifier : string prop option; [@option]
  global_cluster_identifier : string prop option; [@option]
  iam_database_authentication_enabled : bool prop option; [@option]
  iam_roles : string prop list option; [@option]
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  neptune_cluster_parameter_group_name : string prop option;
      [@option]
  neptune_instance_parameter_group_name : string prop option;
      [@option]
  neptune_subnet_group_name : string prop option; [@option]
  port : float prop option; [@option]
  preferred_backup_window : string prop option; [@option]
  preferred_maintenance_window : string prop option; [@option]
  replication_source_identifier : string prop option; [@option]
  skip_final_snapshot : bool prop option; [@option]
  snapshot_identifier : string prop option; [@option]
  storage_encrypted : bool prop option; [@option]
  storage_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  serverless_v2_scaling_configuration :
    serverless_v2_scaling_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_neptune_cluster) -> ()

let yojson_of_aws_neptune_cluster =
  (function
   | {
       allow_major_version_upgrade = v_allow_major_version_upgrade;
       apply_immediately = v_apply_immediately;
       availability_zones = v_availability_zones;
       backup_retention_period = v_backup_retention_period;
       cluster_identifier = v_cluster_identifier;
       cluster_identifier_prefix = v_cluster_identifier_prefix;
       copy_tags_to_snapshot = v_copy_tags_to_snapshot;
       deletion_protection = v_deletion_protection;
       enable_cloudwatch_logs_exports =
         v_enable_cloudwatch_logs_exports;
       engine = v_engine;
       engine_version = v_engine_version;
       final_snapshot_identifier = v_final_snapshot_identifier;
       global_cluster_identifier = v_global_cluster_identifier;
       iam_database_authentication_enabled =
         v_iam_database_authentication_enabled;
       iam_roles = v_iam_roles;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       neptune_cluster_parameter_group_name =
         v_neptune_cluster_parameter_group_name;
       neptune_instance_parameter_group_name =
         v_neptune_instance_parameter_group_name;
       neptune_subnet_group_name = v_neptune_subnet_group_name;
       port = v_port;
       preferred_backup_window = v_preferred_backup_window;
       preferred_maintenance_window = v_preferred_maintenance_window;
       replication_source_identifier =
         v_replication_source_identifier;
       skip_final_snapshot = v_skip_final_snapshot;
       snapshot_identifier = v_snapshot_identifier;
       storage_encrypted = v_storage_encrypted;
       storage_type = v_storage_type;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_security_group_ids = v_vpc_security_group_ids;
       serverless_v2_scaling_configuration =
         v_serverless_v2_scaling_configuration;
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
         if [] = v_serverless_v2_scaling_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_serverless_v2_scaling_configuration)
               v_serverless_v2_scaling_configuration
           in
           let bnd = "serverless_v2_scaling_configuration", arg in
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
         match v_neptune_subnet_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "neptune_subnet_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_neptune_instance_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "neptune_instance_parameter_group_name", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_neptune_cluster_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "neptune_cluster_parameter_group_name", arg in
             bnd :: bnds
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
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_cloudwatch_logs_exports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enable_cloudwatch_logs_exports", arg in
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
         match v_copy_tags_to_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags_to_snapshot", arg in
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
         match v_backup_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_retention_period", arg in
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
       `Assoc bnds
    : aws_neptune_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_neptune_cluster

[@@@deriving.end]

let serverless_v2_scaling_configuration ?max_capacity ?min_capacity
    () : serverless_v2_scaling_configuration =
  { max_capacity; min_capacity }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_neptune_cluster ?allow_major_version_upgrade
    ?apply_immediately ?availability_zones ?backup_retention_period
    ?cluster_identifier ?cluster_identifier_prefix
    ?copy_tags_to_snapshot ?deletion_protection
    ?enable_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?global_cluster_identifier
    ?iam_database_authentication_enabled ?iam_roles ?id ?kms_key_arn
    ?neptune_cluster_parameter_group_name
    ?neptune_instance_parameter_group_name ?neptune_subnet_group_name
    ?port ?preferred_backup_window ?preferred_maintenance_window
    ?replication_source_identifier ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
    ?tags_all ?vpc_security_group_ids
    ?(serverless_v2_scaling_configuration = []) ?timeouts () :
    aws_neptune_cluster =
  {
    allow_major_version_upgrade;
    apply_immediately;
    availability_zones;
    backup_retention_period;
    cluster_identifier;
    cluster_identifier_prefix;
    copy_tags_to_snapshot;
    deletion_protection;
    enable_cloudwatch_logs_exports;
    engine;
    engine_version;
    final_snapshot_identifier;
    global_cluster_identifier;
    iam_database_authentication_enabled;
    iam_roles;
    id;
    kms_key_arn;
    neptune_cluster_parameter_group_name;
    neptune_instance_parameter_group_name;
    neptune_subnet_group_name;
    port;
    preferred_backup_window;
    preferred_maintenance_window;
    replication_source_identifier;
    skip_final_snapshot;
    snapshot_identifier;
    storage_encrypted;
    storage_type;
    tags;
    tags_all;
    vpc_security_group_ids;
    serverless_v2_scaling_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  backup_retention_period : float prop;
  cluster_identifier : string prop;
  cluster_identifier_prefix : string prop;
  cluster_members : string list prop;
  cluster_resource_id : string prop;
  copy_tags_to_snapshot : bool prop;
  deletion_protection : bool prop;
  enable_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  final_snapshot_identifier : string prop;
  global_cluster_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_arn : string prop;
  neptune_cluster_parameter_group_name : string prop;
  neptune_instance_parameter_group_name : string prop;
  neptune_subnet_group_name : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  replication_source_identifier : string prop;
  skip_final_snapshot : bool prop;
  snapshot_identifier : string prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let make ?allow_major_version_upgrade ?apply_immediately
    ?availability_zones ?backup_retention_period ?cluster_identifier
    ?cluster_identifier_prefix ?copy_tags_to_snapshot
    ?deletion_protection ?enable_cloudwatch_logs_exports ?engine
    ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?iam_database_authentication_enabled
    ?iam_roles ?id ?kms_key_arn ?neptune_cluster_parameter_group_name
    ?neptune_instance_parameter_group_name ?neptune_subnet_group_name
    ?port ?preferred_backup_window ?preferred_maintenance_window
    ?replication_source_identifier ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
    ?tags_all ?vpc_security_group_ids
    ?(serverless_v2_scaling_configuration = []) ?timeouts __id =
  let __type = "aws_neptune_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       allow_major_version_upgrade =
         Prop.computed __type __id "allow_major_version_upgrade";
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       backup_retention_period =
         Prop.computed __type __id "backup_retention_period";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       cluster_identifier_prefix =
         Prop.computed __type __id "cluster_identifier_prefix";
       cluster_members = Prop.computed __type __id "cluster_members";
       cluster_resource_id =
         Prop.computed __type __id "cluster_resource_id";
       copy_tags_to_snapshot =
         Prop.computed __type __id "copy_tags_to_snapshot";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       enable_cloudwatch_logs_exports =
         Prop.computed __type __id "enable_cloudwatch_logs_exports";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
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
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       neptune_cluster_parameter_group_name =
         Prop.computed __type __id
           "neptune_cluster_parameter_group_name";
       neptune_instance_parameter_group_name =
         Prop.computed __type __id
           "neptune_instance_parameter_group_name";
       neptune_subnet_group_name =
         Prop.computed __type __id "neptune_subnet_group_name";
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
      yojson_of_aws_neptune_cluster
        (aws_neptune_cluster ?allow_major_version_upgrade
           ?apply_immediately ?availability_zones
           ?backup_retention_period ?cluster_identifier
           ?cluster_identifier_prefix ?copy_tags_to_snapshot
           ?deletion_protection ?enable_cloudwatch_logs_exports
           ?engine ?engine_version ?final_snapshot_identifier
           ?global_cluster_identifier
           ?iam_database_authentication_enabled ?iam_roles ?id
           ?kms_key_arn ?neptune_cluster_parameter_group_name
           ?neptune_instance_parameter_group_name
           ?neptune_subnet_group_name ?port ?preferred_backup_window
           ?preferred_maintenance_window
           ?replication_source_identifier ?skip_final_snapshot
           ?snapshot_identifier ?storage_encrypted ?storage_type
           ?tags ?tags_all ?vpc_security_group_ids
           ~serverless_v2_scaling_configuration ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_major_version_upgrade
    ?apply_immediately ?availability_zones ?backup_retention_period
    ?cluster_identifier ?cluster_identifier_prefix
    ?copy_tags_to_snapshot ?deletion_protection
    ?enable_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?global_cluster_identifier
    ?iam_database_authentication_enabled ?iam_roles ?id ?kms_key_arn
    ?neptune_cluster_parameter_group_name
    ?neptune_instance_parameter_group_name ?neptune_subnet_group_name
    ?port ?preferred_backup_window ?preferred_maintenance_window
    ?replication_source_identifier ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
    ?tags_all ?vpc_security_group_ids
    ?(serverless_v2_scaling_configuration = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?allow_major_version_upgrade ?apply_immediately
      ?availability_zones ?backup_retention_period
      ?cluster_identifier ?cluster_identifier_prefix
      ?copy_tags_to_snapshot ?deletion_protection
      ?enable_cloudwatch_logs_exports ?engine ?engine_version
      ?final_snapshot_identifier ?global_cluster_identifier
      ?iam_database_authentication_enabled ?iam_roles ?id
      ?kms_key_arn ?neptune_cluster_parameter_group_name
      ?neptune_instance_parameter_group_name
      ?neptune_subnet_group_name ?port ?preferred_backup_window
      ?preferred_maintenance_window ?replication_source_identifier
      ?skip_final_snapshot ?snapshot_identifier ?storage_encrypted
      ?storage_type ?tags ?tags_all ?vpc_security_group_ids
      ~serverless_v2_scaling_configuration ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
