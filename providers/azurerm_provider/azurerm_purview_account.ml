(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_purview_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_purview_account__identity *)

type azurerm_purview_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_purview_account__timeouts *)

type azurerm_purview_account__managed_resources = {
  event_hub_namespace_id : string prop;
      (** event_hub_namespace_id *)
  resource_group_id : string prop;  (** resource_group_id *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]

type azurerm_purview_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_resource_group_name : string prop option; [@option]
      (** managed_resource_group_name *)
  name : string prop;  (** name *)
  public_network_enabled : bool prop option; [@option]
      (** public_network_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_purview_account__identity list;
  timeouts : azurerm_purview_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_purview_account *)

let azurerm_purview_account ?id ?managed_resource_group_name
    ?public_network_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_purview_account" in
  let __resource =
    {
      id;
      location;
      managed_resource_group_name;
      name;
      public_network_enabled;
      resource_group_name;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_purview_account __resource);
  ()
