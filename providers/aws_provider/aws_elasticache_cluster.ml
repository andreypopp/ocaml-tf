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
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : string option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string option; [@option]
      (** availability_zone *)
  az_mode : string option; [@option]  (** az_mode *)
  cluster_id : string;  (** cluster_id *)
  engine : string option; [@option]  (** engine *)
  engine_version : string option; [@option]  (** engine_version *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  id : string option; [@option]  (** id *)
  ip_discovery : string option; [@option]  (** ip_discovery *)
  maintenance_window : string option; [@option]
      (** maintenance_window *)
  network_type : string option; [@option]  (** network_type *)
  node_type : string option; [@option]  (** node_type *)
  notification_topic_arn : string option; [@option]
      (** notification_topic_arn *)
  num_cache_nodes : float option; [@option]  (** num_cache_nodes *)
  outpost_mode : string option; [@option]  (** outpost_mode *)
  parameter_group_name : string option; [@option]
      (** parameter_group_name *)
  port : float option; [@option]  (** port *)
  preferred_availability_zones : string list option; [@option]
      (** preferred_availability_zones *)
  preferred_outpost_arn : string option; [@option]
      (** preferred_outpost_arn *)
  replication_group_id : string option; [@option]
      (** replication_group_id *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  snapshot_arns : string list option; [@option]  (** snapshot_arns *)
  snapshot_name : string option; [@option]  (** snapshot_name *)
  snapshot_retention_limit : float option; [@option]
      (** snapshot_retention_limit *)
  snapshot_window : string option; [@option]  (** snapshot_window *)
  subnet_group_name : string option; [@option]
      (** subnet_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  transit_encryption_enabled : bool option; [@option]
      (** transit_encryption_enabled *)
  log_delivery_configuration :
    aws_elasticache_cluster__log_delivery_configuration list;
}
[@@deriving yojson_of]
(** aws_elasticache_cluster *)

let aws_elasticache_cluster ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone ?az_mode ?engine
    ?engine_version ?final_snapshot_identifier ?id ?ip_discovery
    ?maintenance_window ?network_type ?node_type
    ?notification_topic_arn ?num_cache_nodes ?outpost_mode
    ?parameter_group_name ?port ?preferred_availability_zones
    ?preferred_outpost_arn ?replication_group_id ?security_group_ids
    ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
    ?snapshot_window ?subnet_group_name ?tags ?tags_all
    ?transit_encryption_enabled ~cluster_id
    ~log_delivery_configuration __resource_id =
  let __resource_type = "aws_elasticache_cluster" in
  let __resource =
    {
      apply_immediately;
      auto_minor_version_upgrade;
      availability_zone;
      az_mode;
      cluster_id;
      engine;
      engine_version;
      final_snapshot_identifier;
      id;
      ip_discovery;
      maintenance_window;
      network_type;
      node_type;
      notification_topic_arn;
      num_cache_nodes;
      outpost_mode;
      parameter_group_name;
      port;
      preferred_availability_zones;
      preferred_outpost_arn;
      replication_group_id;
      security_group_ids;
      snapshot_arns;
      snapshot_name;
      snapshot_retention_limit;
      snapshot_window;
      subnet_group_name;
      tags;
      tags_all;
      transit_encryption_enabled;
      log_delivery_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_cluster __resource);
  ()
