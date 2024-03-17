(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_fleet_manager__hub_profile = {
  dns_prefix : string;  (** dns_prefix *)
  fqdn : string;  (** fqdn *)
  kubernetes_version : string;  (** kubernetes_version *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_manager__hub_profile *)

type azurerm_kubernetes_fleet_manager__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_manager__timeouts *)

type azurerm_kubernetes_fleet_manager = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  hub_profile : azurerm_kubernetes_fleet_manager__hub_profile list;
  timeouts : azurerm_kubernetes_fleet_manager__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_manager *)

let azurerm_kubernetes_fleet_manager ?tags ?timeouts ~location ~name
    ~resource_group_name ~hub_profile __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_manager" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      tags;
      hub_profile;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_fleet_manager __resource);
  ()
