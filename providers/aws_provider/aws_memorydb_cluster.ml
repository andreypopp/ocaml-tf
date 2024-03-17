(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_memorydb_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_memorydb_cluster__timeouts *)

type aws_memorydb_cluster__cluster_endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards__nodes__endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards__nodes = {
  availability_zone : string prop;  (** availability_zone *)
  create_time : string prop;  (** create_time *)
  endpoint : aws_memorydb_cluster__shards__nodes__endpoint list;
      (** endpoint *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster__shards = {
  name : string prop;  (** name *)
  nodes : aws_memorydb_cluster__shards__nodes list;  (** nodes *)
  num_nodes : float prop;  (** num_nodes *)
  slots : string prop;  (** slots *)
}
[@@deriving yojson_of]

type aws_memorydb_cluster = {
  acl_name : string prop;  (** acl_name *)
  auto_minor_version_upgrade : bool prop option; [@option]
      (** auto_minor_version_upgrade *)
  data_tiering : bool prop option; [@option]  (** data_tiering *)
  description : string prop option; [@option]  (** description *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_name : string prop option; [@option]
      (** final_snapshot_name *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  node_type : string prop;  (** node_type *)
  num_replicas_per_shard : float prop option; [@option]
      (** num_replicas_per_shard *)
  num_shards : float prop option; [@option]  (** num_shards *)
  parameter_group_name : string prop option; [@option]
      (** parameter_group_name *)
  port : float prop option; [@option]  (** port *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  snapshot_arns : string prop list option; [@option]
      (** snapshot_arns *)
  snapshot_name : string prop option; [@option]  (** snapshot_name *)
  snapshot_retention_limit : float prop option; [@option]
      (** snapshot_retention_limit *)
  snapshot_window : string prop option; [@option]
      (** snapshot_window *)
  sns_topic_arn : string prop option; [@option]  (** sns_topic_arn *)
  subnet_group_name : string prop option; [@option]
      (** subnet_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tls_enabled : bool prop option; [@option]  (** tls_enabled *)
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
