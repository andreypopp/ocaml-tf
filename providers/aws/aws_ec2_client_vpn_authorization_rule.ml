(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?access_group_id ?authorize_all_groups ?description ?id
    ?timeouts ~client_vpn_endpoint_id ~target_network_cidr __id =
  let __type = "aws_ec2_client_vpn_authorization_rule" in
  let __attrs =
    ({
       access_group_id = Prop.computed __type __id "access_group_id";
       authorize_all_groups =
         Prop.computed __type __id "authorize_all_groups";
       client_vpn_endpoint_id =
         Prop.computed __type __id "client_vpn_endpoint_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       target_network_cidr =
         Prop.computed __type __id "target_network_cidr";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_client_vpn_authorization_rule
        (aws_ec2_client_vpn_authorization_rule ?access_group_id
           ?authorize_all_groups ?description ?id ?timeouts
           ~client_vpn_endpoint_id ~target_network_cidr ());
    attrs = __attrs;
  }

let register ?tf_module ?access_group_id ?authorize_all_groups
    ?description ?id ?timeouts ~client_vpn_endpoint_id
    ~target_network_cidr __id =
  let (r : _ Tf_core.resource) =
    make ?access_group_id ?authorize_all_groups ?description ?id
      ?timeouts ~client_vpn_endpoint_id ~target_network_cidr __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
