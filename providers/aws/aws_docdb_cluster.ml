(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_docdb_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_docdb_cluster__timeouts *)

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
  timeouts : aws_docdb_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_docdb_cluster *)

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
    ?tags_all ?vpc_security_group_ids ?timeouts __resource_id =
  let __resource_type = "aws_docdb_cluster" in
  let __resource =
    ({
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
      : aws_docdb_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdb_cluster __resource);
  let __resource_attributes =
    ({
       allow_major_version_upgrade =
         Prop.computed __resource_type __resource_id
           "allow_major_version_upgrade";
       apply_immediately =
         Prop.computed __resource_type __resource_id
           "apply_immediately";
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zones =
         Prop.computed __resource_type __resource_id
           "availability_zones";
       backup_retention_period =
         Prop.computed __resource_type __resource_id
           "backup_retention_period";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       cluster_identifier_prefix =
         Prop.computed __resource_type __resource_id
           "cluster_identifier_prefix";
       cluster_members =
         Prop.computed __resource_type __resource_id
           "cluster_members";
       cluster_resource_id =
         Prop.computed __resource_type __resource_id
           "cluster_resource_id";
       db_cluster_parameter_group_name =
         Prop.computed __resource_type __resource_id
           "db_cluster_parameter_group_name";
       db_subnet_group_name =
         Prop.computed __resource_type __resource_id
           "db_subnet_group_name";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       enabled_cloudwatch_logs_exports =
         Prop.computed __resource_type __resource_id
           "enabled_cloudwatch_logs_exports";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       final_snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "final_snapshot_identifier";
       global_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "global_cluster_identifier";
       hosted_zone_id =
         Prop.computed __resource_type __resource_id "hosted_zone_id";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       master_password =
         Prop.computed __resource_type __resource_id
           "master_password";
       master_username =
         Prop.computed __resource_type __resource_id
           "master_username";
       port = Prop.computed __resource_type __resource_id "port";
       preferred_backup_window =
         Prop.computed __resource_type __resource_id
           "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __resource_type __resource_id
           "preferred_maintenance_window";
       reader_endpoint =
         Prop.computed __resource_type __resource_id
           "reader_endpoint";
       skip_final_snapshot =
         Prop.computed __resource_type __resource_id
           "skip_final_snapshot";
       snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "snapshot_identifier";
       storage_encrypted =
         Prop.computed __resource_type __resource_id
           "storage_encrypted";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_security_group_ids =
         Prop.computed __resource_type __resource_id
           "vpc_security_group_ids";
     }
      : t)
  in
  __resource_attributes
