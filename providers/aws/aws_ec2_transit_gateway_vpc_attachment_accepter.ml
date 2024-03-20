(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_vpc_attachment_accepter = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  transit_gateway_default_route_table_association : bool prop option;
      [@option]
      (** transit_gateway_default_route_table_association *)
  transit_gateway_default_route_table_propagation : bool prop option;
      [@option]
      (** transit_gateway_default_route_table_propagation *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_vpc_attachment_accepter *)

let aws_ec2_transit_gateway_vpc_attachment_accepter ?id ?tags
    ?tags_all ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation
    ~transit_gateway_attachment_id () :
    aws_ec2_transit_gateway_vpc_attachment_accepter =
  {
    id;
    tags;
    tags_all;
    transit_gateway_attachment_id;
    transit_gateway_default_route_table_association;
    transit_gateway_default_route_table_propagation;
  }

type t = {
  appliance_mode_support : string prop;
  dns_support : string prop;
  id : string prop;
  ipv6_support : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_default_route_table_association : bool prop;
  transit_gateway_default_route_table_propagation : bool prop;
  transit_gateway_id : string prop;
  vpc_id : string prop;
  vpc_owner_id : string prop;
}

let make ?id ?tags ?tags_all
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation
    ~transit_gateway_attachment_id __id =
  let __type = "aws_ec2_transit_gateway_vpc_attachment_accepter" in
  let __attrs =
    ({
       appliance_mode_support =
         Prop.computed __type __id "appliance_mode_support";
       dns_support = Prop.computed __type __id "dns_support";
       id = Prop.computed __type __id "id";
       ipv6_support = Prop.computed __type __id "ipv6_support";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_default_route_table_association =
         Prop.computed __type __id
           "transit_gateway_default_route_table_association";
       transit_gateway_default_route_table_propagation =
         Prop.computed __type __id
           "transit_gateway_default_route_table_propagation";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_owner_id = Prop.computed __type __id "vpc_owner_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_vpc_attachment_accepter
        (aws_ec2_transit_gateway_vpc_attachment_accepter ?id ?tags
           ?tags_all ?transit_gateway_default_route_table_association
           ?transit_gateway_default_route_table_propagation
           ~transit_gateway_attachment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation
    ~transit_gateway_attachment_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all
      ?transit_gateway_default_route_table_association
      ?transit_gateway_default_route_table_propagation
      ~transit_gateway_attachment_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
