(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput = {
  enabled : bool prop;
  volume_throughput : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput) ->
  ()

let yojson_of_broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    =
  (function
   | { enabled = v_enabled; volume_throughput = v_volume_throughput }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_volume_throughput
         in
         ("volume_throughput", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput

[@@@deriving.end]

type broker_node_group_info__storage_info__ebs_storage_info = {
  provisioned_throughput :
    broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_size : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : broker_node_group_info__storage_info__ebs_storage_info) ->
  ()

let yojson_of_broker_node_group_info__storage_info__ebs_storage_info
    =
  (function
   | {
       provisioned_throughput = v_provisioned_throughput;
       volume_size = v_volume_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_volume_size in
         ("volume_size", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_provisioned_throughput then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput)
               v_provisioned_throughput
           in
           let bnd = "provisioned_throughput", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__storage_info__ebs_storage_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__storage_info__ebs_storage_info

[@@@deriving.end]

type broker_node_group_info__storage_info = {
  ebs_storage_info :
    broker_node_group_info__storage_info__ebs_storage_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_node_group_info__storage_info) -> ()

let yojson_of_broker_node_group_info__storage_info =
  (function
   | { ebs_storage_info = v_ebs_storage_info } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_storage_info then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_node_group_info__storage_info__ebs_storage_info)
               v_ebs_storage_info
           in
           let bnd = "ebs_storage_info", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__storage_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_node_group_info__storage_info

[@@@deriving.end]

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl = {
  iam : bool prop;
  scram : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl) ->
  ()

let yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    =
  (function
   | { iam = v_iam; scram = v_scram } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_scram in
         ("scram", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_iam in
         ("iam", arg) :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl

[@@@deriving.end]

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication = {
  sasl :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tls : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication) ->
  ()

let yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    =
  (function
   | { sasl = v_sasl; tls = v_tls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_tls in
         ("tls", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sasl then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl)
               v_sasl
           in
           let bnd = "sasl", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication

[@@@deriving.end]

type broker_node_group_info__connectivity_info__vpc_connectivity = {
  client_authentication :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       broker_node_group_info__connectivity_info__vpc_connectivity) ->
  ()

let yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity
    =
  (function
   | { client_authentication = v_client_authentication } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_client_authentication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication)
               v_client_authentication
           in
           let bnd = "client_authentication", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info__vpc_connectivity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity

[@@@deriving.end]

type broker_node_group_info__connectivity_info__public_access = {
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : broker_node_group_info__connectivity_info__public_access) ->
  ()

let yojson_of_broker_node_group_info__connectivity_info__public_access
    =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info__public_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__connectivity_info__public_access

[@@@deriving.end]

type broker_node_group_info__connectivity_info = {
  public_access :
    broker_node_group_info__connectivity_info__public_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_connectivity :
    broker_node_group_info__connectivity_info__vpc_connectivity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_node_group_info__connectivity_info) -> ()

let yojson_of_broker_node_group_info__connectivity_info =
  (function
   | {
       public_access = v_public_access;
       vpc_connectivity = v_vpc_connectivity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_connectivity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity)
               v_vpc_connectivity
           in
           let bnd = "vpc_connectivity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_public_access then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_node_group_info__connectivity_info__public_access)
               v_public_access
           in
           let bnd = "public_access", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_node_group_info__connectivity_info

[@@@deriving.end]

type broker_node_group_info = {
  az_distribution : string prop;
  client_subnets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  connectivity_info : broker_node_group_info__connectivity_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_type : string prop;
  security_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_info : broker_node_group_info__storage_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_node_group_info) -> ()

let yojson_of_broker_node_group_info =
  (function
   | {
       az_distribution = v_az_distribution;
       client_subnets = v_client_subnets;
       connectivity_info = v_connectivity_info;
       instance_type = v_instance_type;
       security_groups = v_security_groups;
       storage_info = v_storage_info;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_info then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_node_group_info__storage_info)
               v_storage_info
           in
           let bnd = "storage_info", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_groups
           in
           let bnd = "security_groups", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_connectivity_info then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_node_group_info__connectivity_info)
               v_connectivity_info
           in
           let bnd = "connectivity_info", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_client_subnets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_client_subnets
           in
           let bnd = "client_subnets", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_az_distribution
         in
         ("az_distribution", arg) :: bnds
       in
       `Assoc bnds
    : broker_node_group_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_node_group_info

[@@@deriving.end]

type aws_msk_cluster = {
  cluster_name : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_cluster) -> ()

let yojson_of_aws_msk_cluster =
  (function
   | { cluster_name = v_cluster_name; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_cluster

[@@@deriving.end]

let aws_msk_cluster ?id ?tags ~cluster_name () : aws_msk_cluster =
  { cluster_name; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  bootstrap_brokers : string prop;
  bootstrap_brokers_public_sasl_iam : string prop;
  bootstrap_brokers_public_sasl_scram : string prop;
  bootstrap_brokers_public_tls : string prop;
  bootstrap_brokers_sasl_iam : string prop;
  bootstrap_brokers_sasl_scram : string prop;
  bootstrap_brokers_tls : string prop;
  broker_node_group_info : broker_node_group_info list prop;
  cluster_name : string prop;
  cluster_uuid : string prop;
  id : string prop;
  kafka_version : string prop;
  number_of_broker_nodes : float prop;
  tags : string Tf_core.assoc prop;
  zookeeper_connect_string : string prop;
  zookeeper_connect_string_tls : string prop;
}

let make ?id ?tags ~cluster_name __id =
  let __type = "aws_msk_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       bootstrap_brokers =
         Prop.computed __type __id "bootstrap_brokers";
       bootstrap_brokers_public_sasl_iam =
         Prop.computed __type __id
           "bootstrap_brokers_public_sasl_iam";
       bootstrap_brokers_public_sasl_scram =
         Prop.computed __type __id
           "bootstrap_brokers_public_sasl_scram";
       bootstrap_brokers_public_tls =
         Prop.computed __type __id "bootstrap_brokers_public_tls";
       bootstrap_brokers_sasl_iam =
         Prop.computed __type __id "bootstrap_brokers_sasl_iam";
       bootstrap_brokers_sasl_scram =
         Prop.computed __type __id "bootstrap_brokers_sasl_scram";
       bootstrap_brokers_tls =
         Prop.computed __type __id "bootstrap_brokers_tls";
       broker_node_group_info =
         Prop.computed __type __id "broker_node_group_info";
       cluster_name = Prop.computed __type __id "cluster_name";
       cluster_uuid = Prop.computed __type __id "cluster_uuid";
       id = Prop.computed __type __id "id";
       kafka_version = Prop.computed __type __id "kafka_version";
       number_of_broker_nodes =
         Prop.computed __type __id "number_of_broker_nodes";
       tags = Prop.computed __type __id "tags";
       zookeeper_connect_string =
         Prop.computed __type __id "zookeeper_connect_string";
       zookeeper_connect_string_tls =
         Prop.computed __type __id "zookeeper_connect_string_tls";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_cluster
        (aws_msk_cluster ?id ?tags ~cluster_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~cluster_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~cluster_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
