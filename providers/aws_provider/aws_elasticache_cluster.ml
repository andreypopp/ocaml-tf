(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_cluster__log_delivery_configuration = {
  destination : string;  (** destination *)
  destination_type : string;  (** destination_type *)
  log_format : string;  (** log_format *)
  log_type : string;  (** log_type *)
}
[@@deriving yojson_of]
(** aws_elasticache_cluster__log_delivery_configuration *)

type aws_elasticache_cluster__cache_nodes = {
  address : string;  (** address *)
  availability_zone : string;  (** availability_zone *)
  id : string;  (** id *)
  outpost_arn : string;  (** outpost_arn *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_elasticache_cluster = {
  auto_minor_version_upgrade : string option; [@option]
      (** auto_minor_version_upgrade *)
  cluster_id : string;  (** cluster_id *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  notification_topic_arn : string option; [@option]
      (** notification_topic_arn *)
  outpost_mode : string option; [@option]  (** outpost_mode *)
  preferred_availability_zones : string list option; [@option]
      (** preferred_availability_zones *)
  snapshot_arns : string list option; [@option]  (** snapshot_arns *)
  snapshot_name : string option; [@option]  (** snapshot_name *)
  snapshot_retention_limit : float option; [@option]
      (** snapshot_retention_limit *)
  tags : (string * string) list option; [@option]  (** tags *)
  log_delivery_configuration :
    aws_elasticache_cluster__log_delivery_configuration list;
}
[@@deriving yojson_of]
(** aws_elasticache_cluster *)

let aws_elasticache_cluster ?auto_minor_version_upgrade
    ?final_snapshot_identifier ?notification_topic_arn ?outpost_mode
    ?preferred_availability_zones ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?tags ~cluster_id
    ~log_delivery_configuration __resource_id =
  let __resource_type = "aws_elasticache_cluster" in
  let __resource =
    {
      auto_minor_version_upgrade;
      cluster_id;
      final_snapshot_identifier;
      notification_topic_arn;
      outpost_mode;
      preferred_availability_zones;
      snapshot_arns;
      snapshot_name;
      snapshot_retention_limit;
      tags;
      log_delivery_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_cluster __resource);
  ()
