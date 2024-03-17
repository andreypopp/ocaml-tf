(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type t = {
  destination_cidr_block : string prop;
  id : string prop;
  local_gateway_route_table_id : string prop;
  local_gateway_virtual_interface_group_id : string prop;
}

let aws_ec2_local_gateway_route ?id ~destination_cidr_block
    ~local_gateway_route_table_id
    ~local_gateway_virtual_interface_group_id __resource_id =
  let __resource_type = "aws_ec2_local_gateway_route" in
  let __resource =
    ({
       destination_cidr_block;
       id;
       local_gateway_route_table_id;
       local_gateway_virtual_interface_group_id;
     }
      : aws_ec2_local_gateway_route)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_local_gateway_route __resource);
  let __resource_attributes =
    ({
       destination_cidr_block =
         Prop.computed __resource_type __resource_id
           "destination_cidr_block";
       id = Prop.computed __resource_type __resource_id "id";
       local_gateway_route_table_id =
         Prop.computed __resource_type __resource_id
           "local_gateway_route_table_id";
       local_gateway_virtual_interface_group_id =
         Prop.computed __resource_type __resource_id
           "local_gateway_virtual_interface_group_id";
     }
      : t)
  in
  __resource_attributes
