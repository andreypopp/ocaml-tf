(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_media_services_account__encryption__managed_identity = {
  use_system_assigned_identity : bool option; [@option]
      (** use_system_assigned_identity *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__encryption__managed_identity *)

type azurerm_media_services_account__encryption = {
  current_key_identifier : string;  (** current_key_identifier *)
  key_vault_key_identifier : string option; [@option]
      (** key_vault_key_identifier *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  managed_identity :
    azurerm_media_services_account__encryption__managed_identity list;
}
[@@deriving yojson_of]
(** azurerm_media_services_account__encryption *)

type azurerm_media_services_account__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__identity *)

type azurerm_media_services_account__key_delivery_access_control = {
  default_action : string option; [@option]  (** default_action *)
  ip_allow_list : string list option; [@option]  (** ip_allow_list *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__key_delivery_access_control *)

type azurerm_media_services_account__storage_account__managed_identity = {
  use_system_assigned_identity : bool option; [@option]
      (** use_system_assigned_identity *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__storage_account__managed_identity *)

type azurerm_media_services_account__storage_account = {
  id : string;  (** id *)
  is_primary : bool option; [@option]  (** is_primary *)
  managed_identity :
    azurerm_media_services_account__storage_account__managed_identity
    list;
}
[@@deriving yojson_of]
(** azurerm_media_services_account__storage_account *)

type azurerm_media_services_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account__timeouts *)

type azurerm_media_services_account = {
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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

let azurerm_media_services_account ?public_network_access_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name ~encryption
    ~identity ~key_delivery_access_control ~storage_account
    __resource_id =
  let __resource_type = "azurerm_media_services_account" in
  let __resource =
    {
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
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
