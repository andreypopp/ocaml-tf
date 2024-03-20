(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_prefix_list_reference = {
  blackhole : bool prop option; [@option]  (** blackhole *)
  id : string prop option; [@option]  (** id *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  transit_gateway_attachment_id : string prop option; [@option]
      (** transit_gateway_attachment_id *)
  transit_gateway_route_table_id : string prop;
      (** transit_gateway_route_table_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_prefix_list_reference *)

let aws_ec2_transit_gateway_prefix_list_reference ?blackhole ?id
    ?transit_gateway_attachment_id ~prefix_list_id
    ~transit_gateway_route_table_id () :
    aws_ec2_transit_gateway_prefix_list_reference =
  {
    blackhole;
    id;
    prefix_list_id;
    transit_gateway_attachment_id;
    transit_gateway_route_table_id;
  }

type t = {
  blackhole : bool prop;
  id : string prop;
  prefix_list_id : string prop;
  prefix_list_owner_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let make ?blackhole ?id ?transit_gateway_attachment_id
    ~prefix_list_id ~transit_gateway_route_table_id __id =
  let __type = "aws_ec2_transit_gateway_prefix_list_reference" in
  let __attrs =
    ({
       blackhole = Prop.computed __type __id "blackhole";
       id = Prop.computed __type __id "id";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
       prefix_list_owner_id =
         Prop.computed __type __id "prefix_list_owner_id";
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
      yojson_of_aws_ec2_transit_gateway_prefix_list_reference
        (aws_ec2_transit_gateway_prefix_list_reference ?blackhole ?id
           ?transit_gateway_attachment_id ~prefix_list_id
           ~transit_gateway_route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?blackhole ?id ?transit_gateway_attachment_id
    ~prefix_list_id ~transit_gateway_route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?blackhole ?id ?transit_gateway_attachment_id
      ~prefix_list_id ~transit_gateway_route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
