(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_transit_gateway = {
  amazon_side_asn : float prop option; [@option]
      (** amazon_side_asn *)
  auto_accept_shared_attachments : string prop option; [@option]
      (** auto_accept_shared_attachments *)
  default_route_table_association : string prop option; [@option]
      (** default_route_table_association *)
  default_route_table_propagation : string prop option; [@option]
      (** default_route_table_propagation *)
  description : string prop option; [@option]  (** description *)
  dns_support : string prop option; [@option]  (** dns_support *)
  id : string prop option; [@option]  (** id *)
  multicast_support : string prop option; [@option]
      (** multicast_support *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_cidr_blocks : string prop list option; [@option]
      (** transit_gateway_cidr_blocks *)
  vpn_ecmp_support : string prop option; [@option]
      (** vpn_ecmp_support *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway *)

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
