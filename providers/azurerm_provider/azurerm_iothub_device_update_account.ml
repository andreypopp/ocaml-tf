(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_device_update_account__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_account__identity *)

type azurerm_iothub_device_update_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_account__timeouts *)

type azurerm_iothub_device_update_account = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string option; [@option]  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_iothub_device_update_account__identity list;
  timeouts : azurerm_iothub_device_update_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_account *)

let azurerm_iothub_device_update_account ?id
    ?public_network_access_enabled ?sku ?tags ?timeouts ~location
    ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_iothub_device_update_account" in
  let __resource =
    {
      id;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      sku;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_device_update_account __resource);
  ()
