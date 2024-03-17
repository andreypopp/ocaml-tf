(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_cluster__serverless_v2_scaling_configuration = {
  max_capacity : float option; [@option]  (** max_capacity *)
  min_capacity : float option; [@option]  (** min_capacity *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster__serverless_v2_scaling_configuration *)

type aws_neptune_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster__timeouts *)

type aws_neptune_cluster = {
  backup_retention_period : float option; [@option]
      (** backup_retention_period *)
  copy_tags_to_snapshot : bool option; [@option]
      (** copy_tags_to_snapshot *)
  deletion_protection : bool option; [@option]
      (** deletion_protection *)
  enable_cloudwatch_logs_exports : string list option; [@option]
      (** enable_cloudwatch_logs_exports *)
  engine : string option; [@option]  (** engine *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  global_cluster_identifier : string option; [@option]
      (** global_cluster_identifier *)
  iam_database_authentication_enabled : bool option; [@option]
      (** iam_database_authentication_enabled *)
  iam_roles : string list option; [@option]  (** iam_roles *)
  neptune_cluster_parameter_group_name : string option; [@option]
      (** neptune_cluster_parameter_group_name *)
  neptune_instance_parameter_group_name : string option; [@option]
      (** neptune_instance_parameter_group_name *)
  port : float option; [@option]  (** port *)
  replication_source_identifier : string option; [@option]
      (** replication_source_identifier *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string option; [@option]
      (** snapshot_identifier *)
  storage_encrypted : bool option; [@option]
      (** storage_encrypted *)
  tags : (string * string) list option; [@option]  (** tags *)
  serverless_v2_scaling_configuration :
    aws_neptune_cluster__serverless_v2_scaling_configuration list;
  timeouts : aws_neptune_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_cluster *)

let aws_neptune_cluster ?backup_retention_period
    ?copy_tags_to_snapshot ?deletion_protection
    ?enable_cloudwatch_logs_exports ?engine
    ?final_snapshot_identifier ?global_cluster_identifier
    ?iam_database_authentication_enabled ?iam_roles
    ?neptune_cluster_parameter_group_name
    ?neptune_instance_parameter_group_name ?port
    ?replication_source_identifier ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?tags ?timeouts
    ~serverless_v2_scaling_configuration __resource_id =
  let __resource_type = "aws_neptune_cluster" in
  let __resource =
    {
      backup_retention_period;
      copy_tags_to_snapshot;
      deletion_protection;
      enable_cloudwatch_logs_exports;
      engine;
      final_snapshot_identifier;
      global_cluster_identifier;
      iam_database_authentication_enabled;
      iam_roles;
      neptune_cluster_parameter_group_name;
      neptune_instance_parameter_group_name;
      port;
      replication_source_identifier;
      skip_final_snapshot;
      snapshot_identifier;
      storage_encrypted;
      tags;
      serverless_v2_scaling_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster __resource);
  ()
