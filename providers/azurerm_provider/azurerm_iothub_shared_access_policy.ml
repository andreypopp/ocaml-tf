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

type t = {
  device_connect : bool prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  registry_read : bool prop;
  registry_write : bool prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  service_connect : bool prop;
}

let azurerm_iothub_shared_access_policy ?device_connect ?id
    ?registry_read ?registry_write ?service_connect ?timeouts
    ~iothub_name ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_shared_access_policy" in
  let __resource =
    ({
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
      : azurerm_iothub_shared_access_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_shared_access_policy __resource);
  let __resource_attributes =
    ({
       device_connect =
         Prop.computed __resource_type __resource_id "device_connect";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_name =
         Prop.computed __resource_type __resource_id "iothub_name";
       name = Prop.computed __resource_type __resource_id "name";
       primary_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_connection_string";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       registry_read =
         Prop.computed __resource_type __resource_id "registry_read";
       registry_write =
         Prop.computed __resource_type __resource_id "registry_write";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_connection_string";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
       service_connect =
         Prop.computed __resource_type __resource_id
           "service_connect";
     }
      : t)
  in
  __resource_attributes
