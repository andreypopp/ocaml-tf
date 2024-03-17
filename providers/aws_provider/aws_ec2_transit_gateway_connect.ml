(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_transit_gateway_connect__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect__timeouts *)

type aws_ec2_transit_gateway_connect = {
  protocol : string option; [@option]  (** protocol *)
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_default_route_table_association : bool option;
      [@option]
      (** transit_gateway_default_route_table_association *)
  transit_gateway_default_route_table_propagation : bool option;
      [@option]
      (** transit_gateway_default_route_table_propagation *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  transport_attachment_id : string;  (** transport_attachment_id *)
  timeouts : aws_ec2_transit_gateway_connect__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect *)

let aws_ec2_transit_gateway_connect ?protocol ?tags
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation ?timeouts
    ~transit_gateway_id ~transport_attachment_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_connect" in
  let __resource =
    {
      protocol;
      tags;
      transit_gateway_default_route_table_association;
      transit_gateway_default_route_table_propagation;
      transit_gateway_id;
      transport_attachment_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_connect __resource);
  ()
