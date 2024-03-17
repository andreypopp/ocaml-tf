(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_local_gateway_route = {
  destination_cidr_block : string;  (** destination_cidr_block *)
  local_gateway_route_table_id : string;
      (** local_gateway_route_table_id *)
  local_gateway_virtual_interface_group_id : string;
      (** local_gateway_virtual_interface_group_id *)
}
[@@deriving yojson_of]
(** aws_ec2_local_gateway_route *)

let aws_ec2_local_gateway_route ~destination_cidr_block
    ~local_gateway_route_table_id
    ~local_gateway_virtual_interface_group_id __resource_id =
  let __resource_type = "aws_ec2_local_gateway_route" in
  let __resource =
    {
      destination_cidr_block;
      local_gateway_route_table_id;
      local_gateway_virtual_interface_group_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_local_gateway_route __resource);
  ()
