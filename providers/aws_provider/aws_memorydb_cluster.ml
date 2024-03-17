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
  final_snapshot_name : string option; [@option]
      (** final_snapshot_name *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  node_type : string;  (** node_type *)
  num_replicas_per_shard : float option; [@option]
      (** num_replicas_per_shard *)
  num_shards : float option; [@option]  (** num_shards *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  snapshot_arns : string list option; [@option]  (** snapshot_arns *)
  snapshot_name : string option; [@option]  (** snapshot_name *)
  sns_topic_arn : string option; [@option]  (** sns_topic_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tls_enabled : bool option; [@option]  (** tls_enabled *)
  timeouts : aws_memorydb_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_memorydb_cluster *)

let aws_memorydb_cluster ?auto_minor_version_upgrade ?data_tiering
    ?description ?final_snapshot_name ?kms_key_arn
    ?num_replicas_per_shard ?num_shards ?security_group_ids
    ?snapshot_arns ?snapshot_name ?sns_topic_arn ?tags ?tls_enabled
    ?timeouts ~acl_name ~node_type __resource_id =
  let __resource_type = "aws_memorydb_cluster" in
  let __resource =
    {
      acl_name;
      auto_minor_version_upgrade;
      data_tiering;
      description;
      final_snapshot_name;
      kms_key_arn;
      node_type;
      num_replicas_per_shard;
      num_shards;
      security_group_ids;
      snapshot_arns;
      snapshot_name;
      sns_topic_arn;
      tags;
      tls_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_cluster __resource);
  ()
