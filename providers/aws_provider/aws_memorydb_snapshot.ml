(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_memorydb_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_memorydb_snapshot__timeouts *)

type aws_memorydb_snapshot__cluster_configuration = {
  description : string prop;  (** description *)
  engine_version : string prop;  (** engine_version *)
  maintenance_window : string prop;  (** maintenance_window *)
  name : string prop;  (** name *)
  node_type : string prop;  (** node_type *)
  num_shards : float prop;  (** num_shards *)
  parameter_group_name : string prop;  (** parameter_group_name *)
  port : float prop;  (** port *)
  snapshot_retention_limit : float prop;
      (** snapshot_retention_limit *)
  snapshot_window : string prop;  (** snapshot_window *)
  subnet_group_name : string prop;  (** subnet_group_name *)
  topic_arn : string prop;  (** topic_arn *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_memorydb_snapshot = {
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
