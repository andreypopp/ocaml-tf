(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_network__ddos_protection_plan = {
  enable : bool prop;  (** enable *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network__ddos_protection_plan *)

type azurerm_virtual_network__encryption = {
  enforcement : string prop;  (** enforcement *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network__encryption *)

type azurerm_virtual_network__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network__timeouts *)

type azurerm_virtual_network__subnet = {
  address_prefix : string prop;  (** address_prefix *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  security_group : string prop;  (** security_group *)
}
[@@deriving yojson_of]

type azurerm_virtual_network = {
  address_space : string prop list;  (** address_space *)
  bgp_community : string prop option; [@option]  (** bgp_community *)
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  flow_timeout_in_minutes : float prop option; [@option]
      (** flow_timeout_in_minutes *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subnet : azurerm_virtual_network__subnet list option; [@option]
      (** subnet *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ddos_protection_plan :
    azurerm_virtual_network__ddos_protection_plan list;
  encryption : azurerm_virtual_network__encryption list;
  timeouts : azurerm_virtual_network__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network *)

type t = {
  address_space : string list prop;
  bgp_community : string prop;
  dns_servers : string list prop;
  edge_zone : string prop;
  flow_timeout_in_minutes : float prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnet : azurerm_virtual_network__subnet list prop;
  tags : (string * string) list prop;
}

let azurerm_virtual_network ?bgp_community ?dns_servers ?edge_zone
    ?flow_timeout_in_minutes ?id ?subnet ?tags ?timeouts
    ~address_space ~location ~name ~resource_group_name
    ~ddos_protection_plan ~encryption __resource_id =
  let __resource_type = "azurerm_virtual_network" in
  let __resource =
    ({
       address_space;
       bgp_community;
       dns_servers;
       edge_zone;
       flow_timeout_in_minutes;
       id;
       location;
       name;
       resource_group_name;
       subnet;
       tags;
       ddos_protection_plan;
       encryption;
       timeouts;
     }
      : azurerm_virtual_network)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network __resource);
  let __resource_attributes =
    ({
       address_space =
         Prop.computed __resource_type __resource_id "address_space";
       bgp_community =
         Prop.computed __resource_type __resource_id "bgp_community";
       dns_servers =
         Prop.computed __resource_type __resource_id "dns_servers";
       edge_zone =
         Prop.computed __resource_type __resource_id "edge_zone";
       flow_timeout_in_minutes =
         Prop.computed __resource_type __resource_id
           "flow_timeout_in_minutes";
       guid = Prop.computed __resource_type __resource_id "guid";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       subnet = Prop.computed __resource_type __resource_id "subnet";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
