(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_machine_packet_capture__filter = {
  local_ip_address : string prop option; [@option]
      (** local_ip_address *)
  local_port : string prop option; [@option]  (** local_port *)
  protocol : string prop;  (** protocol *)
  remote_ip_address : string prop option; [@option]
      (** remote_ip_address *)
  remote_port : string prop option; [@option]  (** remote_port *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_packet_capture__filter *)

type azurerm_virtual_machine_packet_capture__storage_location = {
  file_path : string prop option; [@option]  (** file_path *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  storage_path : string prop;  (** storage_path *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_packet_capture__storage_location *)

type azurerm_virtual_machine_packet_capture__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_packet_capture__timeouts *)

type azurerm_virtual_machine_packet_capture = {
  id : string prop option; [@option]  (** id *)
  maximum_bytes_per_packet : float prop option; [@option]
      (** maximum_bytes_per_packet *)
  maximum_bytes_per_session : float prop option; [@option]
      (** maximum_bytes_per_session *)
  maximum_capture_duration_in_seconds : float prop option; [@option]
      (** maximum_capture_duration_in_seconds *)
  name : string prop;  (** name *)
  network_watcher_id : string prop;  (** network_watcher_id *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  filter : azurerm_virtual_machine_packet_capture__filter list;
  storage_location :
    azurerm_virtual_machine_packet_capture__storage_location list;
  timeouts : azurerm_virtual_machine_packet_capture__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_packet_capture *)

type t = {
  id : string prop;
  maximum_bytes_per_packet : float prop;
  maximum_bytes_per_session : float prop;
  maximum_capture_duration_in_seconds : float prop;
  name : string prop;
  network_watcher_id : string prop;
  virtual_machine_id : string prop;
}

let azurerm_virtual_machine_packet_capture ?id
    ?maximum_bytes_per_packet ?maximum_bytes_per_session
    ?maximum_capture_duration_in_seconds ?timeouts ~name
    ~network_watcher_id ~virtual_machine_id ~filter ~storage_location
    __resource_id =
  let __resource_type = "azurerm_virtual_machine_packet_capture" in
  let __resource =
    ({
       id;
       maximum_bytes_per_packet;
       maximum_bytes_per_session;
       maximum_capture_duration_in_seconds;
       name;
       network_watcher_id;
       virtual_machine_id;
       filter;
       storage_location;
       timeouts;
     }
      : azurerm_virtual_machine_packet_capture)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_packet_capture __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       maximum_bytes_per_packet =
         Prop.computed __resource_type __resource_id
           "maximum_bytes_per_packet";
       maximum_bytes_per_session =
         Prop.computed __resource_type __resource_id
           "maximum_bytes_per_session";
       maximum_capture_duration_in_seconds =
         Prop.computed __resource_type __resource_id
           "maximum_capture_duration_in_seconds";
       name = Prop.computed __resource_type __resource_id "name";
       network_watcher_id =
         Prop.computed __resource_type __resource_id
           "network_watcher_id";
       virtual_machine_id =
         Prop.computed __resource_type __resource_id
           "virtual_machine_id";
     }
      : t)
  in
  __resource_attributes
