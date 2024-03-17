(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_cluster__restore_to_point_in_time = {
  restore_to_time : string option; [@option]  (** restore_to_time *)
  restore_type : string option; [@option]  (** restore_type *)
  source_cluster_identifier : string;
      (** source_cluster_identifier *)
  use_latest_restorable_time : bool option; [@option]
      (** use_latest_restorable_time *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__restore_to_point_in_time *)

type aws_rds_cluster__s3_import = {
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  ingestion_role : string;  (** ingestion_role *)
  source_engine : string;  (** source_engine *)
  source_engine_version : string;  (** source_engine_version *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__s3_import *)

type aws_rds_cluster__scaling_configuration = {
  auto_pause : bool option; [@option]  (** auto_pause *)
  max_capacity : float option; [@option]  (** max_capacity *)
  min_capacity : float option; [@option]  (** min_capacity *)
  seconds_until_auto_pause : float option; [@option]
      (** seconds_until_auto_pause *)
  timeout_action : string option; [@option]  (** timeout_action *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__scaling_configuration *)

type aws_rds_cluster__serverlessv2_scaling_configuration = {
  max_capacity : float;  (** max_capacity *)
  min_capacity : float;  (** min_capacity *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__serverlessv2_scaling_configuration *)

type aws_rds_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rds_cluster__timeouts *)

type aws_rds_cluster__master_user_secret = {
  kms_key_id : string;  (** kms_key_id *)
  secret_arn : string;  (** secret_arn *)
  secret_status : string;  (** secret_status *)
}
[@@deriving yojson_of]

type aws_rds_cluster = {
  allocated_storage : float option; [@option]
      (** allocated_storage *)
  allow_major_version_upgrade : bool option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  availability_zones : string list option; [@option]
      (** availability_zones *)
  backtrack_window : float option; [@option]  (** backtrack_window *)
  backup_retention_period : float option; [@option]
      (** backup_retention_period *)
  cluster_identifier : string option; [@option]
      (** cluster_identifier *)
  cluster_identifier_prefix : string option; [@option]
      (** cluster_identifier_prefix *)
  cluster_members : string list option; [@option]
      (** cluster_members *)
  copy_tags_to_snapshot : bool option; [@option]
      (** copy_tags_to_snapshot *)
  database_name : string option; [@option]  (** database_name *)
  db_cluster_instance_class : string option; [@option]
      (** db_cluster_instance_class *)
  db_cluster_parameter_group_name : string option; [@option]
      (** db_cluster_parameter_group_name *)
  db_instance_parameter_group_name : string option; [@option]
      (** db_instance_parameter_group_name *)
  db_subnet_group_name : string option; [@option]
      (** db_subnet_group_name *)
  db_system_id : string option; [@option]  (** db_system_id *)
  delete_automated_backups : bool option; [@option]
      (** delete_automated_backups *)
  deletion_protection : bool option; [@option]
      (** deletion_protection *)
  domain : string option; [@option]  (** domain *)
  domain_iam_role_name : string option; [@option]
      (** domain_iam_role_name *)
  enable_global_write_forwarding : bool option; [@option]
      (** enable_global_write_forwarding *)
  enable_http_endpoint : bool option; [@option]
      (** enable_http_endpoint *)
  enabled_cloudwatch_logs_exports : string list option; [@option]
      (** enabled_cloudwatch_logs_exports *)
  engine : string;  (** engine *)
  engine_mode : string option; [@option]  (** engine_mode *)
  engine_version : string option; [@option]  (** engine_version *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  global_cluster_identifier : string option; [@option]
      (** global_cluster_identifier *)
  iam_database_authentication_enabled : bool option; [@option]
      (** iam_database_authentication_enabled *)
  iam_roles : string list option; [@option]  (** iam_roles *)
  id : string option; [@option]  (** id *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  manage_master_user_password : bool option; [@option]
      (** manage_master_user_password *)
  master_password : string option; [@option]  (** master_password *)
  master_user_secret_kms_key_id : string option; [@option]
      (** master_user_secret_kms_key_id *)
  master_username : string option; [@option]  (** master_username *)
  network_type : string option; [@option]  (** network_type *)
  port : float option; [@option]  (** port *)
  preferred_backup_window : string option; [@option]
      (** preferred_backup_window *)
  preferred_maintenance_window : string option; [@option]
      (** preferred_maintenance_window *)
  replication_source_identifier : string option; [@option]
      (** replication_source_identifier *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string option; [@option]
      (** snapshot_identifier *)
  source_region : string option; [@option]  (** source_region *)
  storage_encrypted : bool option; [@option]
      (** storage_encrypted *)
  storage_type : string option; [@option]  (** storage_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string list option; [@option]
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
