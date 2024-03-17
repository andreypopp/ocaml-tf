(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_account__encryption = {
  key_source : string option; [@option]  (** key_source *)
  key_vault_key_id : string;  (** key_vault_key_id *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_automation_account__encryption *)

type azurerm_automation_account__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_automation_account__identity *)

type azurerm_automation_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_account__timeouts *)

type azurerm_automation_account__private_endpoint_connection = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_automation_account = {
  local_authentication_enabled : bool option; [@option]
      (** local_authentication_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  encryption : azurerm_automation_account__encryption list;
  identity : azurerm_automation_account__identity list;
  timeouts : azurerm_automation_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_account *)

let azurerm_automation_account ?local_authentication_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~encryption ~identity
    __resource_id =
  let __resource_type = "azurerm_automation_account" in
  let __resource =
    {
      local_authentication_enabled;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      sku_name;
      tags;
      encryption;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_account __resource);
  ()
