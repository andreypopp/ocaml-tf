(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_client_vpn_authorization_rule = {
  access_group_id : string prop option; [@option]
      (** access_group_id *)
  authorize_all_groups : bool prop option; [@option]
      (** authorize_all_groups *)
  client_vpn_endpoint_id : string prop;
      (** client_vpn_endpoint_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  target_network_cidr : string prop;  (** target_network_cidr *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_authorization_rule *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_client_vpn_authorization_rule ?access_group_id
    ?authorize_all_groups ?description ?id ?timeouts
    ~client_vpn_endpoint_id ~target_network_cidr () :
    aws_ec2_client_vpn_authorization_rule =
  {
    access_group_id;
    authorize_all_groups;
    client_vpn_endpoint_id;
    description;
    id;
    target_network_cidr;
    timeouts;
  }

type t = {
  access_group_id : string prop;
  authorize_all_groups : bool prop;
  client_vpn_endpoint_id : string prop;
  description : string prop;
  id : string prop;
  target_network_cidr : string prop;
}

let register ?tf_module ?access_group_id ?authorize_all_groups
    ?description ?id ?timeouts ~client_vpn_endpoint_id
    ~target_network_cidr __resource_id =
  let __resource_type = "aws_ec2_client_vpn_authorization_rule" in
  let __resource =
    aws_ec2_client_vpn_authorization_rule ?access_group_id
      ?authorize_all_groups ?description ?id ?timeouts
      ~client_vpn_endpoint_id ~target_network_cidr ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_client_vpn_authorization_rule __resource);
  let __resource_attributes =
    ({
       access_group_id =
         Prop.computed __resource_type __resource_id
           "access_group_id";
       authorize_all_groups =
         Prop.computed __resource_type __resource_id
           "authorize_all_groups";
       client_vpn_endpoint_id =
         Prop.computed __resource_type __resource_id
           "client_vpn_endpoint_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       target_network_cidr =
         Prop.computed __resource_type __resource_id
           "target_network_cidr";
     }
      : t)
  in
  __resource_attributes
