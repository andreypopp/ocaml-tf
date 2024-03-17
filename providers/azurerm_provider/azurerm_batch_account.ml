(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_batch_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_batch_account__identity *)

type azurerm_batch_account__key_vault_reference = {
  id : string prop;  (** id *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_batch_account__key_vault_reference *)

type azurerm_batch_account__network_profile__account_access__ip_rule = {
  action : string prop option; [@option]  (** action *)
  ip_range : string prop;  (** ip_range *)
}
[@@deriving yojson_of]
(** azurerm_batch_account__network_profile__account_access__ip_rule *)

type azurerm_batch_account__network_profile__account_access = {
  default_action : string prop option; [@option]
      (** default_action *)
  ip_rule :
    azurerm_batch_account__network_profile__account_access__ip_rule
    list;
}
[@@deriving yojson_of]
(** azurerm_batch_account__network_profile__account_access *)

type azurerm_batch_account__network_profile__node_management_access__ip_rule = {
  action : string prop option; [@option]  (** action *)
  ip_range : string prop;  (** ip_range *)
}
[@@deriving yojson_of]
(** azurerm_batch_account__network_profile__node_management_access__ip_rule *)

type azurerm_batch_account__network_profile__node_management_access = {
  default_action : string prop option; [@option]
      (** default_action *)
  ip_rule :
    azurerm_batch_account__network_profile__node_management_access__ip_rule
    list;
}
[@@deriving yojson_of]
(** azurerm_batch_account__network_profile__node_management_access *)

type azurerm_batch_account__network_profile = {
  account_access :
    azurerm_batch_account__network_profile__account_access list;
  node_management_access :
    azurerm_batch_account__network_profile__node_management_access
    list;
}
[@@deriving yojson_of]
(** azurerm_batch_account__network_profile *)

type azurerm_batch_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_batch_account__timeouts *)

type azurerm_batch_account__encryption = {
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}
[@@deriving yojson_of]

type azurerm_batch_account = {
  allowed_authentication_modes : string prop list option; [@option]
      (** allowed_authentication_modes *)
  encryption : azurerm_batch_account__encryption list option;
      [@option]
      (** encryption *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  pool_allocation_mode : string prop option; [@option]
      (** pool_allocation_mode *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_authentication_mode : string prop option; [@option]
      (** storage_account_authentication_mode *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  storage_account_node_identity : string prop option; [@option]
      (** storage_account_node_identity *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_batch_account__identity list;
  key_vault_reference :
    azurerm_batch_account__key_vault_reference list;
  network_profile : azurerm_batch_account__network_profile list;
  timeouts : azurerm_batch_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_account *)

let azurerm_batch_account ?allowed_authentication_modes ?encryption
    ?id ?pool_allocation_mode ?public_network_access_enabled
    ?storage_account_authentication_mode ?storage_account_id
    ?storage_account_node_identity ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity ~key_vault_reference
    ~network_profile __resource_id =
  let __resource_type = "azurerm_batch_account" in
  let __resource =
    {
      allowed_authentication_modes;
      encryption;
      id;
      location;
      name;
      pool_allocation_mode;
      public_network_access_enabled;
      resource_group_name;
      storage_account_authentication_mode;
      storage_account_id;
      storage_account_node_identity;
      tags;
      identity;
      key_vault_reference;
      network_profile;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_account __resource);
  ()
