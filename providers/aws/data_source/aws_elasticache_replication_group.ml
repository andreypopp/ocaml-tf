(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_delivery_configuration = {
  destination : string prop;
  destination_type : string prop;
  log_format : string prop;
  log_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_delivery_configuration) -> ()

let yojson_of_log_delivery_configuration =
  (function
   | {
       destination = v_destination;
       destination_type = v_destination_type;
       log_format = v_log_format;
       log_type = v_log_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_type in
         ("log_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_format in
         ("log_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_type
         in
         ("destination_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : log_delivery_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_delivery_configuration

[@@@deriving.end]

type aws_elasticache_replication_group = {
  id : string prop option; [@option]
  replication_group_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_replication_group) -> ()

let yojson_of_aws_elasticache_replication_group =
  (function
   | { id = v_id; replication_group_id = v_replication_group_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_group_id
         in
         ("replication_group_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elasticache_replication_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_replication_group

[@@@deriving.end]

let aws_elasticache_replication_group ?id ~replication_group_id () :
    aws_elasticache_replication_group =
  { id; replication_group_id }

type t = {
  tf_name : string;
  arn : string prop;
  auth_token_enabled : bool prop;
  automatic_failover_enabled : bool prop;
  cluster_mode : string prop;
  configuration_endpoint_address : string prop;
  description : string prop;
  id : string prop;
  log_delivery_configuration : log_delivery_configuration list prop;
  member_clusters : string list prop;
  multi_az_enabled : bool prop;
  node_type : string prop;
  num_cache_clusters : float prop;
  num_node_groups : float prop;
  port : float prop;
  primary_endpoint_address : string prop;
  reader_endpoint_address : string prop;
  replicas_per_node_group : float prop;
  replication_group_id : string prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
}

let make ?id ~replication_group_id __id =
  let __type = "aws_elasticache_replication_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auth_token_enabled =
         Prop.computed __type __id "auth_token_enabled";
       automatic_failover_enabled =
         Prop.computed __type __id "automatic_failover_enabled";
       cluster_mode = Prop.computed __type __id "cluster_mode";
       configuration_endpoint_address =
         Prop.computed __type __id "configuration_endpoint_address";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       log_delivery_configuration =
         Prop.computed __type __id "log_delivery_configuration";
       member_clusters = Prop.computed __type __id "member_clusters";
       multi_az_enabled =
         Prop.computed __type __id "multi_az_enabled";
       node_type = Prop.computed __type __id "node_type";
       num_cache_clusters =
         Prop.computed __type __id "num_cache_clusters";
       num_node_groups = Prop.computed __type __id "num_node_groups";
       port = Prop.computed __type __id "port";
       primary_endpoint_address =
         Prop.computed __type __id "primary_endpoint_address";
       reader_endpoint_address =
         Prop.computed __type __id "reader_endpoint_address";
       replicas_per_node_group =
         Prop.computed __type __id "replicas_per_node_group";
       replication_group_id =
         Prop.computed __type __id "replication_group_id";
       snapshot_retention_limit =
         Prop.computed __type __id "snapshot_retention_limit";
       snapshot_window = Prop.computed __type __id "snapshot_window";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_replication_group
        (aws_elasticache_replication_group ?id ~replication_group_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~replication_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~replication_group_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
