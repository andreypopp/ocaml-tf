(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_domain_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_domain_association__timeouts *)

type aws_ec2_transit_gateway_multicast_domain_association = {
  id : string option; [@option]  (** id *)
  subnet_id : string;  (** subnet_id *)
  transit_gateway_attachment_id : string;
      (** transit_gateway_attachment_id *)
  transit_gateway_multicast_domain_id : string;
      (** transit_gateway_multicast_domain_id *)
  timeouts :
    aws_ec2_transit_gateway_multicast_domain_association__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_domain_association *)

let aws_ec2_transit_gateway_multicast_domain_association ?id
    ?timeouts ~subnet_id ~transit_gateway_attachment_id
    ~transit_gateway_multicast_domain_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_multicast_domain_association"
  in
  let __resource =
    {
      id;
      subnet_id;
      transit_gateway_attachment_id;
      transit_gateway_multicast_domain_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_multicast_domain_association
       __resource);
  ()
