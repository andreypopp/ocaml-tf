(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_device_update_instance__diagnostic_storage_account = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_instance__diagnostic_storage_account *)

type azurerm_iothub_device_update_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_instance__timeouts *)

type azurerm_iothub_device_update_instance = {
  device_update_account_id : string prop;
      (** device_update_account_id *)
  diagnostic_enabled : bool prop option; [@option]
      (** diagnostic_enabled *)
  id : string prop option; [@option]  (** id *)
  iothub_id : string prop;  (** iothub_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  diagnostic_storage_account :
    azurerm_iothub_device_update_instance__diagnostic_storage_account
    list;
  timeouts : azurerm_iothub_device_update_instance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_instance *)

type t = {
  device_update_account_id : string prop;
  diagnostic_enabled : bool prop;
  id : string prop;
  iothub_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let azurerm_iothub_device_update_instance ?diagnostic_enabled ?id
    ?tags ?timeouts ~device_update_account_id ~iothub_id ~name
    ~diagnostic_storage_account __resource_id =
  let __resource_type = "azurerm_iothub_device_update_instance" in
  let __resource =
    ({
       device_update_account_id;
       diagnostic_enabled;
       id;
       iothub_id;
       name;
       tags;
       diagnostic_storage_account;
       timeouts;
     }
      : azurerm_iothub_device_update_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_device_update_instance __resource);
  let __resource_attributes =
    ({
       device_update_account_id =
         Prop.computed __resource_type __resource_id
           "device_update_account_id";
       diagnostic_enabled =
         Prop.computed __resource_type __resource_id
           "diagnostic_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_id =
         Prop.computed __resource_type __resource_id "iothub_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
