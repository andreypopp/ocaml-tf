(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~client_vpn_endpoint_id ~subnet_id __id =
  let __type = "aws_ec2_client_vpn_network_association" in
  let __attrs =
    ({
       association_id = Prop.computed __type __id "association_id";
       client_vpn_endpoint_id =
         Prop.computed __type __id "client_vpn_endpoint_id";
       id = Prop.computed __type __id "id";
       subnet_id = Prop.computed __type __id "subnet_id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_client_vpn_network_association
        (aws_ec2_client_vpn_network_association ?id ?timeouts
           ~client_vpn_endpoint_id ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~client_vpn_endpoint_id
    ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~client_vpn_endpoint_id ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
