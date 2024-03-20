(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type restore_to_point_in_time = {
  restore_to_time : string prop option; [@option]
      (** restore_to_time *)
  restore_type : string prop option; [@option]  (** restore_type *)
  source_cluster_identifier : string prop;
      (** source_cluster_identifier *)
  use_latest_restorable_time : bool prop option; [@option]
      (** use_latest_restorable_time *)
}
[@@deriving yojson_of]
(** restore_to_point_in_time *)

type s3_import = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  ingestion_role : string prop;  (** ingestion_role *)
  source_engine : string prop;  (** source_engine *)
  source_engine_version : string prop;  (** source_engine_version *)
}
[@@deriving yojson_of]
(** s3_import *)

type scaling_configuration = {
  auto_pause : bool prop option; [@option]  (** auto_pause *)
  max_capacity : float prop option; [@option]  (** max_capacity *)
  min_capacity : float prop option; [@option]  (** min_capacity *)
  seconds_until_auto_pause : float prop option; [@option]
      (** seconds_until_auto_pause *)
  timeout_action : string prop option; [@option]
      (** timeout_action *)
}
[@@deriving yojson_of]
(** scaling_configuration *)

type serverlessv2_scaling_configuration = {
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
}
[@@deriving yojson_of]
(** serverlessv2_scaling_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type master_user_secret = {
  kms_key_id : string prop;  (** kms_key_id *)
  secret_arn : string prop;  (** secret_arn *)
  secret_status : string prop;  (** secret_status *)
}
[@@deriving yojson_of]

type aws_rds_cluster = {
  allocated_storage : float prop option; [@option]
      (** allocated_storage *)
  allow_major_version_upgrade : bool prop option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  availability_zones : string prop list option; [@option]
      (** availability_zones *)
  backtrack_window : float prop option; [@option]
      (** backtrack_window *)
  backup_retention_period : float prop option; [@option]
      (** backup_retention_period *)
  cluster_identifier : string prop option; [@option]
      (** cluster_identifier *)
  cluster_identifier_prefix : string prop option; [@option]
      (** cluster_identifier_prefix *)
  cluster_members : string prop list option; [@option]
      (** cluster_members *)
  copy_tags_to_snapshot : bool prop option; [@option]
      (** copy_tags_to_snapshot *)
  database_name : string prop option; [@option]  (** database_name *)
  db_cluster_instance_class : string prop option; [@option]
      (** db_cluster_instance_class *)
  db_cluster_parameter_group_name : string prop option; [@option]
      (** db_cluster_parameter_group_name *)
  db_instance_parameter_group_name : string prop option; [@option]
      (** db_instance_parameter_group_name *)
  db_subnet_group_name : string prop option; [@option]
      (** db_subnet_group_name *)
  db_system_id : string prop option; [@option]  (** db_system_id *)
  delete_automated_backups : bool prop option; [@option]
      (** delete_automated_backups *)
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  domain : string prop option; [@option]  (** domain *)
  domain_iam_role_name : string prop option; [@option]
      (** domain_iam_role_name *)
  enable_global_write_forwarding : bool prop option; [@option]
      (** enable_global_write_forwarding *)
  enable_http_endpoint : bool prop option; [@option]
      (** enable_http_endpoint *)
  enabled_cloudwatch_logs_exports : string prop list option;
      [@option]
      (** enabled_cloudwatch_logs_exports *)
  engine : string prop;  (** engine *)
  engine_mode : string prop option; [@option]  (** engine_mode *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  global_cluster_identifier : string prop option; [@option]
      (** global_cluster_identifier *)
  iam_database_authentication_enabled : bool prop option; [@option]
      (** iam_database_authentication_enabled *)
  iam_roles : string prop list option; [@option]  (** iam_roles *)
  id : string prop option; [@option]  (** id *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  manage_master_user_password : bool prop option; [@option]
      (** manage_master_user_password *)
  master_password : string prop option; [@option]
      (** master_password *)
  master_user_secret_kms_key_id : string prop option; [@option]
      (** master_user_secret_kms_key_id *)
  master_username : string prop option; [@option]
      (** master_username *)
  network_type : string prop option; [@option]  (** network_type *)
  port : float prop option; [@option]  (** port *)
  preferred_backup_window : string prop option; [@option]
      (** preferred_backup_window *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  replication_source_identifier : string prop option; [@option]
      (** replication_source_identifier *)
  skip_final_snapshot : bool prop option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string prop option; [@option]
      (** snapshot_identifier *)
  source_region : string prop option; [@option]  (** source_region *)
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  storage_type : string prop option; [@option]  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  restore_to_point_in_time : restore_to_point_in_time list;
  s3_import : s3_import list;
  scaling_configuration : scaling_configuration list;
  serverlessv2_scaling_configuration :
    serverlessv2_scaling_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_cluster *)

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
    ?backup_retention_period ?cluster_identifier
    ?cluster_identifier_prefix ?cluster_members
    ?copy_tags_to_snapshot ?database_name ?db_cluster_instance_class
    ?db_cluster_parameter_group_name
    ?db_instance_parameter_group_name ?db_subnet_group_name
    ?db_system_id ?delete_automated_backups ?deletion_protection
    ?domain ?domain_iam_role_name ?enable_global_write_forwarding
    ?enable_http_endpoint ?enabled_cloudwatch_logs_exports
    ?engine_mode ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?iam_database_authentication_enabled
    ?iam_roles ?id ?iops ?kms_key_id ?manage_master_user_password
    ?master_password ?master_user_secret_kms_key_id ?master_username
    ?network_type ?port ?preferred_backup_window
    ?preferred_maintenance_window ?replication_source_identifier
    ?skip_final_snapshot ?snapshot_identifier ?source_region
    ?storage_encrypted ?storage_type ?tags ?tags_all
    ?vpc_security_group_ids ?timeouts ~engine
    ~restore_to_point_in_time ~s3_import ~scaling_configuration
    ~serverlessv2_scaling_configuration () : aws_rds_cluster =
  {
    allocated_storage;
    allow_major_version_upgrade;
    apply_immediately;
    availability_zones;
    backtrack_window;
    backup_retention_period;
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
    enabled_cloudwatch_logs_exports;
    engine;
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
  allocated_storage : float prop;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  backtrack_window : float prop;
  backup_retention_period : float prop;
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
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let make ?allocated_storage ?allow_major_version_upgrade
    ?apply_immediately ?availability_zones ?backtrack_window
    ?backup_retention_period ?cluster_identifier
    ?cluster_identifier_prefix ?cluster_members
    ?copy_tags_to_snapshot ?database_name ?db_cluster_instance_class
    ?db_cluster_parameter_group_name
    ?db_instance_parameter_group_name ?db_subnet_group_name
    ?db_system_id ?delete_automated_backups ?deletion_protection
    ?domain ?domain_iam_role_name ?enable_global_write_forwarding
    ?enable_http_endpoint ?enabled_cloudwatch_logs_exports
    ?engine_mode ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?iam_database_authentication_enabled
    ?iam_roles ?id ?iops ?kms_key_id ?manage_master_user_password
    ?master_password ?master_user_secret_kms_key_id ?master_username
    ?network_type ?port ?preferred_backup_window
    ?preferred_maintenance_window ?replication_source_identifier
    ?skip_final_snapshot ?snapshot_identifier ?source_region
    ?storage_encrypted ?storage_type ?tags ?tags_all
    ?vpc_security_group_ids ?timeouts ~engine
    ~restore_to_point_in_time ~s3_import ~scaling_configuration
    ~serverlessv2_scaling_configuration __id =
  let __type = "aws_rds_cluster" in
  let __attrs =
    ({
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
       enabled_cloudwatch_logs_exports =
         Prop.computed __type __id "enabled_cloudwatch_logs_exports";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
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
           ?backup_retention_period ?cluster_identifier
           ?cluster_identifier_prefix ?cluster_members
           ?copy_tags_to_snapshot ?database_name
           ?db_cluster_instance_class
           ?db_cluster_parameter_group_name
           ?db_instance_parameter_group_name ?db_subnet_group_name
           ?db_system_id ?delete_automated_backups
           ?deletion_protection ?domain ?domain_iam_role_name
           ?enable_global_write_forwarding ?enable_http_endpoint
           ?enabled_cloudwatch_logs_exports ?engine_mode
           ?engine_version ?final_snapshot_identifier
           ?global_cluster_identifier
           ?iam_database_authentication_enabled ?iam_roles ?id ?iops
           ?kms_key_id ?manage_master_user_password ?master_password
           ?master_user_secret_kms_key_id ?master_username
           ?network_type ?port ?preferred_backup_window
           ?preferred_maintenance_window
           ?replication_source_identifier ?skip_final_snapshot
           ?snapshot_identifier ?source_region ?storage_encrypted
           ?storage_type ?tags ?tags_all ?vpc_security_group_ids
           ?timeouts ~engine ~restore_to_point_in_time ~s3_import
           ~scaling_configuration ~serverlessv2_scaling_configuration
           ());
    attrs = __attrs;
  }

let register ?tf_module ?allocated_storage
    ?allow_major_version_upgrade ?apply_immediately
    ?availability_zones ?backtrack_window ?backup_retention_period
    ?cluster_identifier ?cluster_identifier_prefix ?cluster_members
    ?copy_tags_to_snapshot ?database_name ?db_cluster_instance_class
    ?db_cluster_parameter_group_name
    ?db_instance_parameter_group_name ?db_subnet_group_name
    ?db_system_id ?delete_automated_backups ?deletion_protection
    ?domain ?domain_iam_role_name ?enable_global_write_forwarding
    ?enable_http_endpoint ?enabled_cloudwatch_logs_exports
    ?engine_mode ?engine_version ?final_snapshot_identifier
    ?global_cluster_identifier ?iam_database_authentication_enabled
    ?iam_roles ?id ?iops ?kms_key_id ?manage_master_user_password
    ?master_password ?master_user_secret_kms_key_id ?master_username
    ?network_type ?port ?preferred_backup_window
    ?preferred_maintenance_window ?replication_source_identifier
    ?skip_final_snapshot ?snapshot_identifier ?source_region
    ?storage_encrypted ?storage_type ?tags ?tags_all
    ?vpc_security_group_ids ?timeouts ~engine
    ~restore_to_point_in_time ~s3_import ~scaling_configuration
    ~serverlessv2_scaling_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?allocated_storage ?allow_major_version_upgrade
      ?apply_immediately ?availability_zones ?backtrack_window
      ?backup_retention_period ?cluster_identifier
      ?cluster_identifier_prefix ?cluster_members
      ?copy_tags_to_snapshot ?database_name
      ?db_cluster_instance_class ?db_cluster_parameter_group_name
      ?db_instance_parameter_group_name ?db_subnet_group_name
      ?db_system_id ?delete_automated_backups ?deletion_protection
      ?domain ?domain_iam_role_name ?enable_global_write_forwarding
      ?enable_http_endpoint ?enabled_cloudwatch_logs_exports
      ?engine_mode ?engine_version ?final_snapshot_identifier
      ?global_cluster_identifier ?iam_database_authentication_enabled
      ?iam_roles ?id ?iops ?kms_key_id ?manage_master_user_password
      ?master_password ?master_user_secret_kms_key_id
      ?master_username ?network_type ?port ?preferred_backup_window
      ?preferred_maintenance_window ?replication_source_identifier
      ?skip_final_snapshot ?snapshot_identifier ?source_region
      ?storage_encrypted ?storage_type ?tags ?tags_all
      ?vpc_security_group_ids ?timeouts ~engine
      ~restore_to_point_in_time ~s3_import ~scaling_configuration
      ~serverlessv2_scaling_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
