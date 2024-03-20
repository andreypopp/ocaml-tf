(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type global_node_groups = {
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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_global_replication_group *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_elasticache_global_replication_group
    ?automatic_failover_enabled ?cache_node_type ?engine_version
    ?global_replication_group_description ?id ?num_node_groups
    ?parameter_group_name ?timeouts
    ~global_replication_group_id_suffix ~primary_replication_group_id
    () : aws_elasticache_global_replication_group =
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

type t = {
  arn : string prop;
  at_rest_encryption_enabled : bool prop;
  auth_token_enabled : bool prop;
  automatic_failover_enabled : bool prop;
  cache_node_type : string prop;
  cluster_enabled : bool prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  global_node_groups : global_node_groups list prop;
  global_replication_group_description : string prop;
  global_replication_group_id : string prop;
  global_replication_group_id_suffix : string prop;
  id : string prop;
  num_node_groups : float prop;
  parameter_group_name : string prop;
  primary_replication_group_id : string prop;
  transit_encryption_enabled : bool prop;
}

let make ?automatic_failover_enabled ?cache_node_type ?engine_version
    ?global_replication_group_description ?id ?num_node_groups
    ?parameter_group_name ?timeouts
    ~global_replication_group_id_suffix ~primary_replication_group_id
    __id =
  let __type = "aws_elasticache_global_replication_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       at_rest_encryption_enabled =
         Prop.computed __type __id "at_rest_encryption_enabled";
       auth_token_enabled =
         Prop.computed __type __id "auth_token_enabled";
       automatic_failover_enabled =
         Prop.computed __type __id "automatic_failover_enabled";
       cache_node_type = Prop.computed __type __id "cache_node_type";
       cluster_enabled = Prop.computed __type __id "cluster_enabled";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       engine_version_actual =
         Prop.computed __type __id "engine_version_actual";
       global_node_groups =
         Prop.computed __type __id "global_node_groups";
       global_replication_group_description =
         Prop.computed __type __id
           "global_replication_group_description";
       global_replication_group_id =
         Prop.computed __type __id "global_replication_group_id";
       global_replication_group_id_suffix =
         Prop.computed __type __id
           "global_replication_group_id_suffix";
       id = Prop.computed __type __id "id";
       num_node_groups = Prop.computed __type __id "num_node_groups";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       primary_replication_group_id =
         Prop.computed __type __id "primary_replication_group_id";
       transit_encryption_enabled =
         Prop.computed __type __id "transit_encryption_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_global_replication_group
        (aws_elasticache_global_replication_group
           ?automatic_failover_enabled ?cache_node_type
           ?engine_version ?global_replication_group_description ?id
           ?num_node_groups ?parameter_group_name ?timeouts
           ~global_replication_group_id_suffix
           ~primary_replication_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_failover_enabled ?cache_node_type
    ?engine_version ?global_replication_group_description ?id
    ?num_node_groups ?parameter_group_name ?timeouts
    ~global_replication_group_id_suffix ~primary_replication_group_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_failover_enabled ?cache_node_type ?engine_version
      ?global_replication_group_description ?id ?num_node_groups
      ?parameter_group_name ?timeouts
      ~global_replication_group_id_suffix
      ~primary_replication_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
