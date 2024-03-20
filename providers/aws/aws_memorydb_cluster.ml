(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type cluster_endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type shards__nodes__endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type shards__nodes = {
  availability_zone : string prop;  (** availability_zone *)
  create_time : string prop;  (** create_time *)
  endpoint : shards__nodes__endpoint list;  (** endpoint *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type shards = {
  name : string prop;  (** name *)
  nodes : shards__nodes list;  (** nodes *)
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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_memorydb_cluster *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_memorydb_cluster ?auto_minor_version_upgrade ?data_tiering
    ?description ?engine_version ?final_snapshot_name ?id
    ?kms_key_arn ?maintenance_window ?name ?name_prefix
    ?num_replicas_per_shard ?num_shards ?parameter_group_name ?port
    ?security_group_ids ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?snapshot_window ?sns_topic_arn
    ?subnet_group_name ?tags ?tags_all ?tls_enabled ?timeouts
    ~acl_name ~node_type () : aws_memorydb_cluster =
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

type t = {
  acl_name : string prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  cluster_endpoint : cluster_endpoint list prop;
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
  shards : shards list prop;
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

let make ?auto_minor_version_upgrade ?data_tiering ?description
    ?engine_version ?final_snapshot_name ?id ?kms_key_arn
    ?maintenance_window ?name ?name_prefix ?num_replicas_per_shard
    ?num_shards ?parameter_group_name ?port ?security_group_ids
    ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
    ?snapshot_window ?sns_topic_arn ?subnet_group_name ?tags
    ?tags_all ?tls_enabled ?timeouts ~acl_name ~node_type __id =
  let __type = "aws_memorydb_cluster" in
  let __attrs =
    ({
       acl_name = Prop.computed __type __id "acl_name";
       arn = Prop.computed __type __id "arn";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       cluster_endpoint =
         Prop.computed __type __id "cluster_endpoint";
       data_tiering = Prop.computed __type __id "data_tiering";
       description = Prop.computed __type __id "description";
       engine_patch_version =
         Prop.computed __type __id "engine_patch_version";
       engine_version = Prop.computed __type __id "engine_version";
       final_snapshot_name =
         Prop.computed __type __id "final_snapshot_name";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       node_type = Prop.computed __type __id "node_type";
       num_replicas_per_shard =
         Prop.computed __type __id "num_replicas_per_shard";
       num_shards = Prop.computed __type __id "num_shards";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       port = Prop.computed __type __id "port";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       shards = Prop.computed __type __id "shards";
       snapshot_arns = Prop.computed __type __id "snapshot_arns";
       snapshot_name = Prop.computed __type __id "snapshot_name";
       snapshot_retention_limit =
         Prop.computed __type __id "snapshot_retention_limit";
       snapshot_window = Prop.computed __type __id "snapshot_window";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
       subnet_group_name =
         Prop.computed __type __id "subnet_group_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tls_enabled = Prop.computed __type __id "tls_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_cluster
        (aws_memorydb_cluster ?auto_minor_version_upgrade
           ?data_tiering ?description ?engine_version
           ?final_snapshot_name ?id ?kms_key_arn ?maintenance_window
           ?name ?name_prefix ?num_replicas_per_shard ?num_shards
           ?parameter_group_name ?port ?security_group_ids
           ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
           ?snapshot_window ?sns_topic_arn ?subnet_group_name ?tags
           ?tags_all ?tls_enabled ?timeouts ~acl_name ~node_type ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_minor_version_upgrade ?data_tiering
    ?description ?engine_version ?final_snapshot_name ?id
    ?kms_key_arn ?maintenance_window ?name ?name_prefix
    ?num_replicas_per_shard ?num_shards ?parameter_group_name ?port
    ?security_group_ids ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?snapshot_window ?sns_topic_arn
    ?subnet_group_name ?tags ?tags_all ?tls_enabled ?timeouts
    ~acl_name ~node_type __id =
  let (r : _ Tf_core.resource) =
    make ?auto_minor_version_upgrade ?data_tiering ?description
      ?engine_version ?final_snapshot_name ?id ?kms_key_arn
      ?maintenance_window ?name ?name_prefix ?num_replicas_per_shard
      ?num_shards ?parameter_group_name ?port ?security_group_ids
      ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
      ?snapshot_window ?sns_topic_arn ?subnet_group_name ?tags
      ?tags_all ?tls_enabled ?timeouts ~acl_name ~node_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
