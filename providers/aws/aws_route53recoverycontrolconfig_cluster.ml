(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cluster_endpoints = {
  endpoint : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_endpoints) -> ()

let yojson_of_cluster_endpoints =
  (function
   | { endpoint = v_endpoint; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : cluster_endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_endpoints

[@@@deriving.end]

type aws_route53recoverycontrolconfig_cluster = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53recoverycontrolconfig_cluster) -> ()

let yojson_of_aws_route53recoverycontrolconfig_cluster =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_route53recoverycontrolconfig_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53recoverycontrolconfig_cluster

[@@@deriving.end]

let aws_route53recoverycontrolconfig_cluster ?id ~name () :
    aws_route53recoverycontrolconfig_cluster =
  { id; name }

type t = {
  tf_name : string;
  arn : string prop;
  cluster_endpoints : cluster_endpoints list prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let make ?id ~name __id =
  let __type = "aws_route53recoverycontrolconfig_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       cluster_endpoints =
         Prop.computed __type __id "cluster_endpoints";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53recoverycontrolconfig_cluster
        (aws_route53recoverycontrolconfig_cluster ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
