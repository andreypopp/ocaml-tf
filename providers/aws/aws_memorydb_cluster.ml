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

type t = {
  acl_name : string prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  cluster_endpoint :
    aws_memorydb_cluster__cluster_endpoint list prop;
  data_tiering : bool prop;
  description : string prop;
  engine_patch_version : string prop;
  engine_version : string prop;
  final_snapshot_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  maintenance_window : string prop;
  name : string prop;
  name_prefix : string prop;
  node_type : string prop;
  num_replicas_per_shard : float prop;
  num_shards : float prop;
  parameter_group_name : string prop;
  port : float prop;
  security_group_ids : string list prop;
  shards : aws_memorydb_cluster__shards list prop;
  snapshot_arns : string list prop;
  snapshot_name : string prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  sns_topic_arn : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tls_enabled : bool prop;
}

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
    ({
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
      : aws_memorydb_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_cluster __resource);
  let __resource_attributes =
    ({
       acl_name =
         Prop.computed __resource_type __resource_id "acl_name";
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_minor_version_upgrade =
         Prop.computed __resource_type __resource_id
           "auto_minor_version_upgrade";
       cluster_endpoint =
         Prop.computed __resource_type __resource_id
           "cluster_endpoint";
       data_tiering =
         Prop.computed __resource_type __resource_id "data_tiering";
       description =
         Prop.computed __resource_type __resource_id "description";
       engine_patch_version =
         Prop.computed __resource_type __resource_id
           "engine_patch_version";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       final_snapshot_name =
         Prop.computed __resource_type __resource_id
           "final_snapshot_name";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       maintenance_window =
         Prop.computed __resource_type __resource_id
           "maintenance_window";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       node_type =
         Prop.computed __resource_type __resource_id "node_type";
       num_replicas_per_shard =
         Prop.computed __resource_type __resource_id
           "num_replicas_per_shard";
       num_shards =
         Prop.computed __resource_type __resource_id "num_shards";
       parameter_group_name =
         Prop.computed __resource_type __resource_id
           "parameter_group_name";
       port = Prop.computed __resource_type __resource_id "port";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       shards = Prop.computed __resource_type __resource_id "shards";
       snapshot_arns =
         Prop.computed __resource_type __resource_id "snapshot_arns";
       snapshot_name =
         Prop.computed __resource_type __resource_id "snapshot_name";
       snapshot_retention_limit =
         Prop.computed __resource_type __resource_id
           "snapshot_retention_limit";
       snapshot_window =
         Prop.computed __resource_type __resource_id
           "snapshot_window";
       sns_topic_arn =
         Prop.computed __resource_type __resource_id "sns_topic_arn";
       subnet_group_name =
         Prop.computed __resource_type __resource_id
           "subnet_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       tls_enabled =
         Prop.computed __resource_type __resource_id "tls_enabled";
     }
      : t)
  in
  __resource_attributes
