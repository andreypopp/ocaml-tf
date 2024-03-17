(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_packet_capture__filter = {
  local_ip_address : string option; [@option]
      (** local_ip_address *)
  local_port : string option; [@option]  (** local_port *)
  protocol : string;  (** protocol *)
  remote_ip_address : string option; [@option]
      (** remote_ip_address *)
  remote_port : string option; [@option]  (** remote_port *)
}
[@@deriving yojson_of]
(** azurerm_network_packet_capture__filter *)

type azurerm_network_packet_capture__storage_location = {
  file_path : string option; [@option]  (** file_path *)
  storage_account_id : string option; [@option]
      (** storage_account_id *)
  storage_path : string;  (** storage_path *)
}
[@@deriving yojson_of]
(** azurerm_network_packet_capture__storage_location *)

type azurerm_network_packet_capture__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_network_packet_capture__timeouts *)

type azurerm_network_packet_capture = {
  maximum_bytes_per_packet : float option; [@option]
      (** maximum_bytes_per_packet *)
  maximum_bytes_per_session : float option; [@option]
      (** maximum_bytes_per_session *)
  maximum_capture_duration : float option; [@option]
      (** maximum_capture_duration *)
  name : string;  (** name *)
  network_watcher_name : string;  (** network_watcher_name *)
  resource_group_name : string;  (** resource_group_name *)
  target_resource_id : string;  (** target_resource_id *)
  filter : azurerm_network_packet_capture__filter list;
  storage_location :
    azurerm_network_packet_capture__storage_location list;
  timeouts : azurerm_network_packet_capture__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_packet_capture *)

let azurerm_network_packet_capture ?maximum_bytes_per_packet
    ?maximum_bytes_per_session ?maximum_capture_duration ?timeouts
    ~name ~network_watcher_name ~resource_group_name
    ~target_resource_id ~filter ~storage_location __resource_id =
  let __resource_type = "azurerm_network_packet_capture" in
  let __resource =
    {
      maximum_bytes_per_packet;
      maximum_bytes_per_session;
      maximum_capture_duration;
      name;
      network_watcher_name;
      resource_group_name;
      target_resource_id;
      filter;
      storage_location;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_packet_capture __resource);
  ()
