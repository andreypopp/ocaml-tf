(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_prefix_list_reference = {
  blackhole : bool option; [@option]  (** blackhole *)
  prefix_list_id : string;  (** prefix_list_id *)
  transit_gateway_attachment_id : string option; [@option]
      (** transit_gateway_attachment_id *)
  transit_gateway_route_table_id : string;
      (** transit_gateway_route_table_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_prefix_list_reference *)

let aws_ec2_transit_gateway_prefix_list_reference ?blackhole
    ?transit_gateway_attachment_id ~prefix_list_id
    ~transit_gateway_route_table_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_prefix_list_reference"
  in
  let __resource =
    {
      blackhole;
      prefix_list_id;
      transit_gateway_attachment_id;
      transit_gateway_route_table_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_prefix_list_reference
       __resource);
  ()
