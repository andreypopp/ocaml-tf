(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_client_vpn_network_association = {
  client_vpn_endpoint_id : string prop;
      (** client_vpn_endpoint_id *)
  id : string prop option; [@option]  (** id *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_network_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_client_vpn_network_association ?id ?timeouts
    ~client_vpn_endpoint_id ~subnet_id () :
    aws_ec2_client_vpn_network_association =
  { client_vpn_endpoint_id; id; subnet_id; timeouts }

type t = {
  association_id : string prop;
  client_vpn_endpoint_id : string prop;
  id : string prop;
  subnet_id : string prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?timeouts ~client_vpn_endpoint_id
    ~subnet_id __resource_id =
  let __resource_type = "aws_ec2_client_vpn_network_association" in
  let __resource =
    aws_ec2_client_vpn_network_association ?id ?timeouts
      ~client_vpn_endpoint_id ~subnet_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_client_vpn_network_association __resource);
  let __resource_attributes =
    ({
       association_id =
         Prop.computed __resource_type __resource_id "association_id";
       client_vpn_endpoint_id =
         Prop.computed __resource_type __resource_id
           "client_vpn_endpoint_id";
       id = Prop.computed __resource_type __resource_id "id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
