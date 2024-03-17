(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_cluster_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rds_cluster_instance__timeouts *)

type aws_rds_cluster_instance = {
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string option; [@option]
      (** availability_zone *)
  ca_cert_identifier : string option; [@option]
      (** ca_cert_identifier *)
  cluster_identifier : string;  (** cluster_identifier *)
  copy_tags_to_snapshot : bool option; [@option]
      (** copy_tags_to_snapshot *)
  custom_iam_instance_profile : string option; [@option]
      (** custom_iam_instance_profile *)
  db_parameter_group_name : string option; [@option]
      (** db_parameter_group_name *)
  db_subnet_group_name : string option; [@option]
      (** db_subnet_group_name *)
  engine : string;  (** engine *)
  engine_version : string option; [@option]  (** engine_version *)
  id : string option; [@option]  (** id *)
  identifier : string option; [@option]  (** identifier *)
  identifier_prefix : string option; [@option]
      (** identifier_prefix *)
  instance_class : string;  (** instance_class *)
  monitoring_interval : float option; [@option]
      (** monitoring_interval *)
  monitoring_role_arn : string option; [@option]
      (** monitoring_role_arn *)
  performance_insights_enabled : bool option; [@option]
      (** performance_insights_enabled *)
  performance_insights_kms_key_id : string option; [@option]
      (** performance_insights_kms_key_id *)
  performance_insights_retention_period : float option; [@option]
      (** performance_insights_retention_period *)
  preferred_backup_window : string option; [@option]
      (** preferred_backup_window *)
  preferred_maintenance_window : string option; [@option]
      (** preferred_maintenance_window *)
  promotion_tier : float option; [@option]  (** promotion_tier *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_rds_cluster_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_cluster_instance *)

let aws_rds_cluster_instance ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone
    ?ca_cert_identifier ?copy_tags_to_snapshot
    ?custom_iam_instance_profile ?db_parameter_group_name
    ?db_subnet_group_name ?engine_version ?id ?identifier
    ?identifier_prefix ?monitoring_interval ?monitoring_role_arn
    ?performance_insights_enabled ?performance_insights_kms_key_id
    ?performance_insights_retention_period ?preferred_backup_window
    ?preferred_maintenance_window ?promotion_tier
    ?publicly_accessible ?tags ?tags_all ?timeouts
    ~cluster_identifier ~engine ~instance_class __resource_id =
  let __resource_type = "aws_rds_cluster_instance" in
  let __resource =
    {
      apply_immediately;
      auto_minor_version_upgrade;
      availability_zone;
      ca_cert_identifier;
      cluster_identifier;
      copy_tags_to_snapshot;
      custom_iam_instance_profile;
      db_parameter_group_name;
      db_subnet_group_name;
      engine;
      engine_version;
      id;
      identifier;
      identifier_prefix;
      instance_class;
      monitoring_interval;
      monitoring_role_arn;
      performance_insights_enabled;
      performance_insights_kms_key_id;
      performance_insights_retention_period;
      preferred_backup_window;
      preferred_maintenance_window;
      promotion_tier;
      publicly_accessible;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster_instance __resource);
  ()
