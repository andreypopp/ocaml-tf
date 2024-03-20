(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_transit_gateway_connect = {
  id : string prop option; [@option]  (** id *)
  protocol : string prop option; [@option]  (** protocol *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_default_route_table_association : bool prop option;
      [@option]
      (** transit_gateway_default_route_table_association *)
  transit_gateway_default_route_table_propagation : bool prop option;
      [@option]
      (** transit_gateway_default_route_table_propagation *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  transport_attachment_id : string prop;
      (** transport_attachment_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ec2_transit_gateway_connect ?id ?protocol ?tags ?tags_all
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation ?timeouts
    ~transit_gateway_id ~transport_attachment_id () :
    aws_ec2_transit_gateway_connect =
  {
    id;
    protocol;
    tags;
    tags_all;
    transit_gateway_default_route_table_association;
    transit_gateway_default_route_table_propagation;
    transit_gateway_id;
    transport_attachment_id;
    timeouts;
  }

type t = {
  id : string prop;
  protocol : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_default_route_table_association : bool prop;
  transit_gateway_default_route_table_propagation : bool prop;
  transit_gateway_id : string prop;
  transport_attachment_id : string prop;
}

let make ?id ?protocol ?tags ?tags_all
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation ?timeouts
    ~transit_gateway_id ~transport_attachment_id __id =
  let __type = "aws_ec2_transit_gateway_connect" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       protocol = Prop.computed __type __id "protocol";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_default_route_table_association =
         Prop.computed __type __id
           "transit_gateway_default_route_table_association";
       transit_gateway_default_route_table_propagation =
         Prop.computed __type __id
           "transit_gateway_default_route_table_propagation";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
       transport_attachment_id =
         Prop.computed __type __id "transport_attachment_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_connect
        (aws_ec2_transit_gateway_connect ?id ?protocol ?tags
           ?tags_all ?transit_gateway_default_route_table_association
           ?transit_gateway_default_route_table_propagation ?timeouts
           ~transit_gateway_id ~transport_attachment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?protocol ?tags ?tags_all
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation ?timeouts
    ~transit_gateway_id ~transport_attachment_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?protocol ?tags ?tags_all
      ?transit_gateway_default_route_table_association
      ?transit_gateway_default_route_table_propagation ?timeouts
      ~transit_gateway_id ~transport_attachment_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
