(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_instance__blue_green_update = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_db_instance__blue_green_update *)

type aws_db_instance__restore_to_point_in_time = {
  restore_time : string prop option; [@option]  (** restore_time *)
  source_db_instance_automated_backups_arn : string prop option;
      [@option]
      (** source_db_instance_automated_backups_arn *)
  source_db_instance_identifier : string prop option; [@option]
      (** source_db_instance_identifier *)
  source_dbi_resource_id : string prop option; [@option]
      (** source_dbi_resource_id *)
  use_latest_restorable_time : bool prop option; [@option]
      (** use_latest_restorable_time *)
}
[@@deriving yojson_of]
(** aws_db_instance__restore_to_point_in_time *)

type aws_db_instance__s3_import = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  ingestion_role : string prop;  (** ingestion_role *)
  source_engine : string prop;  (** source_engine *)
  source_engine_version : string prop;  (** source_engine_version *)
}
[@@deriving yojson_of]
(** aws_db_instance__s3_import *)

type aws_db_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_db_instance__timeouts *)

type aws_db_instance__listener_endpoint = {
  address : string prop;  (** address *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type aws_db_instance__master_user_secret = {
  kms_key_id : string prop;  (** kms_key_id *)
  secret_arn : string prop;  (** secret_arn *)
  secret_status : string prop;  (** secret_status *)
}
[@@deriving yojson_of]

type aws_db_instance = {
  allocated_storage : float prop option; [@option]
      (** allocated_storage *)
  allow_major_version_upgrade : bool prop option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool prop option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  backup_retention_period : float prop option; [@option]
      (** backup_retention_period *)
  backup_target : string prop option; [@option]  (** backup_target *)
  backup_window : string prop option; [@option]  (** backup_window *)
  ca_cert_identifier : string prop option; [@option]
      (** ca_cert_identifier *)
  character_set_name : string prop option; [@option]
      (** character_set_name *)
  copy_tags_to_snapshot : bool prop option; [@option]
      (** copy_tags_to_snapshot *)
  custom_iam_instance_profile : string prop option; [@option]
      (** custom_iam_instance_profile *)
  customer_owned_ip_enabled : bool prop option; [@option]
      (** customer_owned_ip_enabled *)
  db_name : string prop option; [@option]  (** db_name *)
  db_subnet_group_name : string prop option; [@option]
      (** db_subnet_group_name *)
  delete_automated_backups : bool prop option; [@option]
      (** delete_automated_backups *)
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  domain : string prop option; [@option]  (** domain *)
  domain_auth_secret_arn : string prop option; [@option]
      (** domain_auth_secret_arn *)
  domain_dns_ips : string prop list option; [@option]
      (** domain_dns_ips *)
  domain_fqdn : string prop option; [@option]  (** domain_fqdn *)
  domain_iam_role_name : string prop option; [@option]
      (** domain_iam_role_name *)
  domain_ou : string prop option; [@option]  (** domain_ou *)
  enabled_cloudwatch_logs_exports : string prop list option;
      [@option]
      (** enabled_cloudwatch_logs_exports *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  iam_database_authentication_enabled : bool prop option; [@option]
      (** iam_database_authentication_enabled *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  identifier_prefix : string prop option; [@option]
      (** identifier_prefix *)
  instance_class : string prop;  (** instance_class *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  license_model : string prop option; [@option]  (** license_model *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  manage_master_user_password : bool prop option; [@option]
      (** manage_master_user_password *)
  master_user_secret_kms_key_id : string prop option; [@option]
      (** master_user_secret_kms_key_id *)
  max_allocated_storage : float prop option; [@option]
      (** max_allocated_storage *)
  monitoring_interval : float prop option; [@option]
      (** monitoring_interval *)
  monitoring_role_arn : string prop option; [@option]
      (** monitoring_role_arn *)
  multi_az : bool prop option; [@option]  (** multi_az *)
  nchar_character_set_name : string prop option; [@option]
      (** nchar_character_set_name *)
  network_type : string prop option; [@option]  (** network_type *)
  option_group_name : string prop option; [@option]
      (** option_group_name *)
  parameter_group_name : string prop option; [@option]
      (** parameter_group_name *)
  password : string prop option; [@option]  (** password *)
  performance_insights_enabled : bool prop option; [@option]
      (** performance_insights_enabled *)
  performance_insights_kms_key_id : string prop option; [@option]
      (** performance_insights_kms_key_id *)
  performance_insights_retention_period : float prop option;
      [@option]
      (** performance_insights_retention_period *)
  port : float prop option; [@option]  (** port *)
  publicly_accessible : bool prop option; [@option]
      (** publicly_accessible *)
  replica_mode : string prop option; [@option]  (** replica_mode *)
  replicate_source_db : string prop option; [@option]
      (** replicate_source_db *)
  skip_final_snapshot : bool prop option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string prop option; [@option]
      (** snapshot_identifier *)
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  storage_throughput : float prop option; [@option]
      (** storage_throughput *)
  storage_type : string prop option; [@option]  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timezone : string prop option; [@option]  (** timezone *)
  username : string prop option; [@option]  (** username *)
  vpc_security_group_ids : string prop list option; [@option]
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
