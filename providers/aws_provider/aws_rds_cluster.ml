(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_cluster__restore_to_point_in_time = {
  restore_to_time : string prop option; [@option]
      (** restore_to_time *)
  restore_type : string prop option; [@option]  (** restore_type *)
  source_cluster_identifier : string prop;
      (** source_cluster_identifier *)
  use_latest_restorable_time : bool prop option; [@option]
      (** use_latest_restorable_time *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__restore_to_point_in_time *)

type aws_rds_cluster__s3_import = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  ingestion_role : string prop;  (** ingestion_role *)
  source_engine : string prop;  (** source_engine *)
  source_engine_version : string prop;  (** source_engine_version *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__s3_import *)

type aws_rds_cluster__scaling_configuration = {
  auto_pause : bool prop option; [@option]  (** auto_pause *)
  max_capacity : float prop option; [@option]  (** max_capacity *)
  min_capacity : float prop option; [@option]  (** min_capacity *)
  seconds_until_auto_pause : float prop option; [@option]
      (** seconds_until_auto_pause *)
  timeout_action : string prop option; [@option]
      (** timeout_action *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__scaling_configuration *)

type aws_rds_cluster__serverlessv2_scaling_configuration = {
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__serverlessv2_scaling_configuration *)

type aws_rds_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__timeouts *)

type aws_rds_cluster__master_user_secret = {
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
  restore_to_point_in_time :
    aws_rds_cluster__restore_to_point_in_time list;
  s3_import : aws_rds_cluster__s3_import list;
  scaling_configuration :
    aws_rds_cluster__scaling_configuration list;
  serverlessv2_scaling_configuration :
    aws_rds_cluster__serverlessv2_scaling_configuration list;
  timeouts : aws_rds_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_cluster *)

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
    ~serverlessv2_scaling_configuration __resource_id =
  let __resource_type = "aws_rds_cluster" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster __resource);
  ()
