(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type bgp_settings__instance_0_bgp_peering_address = {
  custom_ips : string prop list;  (** custom_ips *)
}
[@@deriving yojson_of]
(** bgp_settings__instance_0_bgp_peering_address *)

type bgp_settings__instance_1_bgp_peering_address = {
  custom_ips : string prop list;  (** custom_ips *)
}
[@@deriving yojson_of]
(** bgp_settings__instance_1_bgp_peering_address *)

type bgp_settings = {
  asn : float prop;  (** asn *)
  peer_weight : float prop;  (** peer_weight *)
  instance_0_bgp_peering_address :
    bgp_settings__instance_0_bgp_peering_address list;
  instance_1_bgp_peering_address :
    bgp_settings__instance_1_bgp_peering_address list;
}
[@@deriving yojson_of]
(** bgp_settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_vpn_gateway = {
  bgp_route_translation_for_nat_enabled : bool prop option; [@option]
      (** bgp_route_translation_for_nat_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  routing_preference : string prop option; [@option]
      (** routing_preference *)
  scale_unit : float prop option; [@option]  (** scale_unit *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  bgp_settings : bgp_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway *)

let bgp_settings__instance_0_bgp_peering_address ~custom_ips () :
    bgp_settings__instance_0_bgp_peering_address =
  { custom_ips }

let bgp_settings__instance_1_bgp_peering_address ~custom_ips () :
    bgp_settings__instance_1_bgp_peering_address =
  { custom_ips }

let bgp_settings ~asn ~peer_weight ~instance_0_bgp_peering_address
    ~instance_1_bgp_peering_address () : bgp_settings =
  {
    asn;
    peer_weight;
    instance_0_bgp_peering_address;
    instance_1_bgp_peering_address;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_gateway ?bgp_route_translation_for_nat_enabled ?id
    ?routing_preference ?scale_unit ?tags ?timeouts ~location ~name
    ~resource_group_name ~virtual_hub_id ~bgp_settings () :
    azurerm_vpn_gateway =
  {
    bgp_route_translation_for_nat_enabled;
    id;
    location;
    name;
    resource_group_name;
    routing_preference;
    scale_unit;
    tags;
    virtual_hub_id;
    bgp_settings;
    timeouts;
  }

type t = {
  bgp_route_translation_for_nat_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  routing_preference : string prop;
  scale_unit : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
}

let register ?tf_module ?bgp_route_translation_for_nat_enabled ?id
    ?routing_preference ?scale_unit ?tags ?timeouts ~location ~name
    ~resource_group_name ~virtual_hub_id ~bgp_settings __resource_id
    =
  let __resource_type = "azurerm_vpn_gateway" in
  let __resource =
    azurerm_vpn_gateway ?bgp_route_translation_for_nat_enabled ?id
      ?routing_preference ?scale_unit ?tags ?timeouts ~location ~name
      ~resource_group_name ~virtual_hub_id ~bgp_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_gateway __resource);
  let __resource_attributes =
    ({
       bgp_route_translation_for_nat_enabled =
         Prop.computed __resource_type __resource_id
           "bgp_route_translation_for_nat_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       routing_preference =
         Prop.computed __resource_type __resource_id
           "routing_preference";
       scale_unit =
         Prop.computed __resource_type __resource_id "scale_unit";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
     }
      : t)
  in
  __resource_attributes
