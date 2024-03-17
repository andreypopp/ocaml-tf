(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_client_vpn_route__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_route__timeouts *)

type aws_ec2_client_vpn_route = {
  client_vpn_endpoint_id : string prop;
      (** client_vpn_endpoint_id *)
  description : string prop option; [@option]  (** description *)
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  id : string prop option; [@option]  (** id *)
  target_vpc_subnet_id : string prop;  (** target_vpc_subnet_id *)
  timeouts : aws_ec2_client_vpn_route__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_route *)

let aws_ec2_client_vpn_route ?description ?id ?timeouts
    ~client_vpn_endpoint_id ~destination_cidr_block
    ~target_vpc_subnet_id __resource_id =
  let __resource_type = "aws_ec2_client_vpn_route" in
  let __resource =
    {
      client_vpn_endpoint_id;
      description;
      destination_cidr_block;
      id;
      target_vpc_subnet_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_client_vpn_route __resource);
  ()
