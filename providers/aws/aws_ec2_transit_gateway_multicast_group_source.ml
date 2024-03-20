(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_multicast_group_source = {
  group_ip_address : string prop;  (** group_ip_address *)
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop;  (** network_interface_id *)
  transit_gateway_multicast_domain_id : string prop;
      (** transit_gateway_multicast_domain_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_group_source *)

let aws_ec2_transit_gateway_multicast_group_source ?id
    ~group_ip_address ~network_interface_id
    ~transit_gateway_multicast_domain_id () :
    aws_ec2_transit_gateway_multicast_group_source =
  {
    group_ip_address;
    id;
    network_interface_id;
    transit_gateway_multicast_domain_id;
  }

type t = {
  group_ip_address : string prop;
  id : string prop;
  network_interface_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

let make ?id ~group_ip_address ~network_interface_id
    ~transit_gateway_multicast_domain_id __id =
  let __type = "aws_ec2_transit_gateway_multicast_group_source" in
  let __attrs =
    ({
       group_ip_address =
         Prop.computed __type __id "group_ip_address";
       id = Prop.computed __type __id "id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       transit_gateway_multicast_domain_id =
         Prop.computed __type __id
           "transit_gateway_multicast_domain_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_multicast_group_source
        (aws_ec2_transit_gateway_multicast_group_source ?id
           ~group_ip_address ~network_interface_id
           ~transit_gateway_multicast_domain_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_ip_address ~network_interface_id
    ~transit_gateway_multicast_domain_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~group_ip_address ~network_interface_id
      ~transit_gateway_multicast_domain_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
