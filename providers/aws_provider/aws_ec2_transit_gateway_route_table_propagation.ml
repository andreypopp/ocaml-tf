(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_transit_gateway_route_table_propagation = {
  transit_gateway_attachment_id : string;
      (** transit_gateway_attachment_id *)
  transit_gateway_route_table_id : string;
      (** transit_gateway_route_table_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_route_table_propagation *)

let aws_ec2_transit_gateway_route_table_propagation
    ~transit_gateway_attachment_id ~transit_gateway_route_table_id
    __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_route_table_propagation"
  in
  let __resource =
    { transit_gateway_attachment_id; transit_gateway_route_table_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_route_table_propagation
       __resource);
  ()