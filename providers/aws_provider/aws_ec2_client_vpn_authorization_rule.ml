(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_client_vpn_authorization_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_authorization_rule__timeouts *)

type aws_ec2_client_vpn_authorization_rule = {
  access_group_id : string option; [@option]  (** access_group_id *)
  authorize_all_groups : bool option; [@option]
      (** authorize_all_groups *)
  client_vpn_endpoint_id : string;  (** client_vpn_endpoint_id *)
  description : string option; [@option]  (** description *)
  target_network_cidr : string;  (** target_network_cidr *)
  timeouts : aws_ec2_client_vpn_authorization_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_authorization_rule *)

let aws_ec2_client_vpn_authorization_rule ?access_group_id
    ?authorize_all_groups ?description ?timeouts
    ~client_vpn_endpoint_id ~target_network_cidr __resource_id =
  let __resource_type = "aws_ec2_client_vpn_authorization_rule" in
  let __resource =
    {
      access_group_id;
      authorize_all_groups;
      client_vpn_endpoint_id;
      description;
      target_network_cidr;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_client_vpn_authorization_rule __resource);
  ()
