(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_shared_access_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_shared_access_policy__timeouts *)

type azurerm_iothub_shared_access_policy = {
  device_connect : bool prop option; [@option]  (** device_connect *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  name : string prop;  (** name *)
  registry_read : bool prop option; [@option]  (** registry_read *)
  registry_write : bool prop option; [@option]  (** registry_write *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_connect : bool prop option; [@option]
      (** service_connect *)
  timeouts : azurerm_iothub_shared_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_shared_access_policy *)

let azurerm_iothub_shared_access_policy ?device_connect ?id
    ?registry_read ?registry_write ?service_connect ?timeouts
    ~iothub_name ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_shared_access_policy" in
  let __resource =
    {
      device_connect;
      id;
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
