(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    ~transit_gateway_route_table_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_route" in
  let __resource =
    {
      blackhole;
      destination_cidr_block;
      id;
      transit_gateway_attachment_id;
      transit_gateway_route_table_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_route __resource);
  ()
