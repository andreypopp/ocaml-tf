(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type cluster_configuration = {
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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_memorydb_snapshot *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_memorydb_snapshot ?id ?kms_key_arn ?name ?name_prefix ?tags
    ?tags_all ?timeouts ~cluster_name () : aws_memorydb_snapshot =
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

type t = {
  arn : string prop;
  cluster_configuration : cluster_configuration list prop;
  cluster_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  name_prefix : string prop;
  source : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_arn ?name ?name_prefix ?tags ?tags_all
    ?timeouts ~cluster_name __id =
  let __type = "aws_memorydb_snapshot" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_configuration =
         Prop.computed __type __id "cluster_configuration";
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       source = Prop.computed __type __id "source";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_snapshot
        (aws_memorydb_snapshot ?id ?kms_key_arn ?name ?name_prefix
           ?tags ?tags_all ?timeouts ~cluster_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_arn ?name ?name_prefix ?tags
    ?tags_all ?timeouts ~cluster_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_arn ?name ?name_prefix ?tags ?tags_all
      ?timeouts ~cluster_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
