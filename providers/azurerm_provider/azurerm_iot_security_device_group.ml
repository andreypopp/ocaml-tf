(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_security_device_group__allow_rule = {
  connection_from_ips_not_allowed : string list option; [@option]
      (** connection_from_ips_not_allowed *)
  connection_to_ips_not_allowed : string list option; [@option]
      (** connection_to_ips_not_allowed *)
  local_users_not_allowed : string list option; [@option]
      (** local_users_not_allowed *)
  processes_not_allowed : string list option; [@option]
      (** processes_not_allowed *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group__allow_rule *)

type azurerm_iot_security_device_group__range_rule = {
  duration : string;  (** duration *)
  max : float;  (** max *)
  min : float;  (** min *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group__range_rule *)

type azurerm_iot_security_device_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group__timeouts *)

type azurerm_iot_security_device_group = {
  iothub_id : string;  (** iothub_id *)
  name : string;  (** name *)
  allow_rule : azurerm_iot_security_device_group__allow_rule list;
  range_rule : azurerm_iot_security_device_group__range_rule list;
  timeouts : azurerm_iot_security_device_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group *)

let azurerm_iot_security_device_group ?timeouts ~iothub_id ~name
    ~allow_rule ~range_rule __resource_id =
  let __resource_type = "azurerm_iot_security_device_group" in
  let __resource =
    { iothub_id; name; allow_rule; range_rule; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_security_device_group __resource);
  ()
