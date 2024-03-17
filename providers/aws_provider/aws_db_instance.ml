(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_instance__blue_green_update = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_db_instance__blue_green_update *)

type aws_db_instance__restore_to_point_in_time = {
  restore_time : string option; [@option]  (** restore_time *)
  source_db_instance_automated_backups_arn : string option; [@option]
      (** source_db_instance_automated_backups_arn *)
  source_db_instance_identifier : string option; [@option]
      (** source_db_instance_identifier *)
  source_dbi_resource_id : string option; [@option]
      (** source_dbi_resource_id *)
  use_latest_restorable_time : bool option; [@option]
      (** use_latest_restorable_time *)
}
[@@deriving yojson_of]
(** aws_db_instance__restore_to_point_in_time *)

type aws_db_instance__s3_import = {
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  ingestion_role : string;  (** ingestion_role *)
  source_engine : string;  (** source_engine *)
  source_engine_version : string;  (** source_engine_version *)
}
[@@deriving yojson_of]
(** aws_db_instance__s3_import *)

type aws_db_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_db_instance__timeouts *)

type aws_db_instance__listener_endpoint = {
  address : string;  (** address *)
  hosted_zone_id : string;  (** hosted_zone_id *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_db_instance__master_user_secret = {
  kms_key_id : string;  (** kms_key_id *)
  secret_arn : string;  (** secret_arn *)
  secret_status : string;  (** secret_status *)
}
[@@deriving yojson_of]

type aws_db_instance = {
  allocated_storage : float option; [@option]
      (** allocated_storage *)
  allow_major_version_upgrade : bool option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string option; [@option]
      (** availability_zone *)
  backup_retention_period : float option; [@option]
      (** backup_retention_period *)
  backup_target : string option; [@option]  (** backup_target *)
  backup_window : string option; [@option]  (** backup_window *)
  ca_cert_identifier : string option; [@option]
      (** ca_cert_identifier *)
  character_set_name : string option; [@option]
      (** character_set_name *)
  copy_tags_to_snapshot : bool option; [@option]
      (** copy_tags_to_snapshot *)
  custom_iam_instance_profile : string option; [@option]
      (** custom_iam_instance_profile *)
  customer_owned_ip_enabled : bool option; [@option]
      (** customer_owned_ip_enabled *)
  db_name : string option; [@option]  (** db_name *)
  db_subnet_group_name : string option; [@option]
      (** db_subnet_group_name *)
  delete_automated_backups : bool option; [@option]
      (** delete_automated_backups *)
  deletion_protection : bool option; [@option]
      (** deletion_protection *)
  domain : string option; [@option]  (** domain *)
  domain_auth_secret_arn : string option; [@option]
      (** domain_auth_secret_arn *)
  domain_dns_ips : string list option; [@option]
      (** domain_dns_ips *)
  domain_fqdn : string option; [@option]  (** domain_fqdn *)
  domain_iam_role_name : string option; [@option]
      (** domain_iam_role_name *)
  domain_ou : string option; [@option]  (** domain_ou *)
  enabled_cloudwatch_logs_exports : string list option; [@option]
      (** enabled_cloudwatch_logs_exports *)
  engine : string option; [@option]  (** engine *)
  engine_version : string option; [@option]  (** engine_version *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  iam_database_authentication_enabled : bool option; [@option]
      (** iam_database_authentication_enabled *)
  id : string option; [@option]  (** id *)
  identifier : string option; [@option]  (** identifier *)
  identifier_prefix : string option; [@option]
      (** identifier_prefix *)
  instance_class : string;  (** instance_class *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  license_model : string option; [@option]  (** license_model *)
  maintenance_window : string option; [@option]
      (** maintenance_window *)
  manage_master_user_password : bool option; [@option]
      (** manage_master_user_password *)
  master_user_secret_kms_key_id : string option; [@option]
      (** master_user_secret_kms_key_id *)
  max_allocated_storage : float option; [@option]
      (** max_allocated_storage *)
  monitoring_interval : float option; [@option]
      (** monitoring_interval *)
  monitoring_role_arn : string option; [@option]
      (** monitoring_role_arn *)
  multi_az : bool option; [@option]  (** multi_az *)
  nchar_character_set_name : string option; [@option]
      (** nchar_character_set_name *)
  network_type : string option; [@option]  (** network_type *)
  option_group_name : string option; [@option]
      (** option_group_name *)
  parameter_group_name : string option; [@option]
      (** parameter_group_name *)
  password : string option; [@option]  (** password *)
  performance_insights_enabled : bool option; [@option]
      (** performance_insights_enabled *)
  performance_insights_kms_key_id : string option; [@option]
      (** performance_insights_kms_key_id *)
  performance_insights_retention_period : float option; [@option]
      (** performance_insights_retention_period *)
  port : float option; [@option]  (** port *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  replica_mode : string option; [@option]  (** replica_mode *)
  replicate_source_db : string option; [@option]
      (** replicate_source_db *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string option; [@option]
      (** snapshot_identifier *)
  storage_encrypted : bool option; [@option]
      (** storage_encrypted *)
  storage_throughput : float option; [@option]
      (** storage_throughput *)
  storage_type : string option; [@option]  (** storage_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timezone : string option; [@option]  (** timezone *)
  username : string option; [@option]  (** username *)
  vpc_security_group_ids : string list option; [@option]
      (** vpc_security_group_ids *)
  blue_green_update : aws_db_instance__blue_green_update list;
  restore_to_point_in_time :
    aws_db_instance__restore_to_point_in_time list;
  s3_import : aws_db_instance__s3_import list;
  timeouts : aws_db_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_instance *)

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
    ?vpc_security_group_ids ?timeouts ~instance_class
    ~blue_green_update ~restore_to_point_in_time ~s3_import
    __resource_id =
  let __resource_type = "aws_db_instance" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_instance __resource);
  ()
