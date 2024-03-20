(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_local_gateway_route = {
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  id : string prop option; [@option]  (** id *)
  local_gateway_route_table_id : string prop;
      (** local_gateway_route_table_id *)
  local_gateway_virtual_interface_group_id : string prop;
      (** local_gateway_virtual_interface_group_id *)
}
[@@deriving yojson_of]
(** aws_ec2_local_gateway_route *)

let aws_ec2_local_gateway_route ?id ~destination_cidr_block
    ~local_gateway_route_table_id
    ~local_gateway_virtual_interface_group_id () :
    aws_ec2_local_gateway_route =
  {
    destination_cidr_block;
    id;
    local_gateway_route_table_id;
    local_gateway_virtual_interface_group_id;
  }

type t = {
  destination_cidr_block : string prop;
  id : string prop;
  local_gateway_route_table_id : string prop;
  local_gateway_virtual_interface_group_id : string prop;
}

let make ?id ~destination_cidr_block ~local_gateway_route_table_id
    ~local_gateway_virtual_interface_group_id __id =
  let __type = "aws_ec2_local_gateway_route" in
  let __attrs =
    ({
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       id = Prop.computed __type __id "id";
       local_gateway_route_table_id =
         Prop.computed __type __id "local_gateway_route_table_id";
       local_gateway_virtual_interface_group_id =
         Prop.computed __type __id
           "local_gateway_virtual_interface_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_local_gateway_route
        (aws_ec2_local_gateway_route ?id ~destination_cidr_block
           ~local_gateway_route_table_id
           ~local_gateway_virtual_interface_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~destination_cidr_block
    ~local_gateway_route_table_id
    ~local_gateway_virtual_interface_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~destination_cidr_block ~local_gateway_route_table_id
      ~local_gateway_virtual_interface_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
