(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_account__encryption = {
  key_source : string prop option; [@option]  (** key_source *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_automation_account__encryption *)

type azurerm_automation_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_automation_account__identity *)

type azurerm_automation_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_account__timeouts *)

type azurerm_automation_account__private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type azurerm_automation_account = {
  id : string prop option; [@option]  (** id *)
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  encryption : azurerm_automation_account__encryption list;
  identity : azurerm_automation_account__identity list;
  timeouts : azurerm_automation_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_account *)

let azurerm_automation_account ?id ?local_authentication_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~encryption ~identity
    __resource_id =
  let __resource_type = "azurerm_automation_account" in
  let __resource =
    {
      id;
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
