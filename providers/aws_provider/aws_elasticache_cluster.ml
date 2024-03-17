(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_cluster__log_delivery_configuration = {
  destination : string prop;  (** destination *)
  destination_type : string prop;  (** destination_type *)
  log_format : string prop;  (** log_format *)
  log_type : string prop;  (** log_type *)
}
[@@deriving yojson_of]
(** aws_elasticache_cluster__log_delivery_configuration *)

type aws_elasticache_cluster__cache_nodes = {
  address : string prop;  (** address *)
  availability_zone : string prop;  (** availability_zone *)
  id : string prop;  (** id *)
  outpost_arn : string prop;  (** outpost_arn *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type aws_elasticache_cluster = {
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : string prop option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  az_mode : string prop option; [@option]  (** az_mode *)
  cluster_id : string prop;  (** cluster_id *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  id : string prop option; [@option]  (** id *)
  ip_discovery : string prop option; [@option]  (** ip_discovery *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  network_type : string prop option; [@option]  (** network_type *)
  node_type : string prop option; [@option]  (** node_type *)
  notification_topic_arn : string prop option; [@option]
      (** notification_topic_arn *)
  num_cache_nodes : float prop option; [@option]
      (** num_cache_nodes *)
  outpost_mode : string prop option; [@option]  (** outpost_mode *)
  parameter_group_name : string prop option; [@option]
      (** parameter_group_name *)
  port : float prop option; [@option]  (** port *)
  preferred_availability_zones : string prop list option; [@option]
      (** preferred_availability_zones *)
  preferred_outpost_arn : string prop option; [@option]
      (** preferred_outpost_arn *)
  replication_group_id : string prop option; [@option]
      (** replication_group_id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  snapshot_arns : string prop list option; [@option]
      (** snapshot_arns *)
  snapshot_name : string prop option; [@option]  (** snapshot_name *)
  snapshot_retention_limit : float prop option; [@option]
      (** snapshot_retention_limit *)
  snapshot_window : string prop option; [@option]
      (** snapshot_window *)
  subnet_group_name : string prop option; [@option]
      (** subnet_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_encryption_enabled : bool prop option; [@option]
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
