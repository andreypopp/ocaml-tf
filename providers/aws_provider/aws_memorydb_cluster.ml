(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_memorydb_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_memorydb_cluster__timeouts *)

type aws_memorydb_cluster__cluster_endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards__nodes__endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards__nodes = {
  availability_zone : string;  (** availability_zone *)
  create_time : string;  (** create_time *)
  endpoint : aws_memorydb_cluster__shards__nodes__endpoint list;
      (** endpoint *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards = {
  name : string;  (** name *)
  nodes : aws_memorydb_cluster__shards__nodes list;  (** nodes *)
  num_nodes : float;  (** num_nodes *)
  slots : string;  (** slots *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster = {
  acl_name : string;  (** acl_name *)
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  data_tiering : bool option; [@option]  (** data_tiering *)
  description : string option; [@option]  (** description *)
  engine_version : string option; [@option]  (** engine_version *)
  final_snapshot_name : string option; [@option]
      (** final_snapshot_name *)
  id : string option; [@option]  (** id *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  maintenance_window : string option; [@option]
      (** maintenance_window *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  node_type : string;  (** node_type *)
  num_replicas_per_shard : float option; [@option]
      (** num_replicas_per_shard *)
  num_shards : float option; [@option]  (** num_shards *)
  parameter_group_name : string option; [@option]
      (** parameter_group_name *)
  port : float option; [@option]  (** port *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  snapshot_arns : string list option; [@option]  (** snapshot_arns *)
  snapshot_name : string option; [@option]  (** snapshot_name *)
  snapshot_retention_limit : float option; [@option]
      (** snapshot_retention_limit *)
  snapshot_window : string option; [@option]  (** snapshot_window *)
  sns_topic_arn : string option; [@option]  (** sns_topic_arn *)
  subnet_group_name : string option; [@option]
      (** subnet_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  tls_enabled : bool option; [@option]  (** tls_enabled *)
  timeouts : aws_memorydb_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_memorydb_cluster *)

let aws_memorydb_cluster ?auto_minor_version_upgrade ?data_tiering
    ?description ?engine_version ?final_snapshot_name ?id
    ?kms_key_arn ?maintenance_window ?name ?name_prefix
    ?num_replicas_per_shard ?num_shards ?parameter_group_name ?port
    ?security_group_ids ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?snapshot_window ?sns_topic_arn
    ?subnet_group_name ?tags ?tags_all ?tls_enabled ?timeouts
    ~acl_name ~node_type __resource_id =
  let __resource_type = "aws_memorydb_cluster" in
  let __resource =
    {
      acl_name;
      auto_minor_version_upgrade;
      data_tiering;
      description;
      engine_version;
      final_snapshot_name;
      id;
      kms_key_arn;
      maintenance_window;
      name;
      name_prefix;
      node_type;
      num_replicas_per_shard;
      num_shards;
      parameter_group_name;
      port;
      security_group_ids;
      snapshot_arns;
      snapshot_name;
      snapshot_retention_limit;
      snapshot_window;
      sns_topic_arn;
      subnet_group_name;
      tags;
      tags_all;
      tls_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_cluster __resource);
  ()
