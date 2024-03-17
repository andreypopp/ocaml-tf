(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_group_member = {
  group_ip_address : string prop;  (** group_ip_address *)
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop;  (** network_interface_id *)
  transit_gateway_multicast_domain_id : string prop;
      (** transit_gateway_multicast_domain_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_group_member *)

let aws_ec2_transit_gateway_multicast_group_member ?id
    ~group_ip_address ~network_interface_id
    ~transit_gateway_multicast_domain_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_multicast_group_member"
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
    (yojson_of_aws_ec2_transit_gateway_multicast_group_member
       __resource);
  ()
