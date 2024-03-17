(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iothub_shared_access_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_shared_access_policy__timeouts *)

type azurerm_iothub_shared_access_policy = {
  device_connect : bool option; [@option]  (** device_connect *)
  iothub_name : string;  (** iothub_name *)
  name : string;  (** name *)
  registry_read : bool option; [@option]  (** registry_read *)
  registry_write : bool option; [@option]  (** registry_write *)
  resource_group_name : string;  (** resource_group_name *)
  service_connect : bool option; [@option]  (** service_connect *)
  timeouts : azurerm_iothub_shared_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_shared_access_policy *)

let azurerm_iothub_shared_access_policy ?device_connect
    ?registry_read ?registry_write ?service_connect ?timeouts
    ~iothub_name ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_shared_access_policy" in
  let __resource =
    {
      device_connect;
      iothub_name;
      name;
      registry_read;
      registry_write;
      resource_group_name;
      service_connect;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_shared_access_policy __resource);
  ()
