(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_memorydb_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_memorydb_snapshot__timeouts *)

type aws_memorydb_snapshot__cluster_configuration = {
  description : string;  (** description *)
  engine_version : string;  (** engine_version *)
  maintenance_window : string;  (** maintenance_window *)
  name : string;  (** name *)
  node_type : string;  (** node_type *)
  num_shards : float;  (** num_shards *)
  parameter_group_name : string;  (** parameter_group_name *)
  port : float;  (** port *)
  snapshot_retention_limit : float;  (** snapshot_retention_limit *)
  snapshot_window : string;  (** snapshot_window *)
  subnet_group_name : string;  (** subnet_group_name *)
  topic_arn : string;  (** topic_arn *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_memorydb_snapshot = {
  cluster_name : string;  (** cluster_name *)
  id : string option; [@option]  (** id *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_memorydb_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_memorydb_snapshot *)

let aws_memorydb_snapshot ?id ?kms_key_arn ?name ?name_prefix ?tags
    ?tags_all ?timeouts ~cluster_name __resource_id =
  let __resource_type = "aws_memorydb_snapshot" in
  let __resource =
    {
      cluster_name;
      id;
      kms_key_arn;
      name;
      name_prefix;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_snapshot __resource);
  ()
