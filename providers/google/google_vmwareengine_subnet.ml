(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type dhcp_address_ranges = {
  first_address : string prop;  (** first_address *)
  last_address : string prop;  (** last_address *)
}
[@@deriving yojson_of]

type google_vmwareengine_subnet = {
  id : string prop option; [@option]  (** id *)
  ip_cidr_range : string prop;
      (** The IP address range of the subnet in CIDR format. *)
  name : string prop;
      (** The ID of the subnet. For userDefined subnets, this name should be in the format of service-n,
where n ranges from 1 to 5. *)
  parent : string prop;
      (** The resource name of the private cloud to create a new subnet in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_subnet *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_subnet ?id ?timeouts ~ip_cidr_range ~name
    ~parent () : google_vmwareengine_subnet =
  { id; ip_cidr_range; name; parent; timeouts }

type t = {
  create_time : string prop;
  dhcp_address_ranges : dhcp_address_ranges list prop;
  gateway_id : string prop;
  gateway_ip : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  parent : string prop;
  standard_config : bool prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
  vlan_id : float prop;
}

let make ?id ?timeouts ~ip_cidr_range ~name ~parent __id =
  let __type = "google_vmwareengine_subnet" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       dhcp_address_ranges =
         Prop.computed __type __id "dhcp_address_ranges";
       gateway_id = Prop.computed __type __id "gateway_id";
       gateway_ip = Prop.computed __type __id "gateway_ip";
       id = Prop.computed __type __id "id";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       standard_config = Prop.computed __type __id "standard_config";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       vlan_id = Prop.computed __type __id "vlan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_subnet
        (google_vmwareengine_subnet ?id ?timeouts ~ip_cidr_range
           ~name ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~ip_cidr_range ~name ~parent
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~ip_cidr_range ~name ~parent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
