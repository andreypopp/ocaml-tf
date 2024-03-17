(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub__route = {
  address_prefixes : string prop list;  (** address_prefixes *)
  next_hop_ip_address : string prop;  (** next_hop_ip_address *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub__route *)

type azurerm_virtual_hub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub__timeouts *)

type azurerm_virtual_hub = {
  address_prefix : string prop option; [@option]
      (** address_prefix *)
  hub_routing_preference : string prop option; [@option]
      (** hub_routing_preference *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_router_auto_scale_min_capacity : float prop option;
      [@option]
      (** virtual_router_auto_scale_min_capacity *)
  virtual_wan_id : string prop option; [@option]
      (** virtual_wan_id *)
  route : azurerm_virtual_hub__route list;
  timeouts : azurerm_virtual_hub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub *)

let azurerm_virtual_hub ?address_prefix ?hub_routing_preference ?id
    ?sku ?tags ?virtual_router_auto_scale_min_capacity
    ?virtual_wan_id ?timeouts ~location ~name ~resource_group_name
    ~route __resource_id =
  let __resource_type = "azurerm_virtual_hub" in
  let __resource =
    {
      address_prefix;
      hub_routing_preference;
      id;
      location;
      name;
      resource_group_name;
      sku;
      tags;
      virtual_router_auto_scale_min_capacity;
      virtual_wan_id;
      route;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub __resource);
  ()
