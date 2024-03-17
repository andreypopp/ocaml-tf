(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_network__ddos_protection_plan = {
  enable : bool;  (** enable *)
  id : string;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network__ddos_protection_plan *)

type azurerm_virtual_network__encryption = {
  enforcement : string;  (** enforcement *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network__encryption *)

type azurerm_virtual_network__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network__timeouts *)

type azurerm_virtual_network__subnet = {
  address_prefix : string;  (** address_prefix *)
  id : string;  (** id *)
  name : string;  (** name *)
  security_group : string;  (** security_group *)
}
[@@deriving yojson_of]

type azurerm_virtual_network = {
  address_space : string list;  (** address_space *)
  bgp_community : string option; [@option]  (** bgp_community *)
  edge_zone : string option; [@option]  (** edge_zone *)
  flow_timeout_in_minutes : float option; [@option]
      (** flow_timeout_in_minutes *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  ddos_protection_plan :
    azurerm_virtual_network__ddos_protection_plan list;
  encryption : azurerm_virtual_network__encryption list;
  timeouts : azurerm_virtual_network__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network *)

let azurerm_virtual_network ?bgp_community ?edge_zone
    ?flow_timeout_in_minutes ?tags ?timeouts ~address_space ~location
    ~name ~resource_group_name ~ddos_protection_plan ~encryption
    __resource_id =
  let __resource_type = "azurerm_virtual_network" in
  let __resource =
    {
      address_space;
      bgp_community;
      edge_zone;
      flow_timeout_in_minutes;
      location;
      name;
      resource_group_name;
      tags;
      ddos_protection_plan;
      encryption;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network __resource);
  ()
