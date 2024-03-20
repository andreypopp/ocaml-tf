(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_route = {
  blackhole : bool prop option; [@option]  (** blackhole *)
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  id : string prop option; [@option]  (** id *)
  transit_gateway_attachment_id : string prop option; [@option]
      (** transit_gateway_attachment_id *)
  transit_gateway_route_table_id : string prop;
      (** transit_gateway_route_table_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_route *)

let aws_ec2_transit_gateway_route ?blackhole ?id
    ?transit_gateway_attachment_id ~destination_cidr_block
    ~transit_gateway_route_table_id () :
    aws_ec2_transit_gateway_route =
  {
    blackhole;
    destination_cidr_block;
    id;
    transit_gateway_attachment_id;
    transit_gateway_route_table_id;
  }

type t = {
  blackhole : bool prop;
  destination_cidr_block : string prop;
  id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let make ?blackhole ?id ?transit_gateway_attachment_id
    ~destination_cidr_block ~transit_gateway_route_table_id __id =
  let __type = "aws_ec2_transit_gateway_route" in
  let __attrs =
    ({
       blackhole = Prop.computed __type __id "blackhole";
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       id = Prop.computed __type __id "id";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_route_table_id =
         Prop.computed __type __id "transit_gateway_route_table_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_route
        (aws_ec2_transit_gateway_route ?blackhole ?id
           ?transit_gateway_attachment_id ~destination_cidr_block
           ~transit_gateway_route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?blackhole ?id ?transit_gateway_attachment_id
    ~destination_cidr_block ~transit_gateway_route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?blackhole ?id ?transit_gateway_attachment_id
      ~destination_cidr_block ~transit_gateway_route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
