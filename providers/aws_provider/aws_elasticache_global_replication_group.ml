(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_global_replication_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elasticache_global_replication_group__timeouts *)

type aws_elasticache_global_replication_group__global_node_groups = {
  global_node_group_id : string;  (** global_node_group_id *)
  slots : string;  (** slots *)
}
[@@deriving yojson_of]

type aws_elasticache_global_replication_group = {
  global_replication_group_description : string option; [@option]
      (** global_replication_group_description *)
  global_replication_group_id_suffix : string;
      (** global_replication_group_id_suffix *)
  parameter_group_name : string option; [@option]
      (** parameter_group_name *)
  primary_replication_group_id : string;
      (** primary_replication_group_id *)
  timeouts :
    aws_elasticache_global_replication_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_global_replication_group *)

let aws_elasticache_global_replication_group
    ?global_replication_group_description ?parameter_group_name
    ?timeouts ~global_replication_group_id_suffix
    ~primary_replication_group_id __resource_id =
  let __resource_type = "aws_elasticache_global_replication_group" in
  let __resource =
    {
      global_replication_group_description;
      global_replication_group_id_suffix;
      parameter_group_name;
      primary_replication_group_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_global_replication_group __resource);
  ()
