(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iothub_device_update_instance__diagnostic_storage_account = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_instance__diagnostic_storage_account *)

type azurerm_iothub_device_update_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_instance__timeouts *)

type azurerm_iothub_device_update_instance = {
  device_update_account_id : string;  (** device_update_account_id *)
  diagnostic_enabled : bool option; [@option]
      (** diagnostic_enabled *)
  iothub_id : string;  (** iothub_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  diagnostic_storage_account :
    azurerm_iothub_device_update_instance__diagnostic_storage_account
    list;
  timeouts : azurerm_iothub_device_update_instance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_instance *)

let azurerm_iothub_device_update_instance ?diagnostic_enabled ?tags
    ?timeouts ~device_update_account_id ~iothub_id ~name
    ~diagnostic_storage_account __resource_id =
  let __resource_type = "azurerm_iothub_device_update_instance" in
  let __resource =
    {
      device_update_account_id;
      diagnostic_enabled;
      iothub_id;
      name;
      tags;
      diagnostic_storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_device_update_instance __resource);
  ()
