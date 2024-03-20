(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dx_private_virtual_interface = {
  address_family : string prop;  (** address_family *)
  amazon_address : string prop option; [@option]
      (** amazon_address *)
  bgp_asn : float prop;  (** bgp_asn *)
  bgp_auth_key : string prop option; [@option]  (** bgp_auth_key *)
  connection_id : string prop;  (** connection_id *)
  customer_address : string prop option; [@option]
      (** customer_address *)
  dx_gateway_id : string prop option; [@option]  (** dx_gateway_id *)
  id : string prop option; [@option]  (** id *)
  mtu : float prop option; [@option]  (** mtu *)
  name : string prop;  (** name *)
  sitelink_enabled : bool prop option; [@option]
      (** sitelink_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vlan : float prop;  (** vlan *)
  vpn_gateway_id : string prop option; [@option]
      (** vpn_gateway_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_private_virtual_interface *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dx_private_virtual_interface ?amazon_address ?bgp_auth_key
    ?customer_address ?dx_gateway_id ?id ?mtu ?sitelink_enabled ?tags
    ?tags_all ?vpn_gateway_id ?timeouts ~address_family ~bgp_asn
    ~connection_id ~name ~vlan () : aws_dx_private_virtual_interface
    =
  {
    address_family;
    amazon_address;
    bgp_asn;
    bgp_auth_key;
    connection_id;
    customer_address;
    dx_gateway_id;
    id;
    mtu;
    name;
    sitelink_enabled;
    tags;
    tags_all;
    vlan;
    vpn_gateway_id;
    timeouts;
  }

type t = {
  address_family : string prop;
  amazon_address : string prop;
  amazon_side_asn : string prop;
  arn : string prop;
  aws_device : string prop;
  bgp_asn : float prop;
  bgp_auth_key : string prop;
  connection_id : string prop;
  customer_address : string prop;
  dx_gateway_id : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  mtu : float prop;
  name : string prop;
  sitelink_enabled : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vlan : float prop;
  vpn_gateway_id : string prop;
}

let make ?amazon_address ?bgp_auth_key ?customer_address
    ?dx_gateway_id ?id ?mtu ?sitelink_enabled ?tags ?tags_all
    ?vpn_gateway_id ?timeouts ~address_family ~bgp_asn ~connection_id
    ~name ~vlan __id =
  let __type = "aws_dx_private_virtual_interface" in
  let __attrs =
    ({
       address_family = Prop.computed __type __id "address_family";
       amazon_address = Prop.computed __type __id "amazon_address";
       amazon_side_asn = Prop.computed __type __id "amazon_side_asn";
       arn = Prop.computed __type __id "arn";
       aws_device = Prop.computed __type __id "aws_device";
       bgp_asn = Prop.computed __type __id "bgp_asn";
       bgp_auth_key = Prop.computed __type __id "bgp_auth_key";
       connection_id = Prop.computed __type __id "connection_id";
       customer_address =
         Prop.computed __type __id "customer_address";
       dx_gateway_id = Prop.computed __type __id "dx_gateway_id";
       id = Prop.computed __type __id "id";
       jumbo_frame_capable =
         Prop.computed __type __id "jumbo_frame_capable";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       sitelink_enabled =
         Prop.computed __type __id "sitelink_enabled";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vlan = Prop.computed __type __id "vlan";
       vpn_gateway_id = Prop.computed __type __id "vpn_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_private_virtual_interface
        (aws_dx_private_virtual_interface ?amazon_address
           ?bgp_auth_key ?customer_address ?dx_gateway_id ?id ?mtu
           ?sitelink_enabled ?tags ?tags_all ?vpn_gateway_id
           ?timeouts ~address_family ~bgp_asn ~connection_id ~name
           ~vlan ());
    attrs = __attrs;
  }

let register ?tf_module ?amazon_address ?bgp_auth_key
    ?customer_address ?dx_gateway_id ?id ?mtu ?sitelink_enabled ?tags
    ?tags_all ?vpn_gateway_id ?timeouts ~address_family ~bgp_asn
    ~connection_id ~name ~vlan __id =
  let (r : _ Tf_core.resource) =
    make ?amazon_address ?bgp_auth_key ?customer_address
      ?dx_gateway_id ?id ?mtu ?sitelink_enabled ?tags ?tags_all
      ?vpn_gateway_id ?timeouts ~address_family ~bgp_asn
      ~connection_id ~name ~vlan __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
