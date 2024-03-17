(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vmwareengine_subnet__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_subnet__timeouts *)

type google_vmwareengine_subnet__dhcp_address_ranges = {
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
  timeouts : google_vmwareengine_subnet__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_subnet *)

type t = {
  create_time : string prop;
  dhcp_address_ranges :
    google_vmwareengine_subnet__dhcp_address_ranges list prop;
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

let google_vmwareengine_subnet ?id ?timeouts ~ip_cidr_range ~name
    ~parent __resource_id =
  let __resource_type = "google_vmwareengine_subnet" in
  let __resource =
    ({ id; ip_cidr_range; name; parent; timeouts }
      : google_vmwareengine_subnet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_subnet __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       dhcp_address_ranges =
         Prop.computed __resource_type __resource_id
           "dhcp_address_ranges";
       gateway_id =
         Prop.computed __resource_type __resource_id "gateway_id";
       gateway_ip =
         Prop.computed __resource_type __resource_id "gateway_ip";
       id = Prop.computed __resource_type __resource_id "id";
       ip_cidr_range =
         Prop.computed __resource_type __resource_id "ip_cidr_range";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       standard_config =
         Prop.computed __resource_type __resource_id
           "standard_config";
       state = Prop.computed __resource_type __resource_id "state";
       type_ = Prop.computed __resource_type __resource_id "type";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       vlan_id =
         Prop.computed __resource_type __resource_id "vlan_id";
     }
      : t)
  in
  __resource_attributes
