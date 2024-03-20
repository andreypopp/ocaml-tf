(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_route_table_association = {
  id : string prop option; [@option]  (** id *)
  replace_existing_association : bool prop option; [@option]
      (** replace_existing_association *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  transit_gateway_route_table_id : string prop;
      (** transit_gateway_route_table_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_route_table_association *)

let aws_ec2_transit_gateway_route_table_association ?id
    ?replace_existing_association ~transit_gateway_attachment_id
    ~transit_gateway_route_table_id () :
    aws_ec2_transit_gateway_route_table_association =
  {
    id;
    replace_existing_association;
    transit_gateway_attachment_id;
    transit_gateway_route_table_id;
  }

type t = {
  id : string prop;
  replace_existing_association : bool prop;
  resource_id : string prop;
  resource_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let make ?id ?replace_existing_association
    ~transit_gateway_attachment_id ~transit_gateway_route_table_id
    __id =
  let __type = "aws_ec2_transit_gateway_route_table_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       replace_existing_association =
         Prop.computed __type __id "replace_existing_association";
       resource_id = Prop.computed __type __id "resource_id";
       resource_type = Prop.computed __type __id "resource_type";
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
      yojson_of_aws_ec2_transit_gateway_route_table_association
        (aws_ec2_transit_gateway_route_table_association ?id
           ?replace_existing_association
           ~transit_gateway_attachment_id
           ~transit_gateway_route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?replace_existing_association
    ~transit_gateway_attachment_id ~transit_gateway_route_table_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?replace_existing_association
      ~transit_gateway_attachment_id ~transit_gateway_route_table_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
