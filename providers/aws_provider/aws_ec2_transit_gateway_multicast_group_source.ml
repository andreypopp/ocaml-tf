(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_group_source = {
  group_ip_address : string;  (** group_ip_address *)
  id : string option; [@option]  (** id *)
  network_interface_id : string;  (** network_interface_id *)
  transit_gateway_multicast_domain_id : string;
      (** transit_gateway_multicast_domain_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_group_source *)

let aws_ec2_transit_gateway_multicast_group_source ?id
    ~group_ip_address ~network_interface_id
    ~transit_gateway_multicast_domain_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_multicast_group_source"
  in
  let __resource =
    {
      group_ip_address;
      id;
      network_interface_id;
      transit_gateway_multicast_domain_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_multicast_group_source
       __resource);
  ()
