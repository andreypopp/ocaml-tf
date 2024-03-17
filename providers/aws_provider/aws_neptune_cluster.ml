(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_cluster__serverless_v2_scaling_configuration = {
  max_capacity : float prop option; [@option]  (** max_capacity *)
  min_capacity : float prop option; [@option]  (** min_capacity *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster__serverless_v2_scaling_configuration *)

type aws_neptune_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster__timeouts *)

type aws_neptune_cluster = {
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
  copy_tags_to_snapshot : bool prop option; [@option]
      (** copy_tags_to_snapshot *)
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  enable_cloudwatch_logs_exports : string prop list option; [@option]
      (** enable_cloudwatch_logs_exports *)
  engine : string prop option; [@option]  (** engine *)
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
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  neptune_cluster_parameter_group_name : string prop option;
      [@option]
      (** neptune_cluster_parameter_group_name *)
  neptune_instance_parameter_group_name : string prop option;
      [@option]
      (** neptune_instance_parameter_group_name *)
  neptune_subnet_group_name : string prop option; [@option]
      (** neptune_subnet_group_name *)
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
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  storage_type : string prop option; [@option]  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  serverless_v2_scaling_configuration :
    aws_neptune_cluster__serverless_v2_scaling_configuration list;
  timeouts : aws_neptune_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_cluster *)

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
    ?tags_all ?vpc_security_group_ids ?timeouts
    ~serverless_v2_scaling_configuration __resource_id =
  let __resource_type = "aws_neptune_cluster" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster __resource);
  ()
