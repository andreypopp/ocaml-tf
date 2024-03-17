(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_network_manager__scope = {
  management_group_ids : string list option; [@option]
      (** management_group_ids *)
  subscription_ids : string list option; [@option]
      (** subscription_ids *)
}
[@@deriving yojson_of]
(** azurerm_network_manager__scope *)

type azurerm_network_manager__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager__timeouts *)

type azurerm_network_manager__cross_tenant_scopes = {
  management_groups : string list;  (** management_groups *)
  subscriptions : string list;  (** subscriptions *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_network_manager = {
  description : string option; [@option]  (** description *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scope_accesses : string list;  (** scope_accesses *)
  tags : (string * string) list option; [@option]  (** tags *)
  scope : azurerm_network_manager__scope list;
  timeouts : azurerm_network_manager__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager *)

let azurerm_network_manager ?description ?tags ?timeouts ~location
    ~name ~resource_group_name ~scope_accesses ~scope __resource_id =
  let __resource_type = "azurerm_network_manager" in
  let __resource =
    {
      description;
      location;
      name;
      resource_group_name;
      scope_accesses;
      tags;
      scope;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager __resource);
  ()
