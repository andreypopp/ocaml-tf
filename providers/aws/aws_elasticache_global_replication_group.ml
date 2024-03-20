(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type global_node_groups = {
  global_node_group_id : string prop;
  slots : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_node_groups) -> ()

let yojson_of_global_node_groups =
  (function
   | {
       global_node_group_id = v_global_node_group_id;
       slots = v_slots;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slots in
         ("slots", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_global_node_group_id
         in
         ("global_node_group_id", arg) :: bnds
       in
       `Assoc bnds
    : global_node_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_node_groups

[@@@deriving.end]

type aws_elasticache_global_replication_group = {
  automatic_failover_enabled : bool prop option; [@option]
  cache_node_type : string prop option; [@option]
  engine_version : string prop option; [@option]
  global_replication_group_description : string prop option;
      [@option]
  global_replication_group_id_suffix : string prop;
  id : string prop option; [@option]
  num_node_groups : float prop option; [@option]
  parameter_group_name : string prop option; [@option]
  primary_replication_group_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_global_replication_group) -> ()

let yojson_of_aws_elasticache_global_replication_group =
  (function
   | {
       automatic_failover_enabled = v_automatic_failover_enabled;
       cache_node_type = v_cache_node_type;
       engine_version = v_engine_version;
       global_replication_group_description =
         v_global_replication_group_description;
       global_replication_group_id_suffix =
         v_global_replication_group_id_suffix;
       id = v_id;
       num_node_groups = v_num_node_groups;
       parameter_group_name = v_parameter_group_name;
       primary_replication_group_id = v_primary_replication_group_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_primary_replication_group_id
         in
         ("primary_replication_group_id", arg) :: bnds
       in
       let bnds =
         match v_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_node_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_node_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_global_replication_group_id_suffix
         in
         ("global_replication_group_id_suffix", arg) :: bnds
       in
       let bnds =
         match v_global_replication_group_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "global_replication_group_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_node_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_failover_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_failover_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elasticache_global_replication_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_global_replication_group

[@@@deriving.end]

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
