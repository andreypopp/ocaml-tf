(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_route_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route_server__timeouts *)

type azurerm_route_server = {
  branch_to_branch_traffic_enabled : bool prop option; [@option]
      (** branch_to_branch_traffic_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_route_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_server *)

type t = {
  branch_to_branch_traffic_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_ip_address_id : string prop;
  resource_group_name : string prop;
  routing_state : string prop;
  sku : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  virtual_router_asn : float prop;
  virtual_router_ips : string list prop;
}

let azurerm_route_server ?branch_to_branch_traffic_enabled ?id ?tags
    ?timeouts ~location ~name ~public_ip_address_id
    ~resource_group_name ~sku ~subnet_id __resource_id =
  let __resource_type = "azurerm_route_server" in
  let __resource =
    ({
       branch_to_branch_traffic_enabled;
       id;
       location;
       name;
       public_ip_address_id;
       resource_group_name;
       sku;
       subnet_id;
       tags;
       timeouts;
     }
      : azurerm_route_server)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_server __resource);
  let __resource_attributes =
    ({
       branch_to_branch_traffic_enabled =
         Prop.computed __resource_type __resource_id
           "branch_to_branch_traffic_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       public_ip_address_id =
         Prop.computed __resource_type __resource_id
           "public_ip_address_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       routing_state =
         Prop.computed __resource_type __resource_id "routing_state";
       sku = Prop.computed __resource_type __resource_id "sku";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_router_asn =
         Prop.computed __resource_type __resource_id
           "virtual_router_asn";
       virtual_router_ips =
         Prop.computed __resource_type __resource_id
           "virtual_router_ips";
     }
      : t)
  in
  __resource_attributes
