(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_security_device_group__allow_rule = {
  connection_from_ips_not_allowed : string prop list option;
      [@option]
      (** connection_from_ips_not_allowed *)
  connection_to_ips_not_allowed : string prop list option; [@option]
      (** connection_to_ips_not_allowed *)
  local_users_not_allowed : string prop list option; [@option]
      (** local_users_not_allowed *)
  processes_not_allowed : string prop list option; [@option]
      (** processes_not_allowed *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group__allow_rule *)

type azurerm_iot_security_device_group__range_rule = {
  duration : string prop;  (** duration *)
  max : float prop;  (** max *)
  min : float prop;  (** min *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group__range_rule *)

type azurerm_iot_security_device_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group__timeouts *)

type azurerm_iot_security_device_group = {
  id : string prop option; [@option]  (** id *)
  iothub_id : string prop;  (** iothub_id *)
  name : string prop;  (** name *)
  allow_rule : azurerm_iot_security_device_group__allow_rule list;
  range_rule : azurerm_iot_security_device_group__range_rule list;
  timeouts : azurerm_iot_security_device_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group *)

type t = {
  id : string prop;
  iothub_id : string prop;
  name : string prop;
}

let azurerm_iot_security_device_group ?id ?timeouts ~iothub_id ~name
    ~allow_rule ~range_rule __resource_id =
  let __resource_type = "azurerm_iot_security_device_group" in
  let __resource =
    ({ id; iothub_id; name; allow_rule; range_rule; timeouts }
      : azurerm_iot_security_device_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_security_device_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       iothub_id =
         Prop.computed __resource_type __resource_id "iothub_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
