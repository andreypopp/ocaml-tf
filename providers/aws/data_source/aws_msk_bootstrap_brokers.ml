(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_bootstrap_brokers = {
  cluster_arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_bootstrap_brokers) -> ()

let yojson_of_aws_msk_bootstrap_brokers =
  (function
   | { cluster_arn = v_cluster_arn; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_cluster_arn in
         ("cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_bootstrap_brokers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_bootstrap_brokers

[@@@deriving.end]

let aws_msk_bootstrap_brokers ?id ~cluster_arn () :
    aws_msk_bootstrap_brokers =
  { cluster_arn; id }

type t = {
  tf_name : string;
  bootstrap_brokers : string prop;
  bootstrap_brokers_public_sasl_iam : string prop;
  bootstrap_brokers_public_sasl_scram : string prop;
  bootstrap_brokers_public_tls : string prop;
  bootstrap_brokers_sasl_iam : string prop;
  bootstrap_brokers_sasl_scram : string prop;
  bootstrap_brokers_tls : string prop;
  bootstrap_brokers_vpc_connectivity_sasl_iam : string prop;
  bootstrap_brokers_vpc_connectivity_sasl_scram : string prop;
  bootstrap_brokers_vpc_connectivity_tls : string prop;
  cluster_arn : string prop;
  id : string prop;
}

let make ?id ~cluster_arn __id =
  let __type = "aws_msk_bootstrap_brokers" in
  let __attrs =
    ({
       tf_name = __id;
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
       bootstrap_brokers_vpc_connectivity_sasl_iam =
         Prop.computed __type __id
           "bootstrap_brokers_vpc_connectivity_sasl_iam";
       bootstrap_brokers_vpc_connectivity_sasl_scram =
         Prop.computed __type __id
           "bootstrap_brokers_vpc_connectivity_sasl_scram";
       bootstrap_brokers_vpc_connectivity_tls =
         Prop.computed __type __id
           "bootstrap_brokers_vpc_connectivity_tls";
       cluster_arn = Prop.computed __type __id "cluster_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_bootstrap_brokers
        (aws_msk_bootstrap_brokers ?id ~cluster_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
