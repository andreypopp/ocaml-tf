(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_client_vpn_network_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_network_association__timeouts *)

type aws_ec2_client_vpn_network_association = {
  client_vpn_endpoint_id : string;  (** client_vpn_endpoint_id *)
  subnet_id : string;  (** subnet_id *)
  timeouts : aws_ec2_client_vpn_network_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_network_association *)

let aws_ec2_client_vpn_network_association ?timeouts
    ~client_vpn_endpoint_id ~subnet_id __resource_id =
  let __resource_type = "aws_ec2_client_vpn_network_association" in
  let __resource = { client_vpn_endpoint_id; subnet_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_client_vpn_network_association __resource);
  ()
