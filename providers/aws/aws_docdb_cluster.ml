(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_docdb_cluster = {
  allow_major_version_upgrade : bool prop option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  availability_zones : string prop list option; [@option]
      (** availability_zones *)
  backup_retention_period : float prop option; [@option]
      (** backup_retention_period *)
  cluster_identifier : string prop option; [@option]
      (** cluster_identifier *)
  cluster_identifier_prefix : string prop option; [@option]
      (** cluster_identifier_prefix *)
  cluster_members : string prop list option; [@option]
      (** cluster_members *)
  db_cluster_parameter_group_name : string prop option; [@option]
      (** db_cluster_parameter_group_name *)
  db_subnet_group_name : string prop option; [@option]
      (** db_subnet_group_name *)
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  enabled_cloudwatch_logs_exports : string prop list option;
      [@option]
      (** enabled_cloudwatch_logs_exports *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  global_cluster_identifier : string prop option; [@option]
      (** global_cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  master_password : string prop option; [@option]
      (** master_password *)
  master_username : string prop option; [@option]
      (** master_username *)
  port : float prop option; [@option]  (** port *)
  preferred_backup_window : string prop option; [@option]
      (** preferred_backup_window *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  skip_final_snapshot : bool prop option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string prop option; [@option]
      (** snapshot_identifier *)
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  storage_type : string prop option; [@option]  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_docdb_cluster *)

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
    ?tags_all ?vpc_security_group_ids ?timeouts () :
    aws_docdb_cluster =
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
    timeouts;
  }

type t = {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
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
    ?tags_all ?vpc_security_group_ids ?timeouts __id =
  let __type = "aws_docdb_cluster" in
  let __attrs =
    ({
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
           ?vpc_security_group_ids ?timeouts ());
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
    ?tags_all ?vpc_security_group_ids ?timeouts __id =
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
      ?tags_all ?vpc_security_group_ids ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
