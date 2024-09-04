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

type aws_docdb_cluster = {
  allow_major_version_upgrade : bool prop option; [@option]
  apply_immediately : bool prop option; [@option]
  availability_zones : string prop list option; [@option]
  backup_retention_period : float prop option; [@option]
  cluster_identifier : string prop option; [@option]
  cluster_identifier_prefix : string prop option; [@option]
  cluster_members : string prop list option; [@option]
  db_cluster_parameter_group_name : string prop option; [@option]
  db_subnet_group_name : string prop option; [@option]
  deletion_protection : bool prop option; [@option]
  enabled_cloudwatch_logs_exports : string prop list option;
      [@option]
  engine : string prop option; [@option]
  engine_version : string prop option; [@option]
  final_snapshot_identifier : string prop option; [@option]
  global_cluster_identifier : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  master_password : string prop option; [@option]
  master_username : string prop option; [@option]
  port : float prop option; [@option]
  preferred_backup_window : string prop option; [@option]
  preferred_maintenance_window : string prop option; [@option]
  skip_final_snapshot : bool prop option; [@option]
  snapshot_identifier : string prop option; [@option]
  storage_encrypted : bool prop option; [@option]
  storage_type : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  restore_to_point_in_time : restore_to_point_in_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_docdb_cluster) -> ()

