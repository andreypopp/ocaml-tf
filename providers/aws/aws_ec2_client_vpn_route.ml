(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_client_vpn_route = {
  client_vpn_endpoint_id : string prop;
      (** client_vpn_endpoint_id *)
  description : string prop option; [@option]  (** description *)
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  id : string prop option; [@option]  (** id *)
  target_vpc_subnet_id : string prop;  (** target_vpc_subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_route *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_client_vpn_route ?description ?id ?timeouts
    ~client_vpn_endpoint_id ~destination_cidr_block
    ~target_vpc_subnet_id () : aws_ec2_client_vpn_route =
  {
    client_vpn_endpoint_id;
    description;
    destination_cidr_block;
    id;
    target_vpc_subnet_id;
    timeouts;
  }

type t = {
  client_vpn_endpoint_id : string prop;
  description : string prop;
  destination_cidr_block : string prop;
  id : string prop;
  origin : string prop;
  target_vpc_subnet_id : string prop;
  type_ : string prop;
}

let make ?description ?id ?timeouts ~client_vpn_endpoint_id
    ~destination_cidr_block ~target_vpc_subnet_id __id =
  let __type = "aws_ec2_client_vpn_route" in
  let __attrs =
    ({
       client_vpn_endpoint_id =
         Prop.computed __type __id "client_vpn_endpoint_id";
       description = Prop.computed __type __id "description";
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       id = Prop.computed __type __id "id";
       origin = Prop.computed __type __id "origin";
       target_vpc_subnet_id =
         Prop.computed __type __id "target_vpc_subnet_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_client_vpn_route
        (aws_ec2_client_vpn_route ?description ?id ?timeouts
           ~client_vpn_endpoint_id ~destination_cidr_block
           ~target_vpc_subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~client_vpn_endpoint_id ~destination_cidr_block
    ~target_vpc_subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~client_vpn_endpoint_id
      ~destination_cidr_block ~target_vpc_subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
