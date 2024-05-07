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

type aws_ec2_transit_gateway = {
  amazon_side_asn : float prop option; [@option]
  auto_accept_shared_attachments : string prop option; [@option]
  default_route_table_association : string prop option; [@option]
  default_route_table_propagation : string prop option; [@option]
  description : string prop option; [@option]
  dns_support : string prop option; [@option]
  id : string prop option; [@option]
  multicast_support : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  transit_gateway_cidr_blocks : string prop list option; [@option]
  vpn_ecmp_support : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway) -> ()

let yojson_of_aws_ec2_transit_gateway =
  (function
   | {
       amazon_side_asn = v_amazon_side_asn;
       auto_accept_shared_attachments =
         v_auto_accept_shared_attachments;
       default_route_table_association =
         v_default_route_table_association;
       default_route_table_propagation =
         v_default_route_table_propagation;
       description = v_description;
       dns_support = v_dns_support;
       id = v_id;
       multicast_support = v_multicast_support;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_gateway_cidr_blocks = v_transit_gateway_cidr_blocks;
       vpn_ecmp_support = v_vpn_ecmp_support;
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
         match v_vpn_ecmp_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpn_ecmp_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transit_gateway_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transit_gateway_cidr_blocks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         match v_multicast_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "multicast_support", arg in
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
         match v_dns_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_support", arg in
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
       let bnds =
         match v_default_route_table_propagation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_route_table_propagation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_route_table_association with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_route_table_association", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_accept_shared_attachments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_accept_shared_attachments", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amazon_side_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "amazon_side_asn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ec2_transit_gateway ?amazon_side_asn
    ?auto_accept_shared_attachments ?default_route_table_association
    ?default_route_table_propagation ?description ?dns_support ?id
    ?multicast_support ?tags ?tags_all ?transit_gateway_cidr_blocks
    ?vpn_ecmp_support ?timeouts () : aws_ec2_transit_gateway =
  {
    amazon_side_asn;
    auto_accept_shared_attachments;
    default_route_table_association;
    default_route_table_propagation;
    description;
    dns_support;
    id;
    multicast_support;
    tags;
    tags_all;
    transit_gateway_cidr_blocks;
    vpn_ecmp_support;
    timeouts;
  }

type t = {
  tf_name : string;
  amazon_side_asn : float prop;
  arn : string prop;
  association_default_route_table_id : string prop;
  auto_accept_shared_attachments : string prop;
  default_route_table_association : string prop;
  default_route_table_propagation : string prop;
  description : string prop;
  dns_support : string prop;
  id : string prop;
  multicast_support : string prop;
  owner_id : string prop;
  propagation_default_route_table_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_cidr_blocks : string list prop;
  vpn_ecmp_support : string prop;
}

let make ?amazon_side_asn ?auto_accept_shared_attachments
    ?default_route_table_association ?default_route_table_propagation
    ?description ?dns_support ?id ?multicast_support ?tags ?tags_all
    ?transit_gateway_cidr_blocks ?vpn_ecmp_support ?timeouts __id =
  let __type = "aws_ec2_transit_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       amazon_side_asn = Prop.computed __type __id "amazon_side_asn";
       arn = Prop.computed __type __id "arn";
       association_default_route_table_id =
         Prop.computed __type __id
           "association_default_route_table_id";
       auto_accept_shared_attachments =
         Prop.computed __type __id "auto_accept_shared_attachments";
       default_route_table_association =
         Prop.computed __type __id "default_route_table_association";
       default_route_table_propagation =
         Prop.computed __type __id "default_route_table_propagation";
       description = Prop.computed __type __id "description";
       dns_support = Prop.computed __type __id "dns_support";
       id = Prop.computed __type __id "id";
       multicast_support =
         Prop.computed __type __id "multicast_support";
       owner_id = Prop.computed __type __id "owner_id";
       propagation_default_route_table_id =
         Prop.computed __type __id
           "propagation_default_route_table_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_cidr_blocks =
         Prop.computed __type __id "transit_gateway_cidr_blocks";
       vpn_ecmp_support =
         Prop.computed __type __id "vpn_ecmp_support";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway
        (aws_ec2_transit_gateway ?amazon_side_asn
           ?auto_accept_shared_attachments
           ?default_route_table_association
           ?default_route_table_propagation ?description ?dns_support
           ?id ?multicast_support ?tags ?tags_all
           ?transit_gateway_cidr_blocks ?vpn_ecmp_support ?timeouts
           ());
    attrs = __attrs;
  }

let register ?tf_module ?amazon_side_asn
    ?auto_accept_shared_attachments ?default_route_table_association
    ?default_route_table_propagation ?description ?dns_support ?id
    ?multicast_support ?tags ?tags_all ?transit_gateway_cidr_blocks
    ?vpn_ecmp_support ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?amazon_side_asn ?auto_accept_shared_attachments
      ?default_route_table_association
      ?default_route_table_propagation ?description ?dns_support ?id
      ?multicast_support ?tags ?tags_all ?transit_gateway_cidr_blocks
      ?vpn_ecmp_support ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