let yojson_of_aws_docdb_cluster =
  (function
   | {
       allow_major_version_upgrade = v_allow_major_version_upgrade;
       apply_immediately = v_apply_immediately;
       availability_zones = v_availability_zones;
       backup_retention_period = v_backup_retention_period;
       cluster_identifier = v_cluster_identifier;
       cluster_identifier_prefix = v_cluster_identifier_prefix;
       cluster_members = v_cluster_members;
       db_cluster_parameter_group_name =
         v_db_cluster_parameter_group_name;
       db_subnet_group_name = v_db_subnet_group_name;
       deletion_protection = v_deletion_protection;
       enabled_cloudwatch_logs_exports =
         v_enabled_cloudwatch_logs_exports;
       engine = v_engine;
       engine_version = v_engine_version;
       final_snapshot_identifier = v_final_snapshot_identifier;
       global_cluster_identifier = v_global_cluster_identifier;
       id = v_id;
       kms_key_id = v_kms_key_id;
       master_password = v_master_password;
       master_username = v_master_username;
       port = v_port;
       preferred_backup_window = v_preferred_backup_window;
       preferred_maintenance_window = v_preferred_maintenance_window;
       skip_final_snapshot = v_skip_final_snapshot;
       snapshot_identifier = v_snapshot_identifier;
       storage_encrypted = v_storage_encrypted;
       storage_type = v_storage_type;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_security_group_ids = v_vpc_security_group_ids;
       restore_to_point_in_time = v_restore_to_point_in_time;
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
         match v_master_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_username", arg in
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
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
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
         match v_db_cluster_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_cluster_parameter_group_name", arg in
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
    : aws_docdb_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_docdb_cluster

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

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_docdb_cluster ?allow_major_version_upgrade ?apply_immediately
    ?availability_zones ?backup_retention_period ?cluster_identifier
    ?cluster_identifier_prefix ?cluster_members
    ?db_cluster_parameter_group_name ?db_subnet_group_name
    ?deletion_protection ?enabled_cloudwatch_logs_exports ?engine
    ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?id ?kms_key_id ?master_password
    ?master_username ?port ?preferred_backup_window
    ?preferred_maintenance_window ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
    ?tags_all ?vpc_security_group_ids
    ?(restore_to_point_in_time = []) ?timeouts () : aws_docdb_cluster
    =
  {
    allow_major_version_upgrade;
    apply_immediately;
    availability_zones;
    backup_retention_period;
    cluster_identifier;
    cluster_identifier_prefix;
    cluster_members;
    db_cluster_parameter_group_name;
    db_subnet_group_name;
    deletion_protection;
    enabled_cloudwatch_logs_exports;
    engine;
    engine_version;
    final_snapshot_identifier;
    global_cluster_identifier;
    id;
    kms_key_id;
    master_password;
    master_username;
    port;
    preferred_backup_window;
    preferred_maintenance_window;
    skip_final_snapshot;
    snapshot_identifier;
    storage_encrypted;
    storage_type;
    tags;
    tags_all;
    vpc_security_group_ids;
    restore_to_point_in_time;
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
  db_cluster_parameter_group_name : string prop;
  db_subnet_group_name : string prop;
  deletion_protection : bool prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  final_snapshot_identifier : string prop;
  global_cluster_identifier : string prop;
  hosted_zone_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  master_password : string prop;
  master_username : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  skip_final_snapshot : bool prop;
  snapshot_identifier : string prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_security_group_ids : string list prop;
}

let make ?allow_major_version_upgrade ?apply_immediately
    ?availability_zones ?backup_retention_period ?cluster_identifier
    ?cluster_identifier_prefix ?cluster_members
    ?db_cluster_parameter_group_name ?db_subnet_group_name
    ?deletion_protection ?enabled_cloudwatch_logs_exports ?engine
    ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?id ?kms_key_id ?master_password
    ?master_username ?port ?preferred_backup_window
    ?preferred_maintenance_window ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
    ?tags_all ?vpc_security_group_ids
    ?(restore_to_point_in_time = []) ?timeouts __id =
  let __type = "aws_docdb_cluster" in
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
       db_cluster_parameter_group_name =
         Prop.computed __type __id "db_cluster_parameter_group_name";
       db_subnet_group_name =
         Prop.computed __type __id "db_subnet_group_name";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       enabled_cloudwatch_logs_exports =
         Prop.computed __type __id "enabled_cloudwatch_logs_exports";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       global_cluster_identifier =
         Prop.computed __type __id "global_cluster_identifier";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       master_password = Prop.computed __type __id "master_password";
       master_username = Prop.computed __type __id "master_username";
       port = Prop.computed __type __id "port";
       preferred_backup_window =
         Prop.computed __type __id "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       reader_endpoint = Prop.computed __type __id "reader_endpoint";
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
      yojson_of_aws_docdb_cluster
        (aws_docdb_cluster ?allow_major_version_upgrade
           ?apply_immediately ?availability_zones
           ?backup_retention_period ?cluster_identifier
           ?cluster_identifier_prefix ?cluster_members
           ?db_cluster_parameter_group_name ?db_subnet_group_name
           ?deletion_protection ?enabled_cloudwatch_logs_exports
           ?engine ?engine_version ?final_snapshot_identifier
           ?global_cluster_identifier ?id ?kms_key_id
           ?master_password ?master_username ?port
           ?preferred_backup_window ?preferred_maintenance_window
           ?skip_final_snapshot ?snapshot_identifier
           ?storage_encrypted ?storage_type ?tags ?tags_all
           ?vpc_security_group_ids ~restore_to_point_in_time
           ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_major_version_upgrade
    ?apply_immediately ?availability_zones ?backup_retention_period
    ?cluster_identifier ?cluster_identifier_prefix ?cluster_members
    ?db_cluster_parameter_group_name ?db_subnet_group_name
    ?deletion_protection ?enabled_cloudwatch_logs_exports ?engine
    ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?id ?kms_key_id ?master_password
    ?master_username ?port ?preferred_backup_window
    ?preferred_maintenance_window ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
    ?tags_all ?vpc_security_group_ids
    ?(restore_to_point_in_time = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?allow_major_version_upgrade ?apply_immediately
      ?availability_zones ?backup_retention_period
      ?cluster_identifier ?cluster_identifier_prefix ?cluster_members
      ?db_cluster_parameter_group_name ?db_subnet_group_name
      ?deletion_protection ?enabled_cloudwatch_logs_exports ?engine
      ?engine_version ?final_snapshot_identifier
      ?global_cluster_identifier ?id ?kms_key_id ?master_password
      ?master_username ?port ?preferred_backup_window
      ?preferred_maintenance_window ?skip_final_snapshot
      ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
      ?tags_all ?vpc_security_group_ids ~restore_to_point_in_time
      ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
