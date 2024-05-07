(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_multicast_group_member = {
  group_ip_address : string prop;
  id : string prop option; [@option]
  network_interface_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_ec2_transit_gateway_multicast_group_member) -> ()

let yojson_of_aws_ec2_transit_gateway_multicast_group_member =
  (function
   | {
       group_ip_address = v_group_ip_address;
       id = v_id;
       network_interface_id = v_network_interface_id;
       transit_gateway_multicast_domain_id =
         v_transit_gateway_multicast_domain_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_transit_gateway_multicast_domain_id
         in
         ("transit_gateway_multicast_domain_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_ip_address
         in
         ("group_ip_address", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_multicast_group_member ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_multicast_group_member

[@@@deriving.end]

let aws_ec2_transit_gateway_multicast_group_member ?id
    ~group_ip_address ~network_interface_id
    ~transit_gateway_multicast_domain_id () :
    aws_ec2_transit_gateway_multicast_group_member =
  {
    group_ip_address;
    id;
    network_interface_id;
    transit_gateway_multicast_domain_id;
  }

type t = {
  tf_name : string;
  group_ip_address : string prop;
  id : string prop;
  network_interface_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

let make ?id ~group_ip_address ~network_interface_id
    ~transit_gateway_multicast_domain_id __id =
  let __type = "aws_ec2_transit_gateway_multicast_group_member" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_aws_ec2_transit_gateway_multicast_group_member
        (aws_ec2_transit_gateway_multicast_group_member ?id
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
