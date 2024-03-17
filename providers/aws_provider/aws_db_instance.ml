(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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
  allow_major_version_upgrade : bool option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  copy_tags_to_snapshot : bool option; [@option]
      (** copy_tags_to_snapshot *)
  custom_iam_instance_profile : string option; [@option]
      (** custom_iam_instance_profile *)
  customer_owned_ip_enabled : bool option; [@option]
      (** customer_owned_ip_enabled *)
  delete_automated_backups : bool option; [@option]
      (** delete_automated_backups *)
  deletion_protection : bool option; [@option]
      (** deletion_protection *)
  domain : string option; [@option]  (** domain *)
  domain_auth_secret_arn : string option; [@option]
      (** domain_auth_secret_arn *)
  domain_dns_ips : string list option; [@option]
      (** domain_dns_ips *)
  domain_iam_role_name : string option; [@option]
      (** domain_iam_role_name *)
  domain_ou : string option; [@option]  (** domain_ou *)
  enabled_cloudwatch_logs_exports : string list option; [@option]
      (** enabled_cloudwatch_logs_exports *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  iam_database_authentication_enabled : bool option; [@option]
      (** iam_database_authentication_enabled *)
  instance_class : string;  (** instance_class *)
  manage_master_user_password : bool option; [@option]
      (** manage_master_user_password *)
  max_allocated_storage : float option; [@option]
      (** max_allocated_storage *)
  monitoring_interval : float option; [@option]
      (** monitoring_interval *)
  password : string option; [@option]  (** password *)
  performance_insights_enabled : bool option; [@option]
      (** performance_insights_enabled *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  replicate_source_db : string option; [@option]
      (** replicate_source_db *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  storage_encrypted : bool option; [@option]
      (** storage_encrypted *)
  tags : (string * string) list option; [@option]  (** tags *)
  blue_green_update : aws_db_instance__blue_green_update list;
  restore_to_point_in_time :
    aws_db_instance__restore_to_point_in_time list;
  s3_import : aws_db_instance__s3_import list;
  timeouts : aws_db_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_instance *)

let aws_db_instance ?allow_major_version_upgrade ?apply_immediately
    ?auto_minor_version_upgrade ?copy_tags_to_snapshot
    ?custom_iam_instance_profile ?customer_owned_ip_enabled
    ?delete_automated_backups ?deletion_protection ?domain
    ?domain_auth_secret_arn ?domain_dns_ips ?domain_iam_role_name
    ?domain_ou ?enabled_cloudwatch_logs_exports
    ?final_snapshot_identifier ?iam_database_authentication_enabled
    ?manage_master_user_password ?max_allocated_storage
    ?monitoring_interval ?password ?performance_insights_enabled
    ?publicly_accessible ?replicate_source_db ?skip_final_snapshot
    ?storage_encrypted ?tags ?timeouts ~instance_class
    ~blue_green_update ~restore_to_point_in_time ~s3_import
    __resource_id =
  let __resource_type = "aws_db_instance" in
  let __resource =
    {
      allow_major_version_upgrade;
      apply_immediately;
      auto_minor_version_upgrade;
      copy_tags_to_snapshot;
      custom_iam_instance_profile;
      customer_owned_ip_enabled;
      delete_automated_backups;
      deletion_protection;
      domain;
      domain_auth_secret_arn;
      domain_dns_ips;
      domain_iam_role_name;
      domain_ou;
      enabled_cloudwatch_logs_exports;
      final_snapshot_identifier;
      iam_database_authentication_enabled;
      instance_class;
      manage_master_user_password;
      max_allocated_storage;
      monitoring_interval;
      password;
      performance_insights_enabled;
      publicly_accessible;
      replicate_source_db;
      skip_final_snapshot;
      storage_encrypted;
      tags;
      blue_green_update;
      restore_to_point_in_time;
      s3_import;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_instance __resource);
  ()
