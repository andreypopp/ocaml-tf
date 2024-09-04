(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_traffic_mirror_target = {
  description : string prop option; [@option]
  gateway_load_balancer_endpoint_id : string prop option; [@option]
  id : string prop option; [@option]
  network_interface_id : string prop option; [@option]
  network_load_balancer_arn : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_traffic_mirror_target) -> ()

let yojson_of_aws_ec2_traffic_mirror_target =
  (function
   | {
       description = v_description;
       gateway_load_balancer_endpoint_id =
         v_gateway_load_balancer_endpoint_id;
       id = v_id;
       network_interface_id = v_network_interface_id;
       network_load_balancer_arn = v_network_load_balancer_arn;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         match v_network_load_balancer_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_load_balancer_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_interface_id", arg in
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
         match v_gateway_load_balancer_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_load_balancer_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_traffic_mirror_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_traffic_mirror_target

[@@@deriving.end]

let aws_ec2_traffic_mirror_target ?description
    ?gateway_load_balancer_endpoint_id ?id ?network_interface_id
    ?network_load_balancer_arn ?tags ?tags_all () :
    aws_ec2_traffic_mirror_target =
  {
    description;
    gateway_load_balancer_endpoint_id;
    id;
    network_interface_id;
    network_load_balancer_arn;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  gateway_load_balancer_endpoint_id : string prop;
  id : string prop;
  network_interface_id : string prop;
  network_load_balancer_arn : string prop;
  owner_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?gateway_load_balancer_endpoint_id ?id
    ?network_interface_id ?network_load_balancer_arn ?tags ?tags_all
    __id =
  let __type = "aws_ec2_traffic_mirror_target" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       gateway_load_balancer_endpoint_id =
         Prop.computed __type __id
           "gateway_load_balancer_endpoint_id";
       id = Prop.computed __type __id "id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       network_load_balancer_arn =
         Prop.computed __type __id "network_load_balancer_arn";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_traffic_mirror_target
        (aws_ec2_traffic_mirror_target ?description
           ?gateway_load_balancer_endpoint_id ?id
           ?network_interface_id ?network_load_balancer_arn ?tags
           ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?description
    ?gateway_load_balancer_endpoint_id ?id ?network_interface_id
    ?network_load_balancer_arn ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?description ?gateway_load_balancer_endpoint_id ?id
      ?network_interface_id ?network_load_balancer_arn ?tags
      ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
