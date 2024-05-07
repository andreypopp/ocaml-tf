(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_cluster = {
  cluster_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
  cluster_name : string prop;
  cluster_uuid : string prop;
  id : string prop;
  kafka_version : string prop;
  number_of_broker_nodes : float prop;
  tags : (string * string) list prop;
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
