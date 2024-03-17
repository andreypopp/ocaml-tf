(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager__scope = {
  management_group_ids : string prop list option; [@option]
      (** management_group_ids *)
  subscription_ids : string prop list option; [@option]
      (** subscription_ids *)
}
[@@deriving yojson_of]
(** azurerm_network_manager__scope *)

type azurerm_network_manager__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager__timeouts *)

type azurerm_network_manager__cross_tenant_scopes = {
  management_groups : string prop list;  (** management_groups *)
  subscriptions : string prop list;  (** subscriptions *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_network_manager = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope_accesses : string prop list;  (** scope_accesses *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  scope : azurerm_network_manager__scope list;
  timeouts : azurerm_network_manager__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager *)

let azurerm_network_manager ?description ?id ?tags ?timeouts
    ~location ~name ~resource_group_name ~scope_accesses ~scope
    __resource_id =
  let __resource_type = "azurerm_network_manager" in
  let __resource =
    {
      description;
      id;
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
