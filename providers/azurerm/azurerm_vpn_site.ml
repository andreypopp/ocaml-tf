(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type link__bgp = {
  asn : float prop;  (** asn *)
  peering_address : string prop;  (** peering_address *)
}
[@@deriving yojson_of]
(** link__bgp *)

type link = {
  fqdn : string prop option; [@option]  (** fqdn *)
  ip_address : string prop option; [@option]  (** ip_address *)
  name : string prop;  (** name *)
  provider_name : string prop option; [@option]  (** provider_name *)
  speed_in_mbps : float prop option; [@option]  (** speed_in_mbps *)
  bgp : link__bgp list;
}
[@@deriving yojson_of]
(** link *)

type o365_policy__traffic_category = {
  allow_endpoint_enabled : bool prop option; [@option]
      (** allow_endpoint_enabled *)
  default_endpoint_enabled : bool prop option; [@option]
      (** default_endpoint_enabled *)
  optimize_endpoint_enabled : bool prop option; [@option]
      (** optimize_endpoint_enabled *)
}
[@@deriving yojson_of]
(** o365_policy__traffic_category *)

type o365_policy = {
  traffic_category : o365_policy__traffic_category list;
}
[@@deriving yojson_of]
(** o365_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_vpn_site = {
  address_cidrs : string prop list option; [@option]
      (** address_cidrs *)
  device_model : string prop option; [@option]  (** device_model *)
  device_vendor : string prop option; [@option]  (** device_vendor *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_wan_id : string prop;  (** virtual_wan_id *)
  link : link list;
  o365_policy : o365_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_site *)

let link__bgp ~asn ~peering_address () : link__bgp =
  { asn; peering_address }

let link ?fqdn ?ip_address ?provider_name ?speed_in_mbps ~name ~bgp
    () : link =
  { fqdn; ip_address; name; provider_name; speed_in_mbps; bgp }

let o365_policy__traffic_category ?allow_endpoint_enabled
    ?default_endpoint_enabled ?optimize_endpoint_enabled () :
    o365_policy__traffic_category =
  {
    allow_endpoint_enabled;
    default_endpoint_enabled;
    optimize_endpoint_enabled;
  }

let o365_policy ~traffic_category () : o365_policy =
  { traffic_category }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_site ?address_cidrs ?device_model ?device_vendor ?id
    ?tags ?timeouts ~location ~name ~resource_group_name
    ~virtual_wan_id ~link ~o365_policy () : azurerm_vpn_site =
  {
    address_cidrs;
    device_model;
    device_vendor;
    id;
    location;
    name;
    resource_group_name;
    tags;
    virtual_wan_id;
    link;
    o365_policy;
    timeouts;
  }

type t = {
  address_cidrs : string list prop;
  device_model : string prop;
  device_vendor : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_wan_id : string prop;
}

let register ?tf_module ?address_cidrs ?device_model ?device_vendor
    ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~virtual_wan_id ~link ~o365_policy __resource_id =
  let __resource_type = "azurerm_vpn_site" in
  let __resource =
    azurerm_vpn_site ?address_cidrs ?device_model ?device_vendor ?id
      ?tags ?timeouts ~location ~name ~resource_group_name
      ~virtual_wan_id ~link ~o365_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_site __resource);
  let __resource_attributes =
    ({
       address_cidrs =
         Prop.computed __resource_type __resource_id "address_cidrs";
       device_model =
         Prop.computed __resource_type __resource_id "device_model";
       device_vendor =
         Prop.computed __resource_type __resource_id "device_vendor";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_wan_id =
         Prop.computed __resource_type __resource_id "virtual_wan_id";
     }
      : t)
  in
  __resource_attributes
