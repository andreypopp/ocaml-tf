(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dx_bgp_peer = {
  address_family : string prop;  (** address_family *)
  amazon_address : string prop option; [@option]
      (** amazon_address *)
  bgp_asn : float prop;  (** bgp_asn *)
  bgp_auth_key : string prop option; [@option]  (** bgp_auth_key *)
  customer_address : string prop option; [@option]
      (** customer_address *)
  id : string prop option; [@option]  (** id *)
  virtual_interface_id : string prop;  (** virtual_interface_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_bgp_peer *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dx_bgp_peer ?amazon_address ?bgp_auth_key ?customer_address
    ?id ?timeouts ~address_family ~bgp_asn ~virtual_interface_id () :
    aws_dx_bgp_peer =
  {
    address_family;
    amazon_address;
    bgp_asn;
    bgp_auth_key;
    customer_address;
    id;
    virtual_interface_id;
    timeouts;
  }

type t = {
  address_family : string prop;
  amazon_address : string prop;
  aws_device : string prop;
  bgp_asn : float prop;
  bgp_auth_key : string prop;
  bgp_peer_id : string prop;
  bgp_status : string prop;
  customer_address : string prop;
  id : string prop;
  virtual_interface_id : string prop;
}

let make ?amazon_address ?bgp_auth_key ?customer_address ?id
    ?timeouts ~address_family ~bgp_asn ~virtual_interface_id __id =
  let __type = "aws_dx_bgp_peer" in
  let __attrs =
    ({
       address_family = Prop.computed __type __id "address_family";
       amazon_address = Prop.computed __type __id "amazon_address";
       aws_device = Prop.computed __type __id "aws_device";
       bgp_asn = Prop.computed __type __id "bgp_asn";
       bgp_auth_key = Prop.computed __type __id "bgp_auth_key";
       bgp_peer_id = Prop.computed __type __id "bgp_peer_id";
       bgp_status = Prop.computed __type __id "bgp_status";
       customer_address =
         Prop.computed __type __id "customer_address";
       id = Prop.computed __type __id "id";
       virtual_interface_id =
         Prop.computed __type __id "virtual_interface_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_bgp_peer
        (aws_dx_bgp_peer ?amazon_address ?bgp_auth_key
           ?customer_address ?id ?timeouts ~address_family ~bgp_asn
           ~virtual_interface_id ());
    attrs = __attrs;
  }

let register ?tf_module ?amazon_address ?bgp_auth_key
    ?customer_address ?id ?timeouts ~address_family ~bgp_asn
    ~virtual_interface_id __id =
  let (r : _ Tf_core.resource) =
    make ?amazon_address ?bgp_auth_key ?customer_address ?id
      ?timeouts ~address_family ~bgp_asn ~virtual_interface_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
