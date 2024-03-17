(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_purview_account__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_purview_account__identity *)

type azurerm_purview_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_purview_account__timeouts *)

type azurerm_purview_account__managed_resources = {
  event_hub_namespace_id : string;  (** event_hub_namespace_id *)
  resource_group_id : string;  (** resource_group_id *)
  storage_account_id : string;  (** storage_account_id *)
}
[@@deriving yojson_of]

type azurerm_purview_account = {
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_enabled : bool option; [@option]
      (** public_network_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_purview_account__identity list;
  timeouts : azurerm_purview_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_purview_account *)

let azurerm_purview_account ?public_network_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_purview_account" in
  let __resource =
    {
      location;
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
