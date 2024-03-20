(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dx_public_virtual_interface = {
  address_family : string prop;  (** address_family *)
  amazon_address : string prop option; [@option]
      (** amazon_address *)
  bgp_asn : float prop;  (** bgp_asn *)
  bgp_auth_key : string prop option; [@option]  (** bgp_auth_key *)
  connection_id : string prop;  (** connection_id *)
  customer_address : string prop option; [@option]
      (** customer_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  route_filter_prefixes : string prop list;
      (** route_filter_prefixes *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vlan : float prop;  (** vlan *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_public_virtual_interface *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dx_public_virtual_interface ?amazon_address ?bgp_auth_key
    ?customer_address ?id ?tags ?tags_all ?timeouts ~address_family
    ~bgp_asn ~connection_id ~name ~route_filter_prefixes ~vlan () :
    aws_dx_public_virtual_interface =
  {
    address_family;
    amazon_address;
    bgp_asn;
    bgp_auth_key;
    connection_id;
    customer_address;
    id;
    name;
    route_filter_prefixes;
    tags;
    tags_all;
    vlan;
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
  id : string prop;
  name : string prop;
  route_filter_prefixes : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vlan : float prop;
}

let make ?amazon_address ?bgp_auth_key ?customer_address ?id ?tags
    ?tags_all ?timeouts ~address_family ~bgp_asn ~connection_id ~name
    ~route_filter_prefixes ~vlan __id =
  let __type = "aws_dx_public_virtual_interface" in
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
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       route_filter_prefixes =
         Prop.computed __type __id "route_filter_prefixes";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vlan = Prop.computed __type __id "vlan";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_public_virtual_interface
        (aws_dx_public_virtual_interface ?amazon_address
           ?bgp_auth_key ?customer_address ?id ?tags ?tags_all
           ?timeouts ~address_family ~bgp_asn ~connection_id ~name
           ~route_filter_prefixes ~vlan ());
    attrs = __attrs;
  }

let register ?tf_module ?amazon_address ?bgp_auth_key
    ?customer_address ?id ?tags ?tags_all ?timeouts ~address_family
    ~bgp_asn ~connection_id ~name ~route_filter_prefixes ~vlan __id =
  let (r : _ Tf_core.resource) =
    make ?amazon_address ?bgp_auth_key ?customer_address ?id ?tags
      ?tags_all ?timeouts ~address_family ~bgp_asn ~connection_id
      ~name ~route_filter_prefixes ~vlan __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
