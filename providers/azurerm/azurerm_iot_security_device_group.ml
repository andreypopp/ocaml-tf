(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type allow_rule = {
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
(** allow_rule *)

type range_rule = {
  duration : string prop;  (** duration *)
  max : float prop;  (** max *)
  min : float prop;  (** min *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** range_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iot_security_device_group = {
  id : string prop option; [@option]  (** id *)
  iothub_id : string prop;  (** iothub_id *)
  name : string prop;  (** name *)
  allow_rule : allow_rule list;
  range_rule : range_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_security_device_group *)

let allow_rule ?connection_from_ips_not_allowed
    ?connection_to_ips_not_allowed ?local_users_not_allowed
    ?processes_not_allowed () : allow_rule =
  {
    connection_from_ips_not_allowed;
    connection_to_ips_not_allowed;
    local_users_not_allowed;
    processes_not_allowed;
  }

let range_rule ~duration ~max ~min ~type_ () : range_rule =
  { duration; max; min; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_security_device_group ?id ?timeouts ~iothub_id ~name
    ~allow_rule ~range_rule () : azurerm_iot_security_device_group =
  { id; iothub_id; name; allow_rule; range_rule; timeouts }

type t = {
  id : string prop;
  iothub_id : string prop;
  name : string prop;
}

let register ?tf_module ?id ?timeouts ~iothub_id ~name ~allow_rule
    ~range_rule __resource_id =
  let __resource_type = "azurerm_iot_security_device_group" in
  let __resource =
    azurerm_iot_security_device_group ?id ?timeouts ~iothub_id ~name
      ~allow_rule ~range_rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
