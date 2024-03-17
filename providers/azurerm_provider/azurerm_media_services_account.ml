(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_services_account__encryption__managed_identity = {
  use_system_assigned_identity : bool prop option; [@option]
      (** use_system_assigned_identity *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__encryption__managed_identity *)

type azurerm_media_services_account__encryption = {
  current_key_identifier : string prop;
      (** current_key_identifier *)
  key_vault_key_identifier : string prop option; [@option]
      (** key_vault_key_identifier *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  managed_identity :
    azurerm_media_services_account__encryption__managed_identity list;
}
[@@deriving yojson_of]
(** azurerm_media_services_account__encryption *)

type azurerm_media_services_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__identity *)

type azurerm_media_services_account__key_delivery_access_control = {
  default_action : string prop option; [@option]
      (** default_action *)
  ip_allow_list : string prop list option; [@option]
      (** ip_allow_list *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__key_delivery_access_control *)

type azurerm_media_services_account__storage_account__managed_identity = {
  use_system_assigned_identity : bool prop option; [@option]
      (** use_system_assigned_identity *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__storage_account__managed_identity *)

type azurerm_media_services_account__storage_account = {
  id : string prop;  (** id *)
  is_primary : bool prop option; [@option]  (** is_primary *)
  managed_identity :
    azurerm_media_services_account__storage_account__managed_identity
    list;
}
[@@deriving yojson_of]
(** azurerm_media_services_account__storage_account *)

type azurerm_media_services_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__timeouts *)

type azurerm_media_services_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_authentication_type : string prop option; [@option]
      (** storage_authentication_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  encryption : azurerm_media_services_account__encryption list;
  identity : azurerm_media_services_account__identity list;
  key_delivery_access_control :
    azurerm_media_services_account__key_delivery_access_control list;
  storage_account :
    azurerm_media_services_account__storage_account list;
  timeouts : azurerm_media_services_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_services_account *)

let azurerm_media_services_account ?id ?public_network_access_enabled
    ?storage_authentication_type ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity
    ~key_delivery_access_control ~storage_account __resource_id =
  let __resource_type = "azurerm_media_services_account" in
  let __resource =
    {
      id;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      storage_authentication_type;
      tags;
      encryption;
      identity;
      key_delivery_access_control;
      storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_services_account __resource);
  ()
