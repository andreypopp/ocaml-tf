(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_global_replication_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elasticache_global_replication_group__timeouts *)

type aws_elasticache_global_replication_group__global_node_groups = {
  global_node_group_id : string prop;  (** global_node_group_id *)
  slots : string prop;  (** slots *)
}
[@@deriving yojson_of]

type aws_elasticache_global_replication_group = {
  automatic_failover_enabled : bool prop option; [@option]
      (** automatic_failover_enabled *)
  cache_node_type : string prop option; [@option]
      (** cache_node_type *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  global_replication_group_description : string prop option;
      [@option]
      (** global_replication_group_description *)
  global_replication_group_id_suffix : string prop;
      (** global_replication_group_id_suffix *)
  id : string prop option; [@option]  (** id *)
  num_node_groups : float prop option; [@option]
      (** num_node_groups *)
  parameter_group_name : string prop option; [@option]
      (** parameter_group_name *)
  primary_replication_group_id : string prop;
      (** primary_replication_group_id *)
  timeouts :
    aws_elasticache_global_replication_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_global_replication_group *)

let aws_elasticache_global_replication_group
    ?automatic_failover_enabled ?cache_node_type ?engine_version
    ?global_replication_group_description ?id ?num_node_groups
    ?parameter_group_name ?timeouts
    ~global_replication_group_id_suffix ~primary_replication_group_id
    __resource_id =
  let __resource_type = "aws_elasticache_global_replication_group" in
  let __resource =
    {
      automatic_failover_enabled;
      cache_node_type;
      engine_version;
      global_replication_group_description;
      global_replication_group_id_suffix;
      id;
      num_node_groups;
      parameter_group_name;
      primary_replication_group_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_global_replication_group __resource);
  ()
