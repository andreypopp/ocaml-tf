(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type filter = {
  local_ip_address : string prop option; [@option]
      (** local_ip_address *)
  local_port : string prop option; [@option]  (** local_port *)
  protocol : string prop;  (** protocol *)
  remote_ip_address : string prop option; [@option]
      (** remote_ip_address *)
  remote_port : string prop option; [@option]  (** remote_port *)
}
[@@deriving yojson_of]
(** filter *)

type machine_scope = {
  exclude_instance_ids : string prop list option; [@option]
      (** exclude_instance_ids *)
  include_instance_ids : string prop list option; [@option]
      (** include_instance_ids *)
}
[@@deriving yojson_of]
(** machine_scope *)

type storage_location = {
  file_path : string prop option; [@option]  (** file_path *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
}
[@@deriving yojson_of]
(** storage_location *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_machine_scale_set_packet_capture = {
  id : string prop option; [@option]  (** id *)
  maximum_bytes_per_packet : float prop option; [@option]
      (** maximum_bytes_per_packet *)
  maximum_bytes_per_session : float prop option; [@option]
      (** maximum_bytes_per_session *)
  maximum_capture_duration_in_seconds : float prop option; [@option]
      (** maximum_capture_duration_in_seconds *)
  name : string prop;  (** name *)
  network_watcher_id : string prop;  (** network_watcher_id *)
  virtual_machine_scale_set_id : string prop;
      (** virtual_machine_scale_set_id *)
  filter : filter list;
  machine_scope : machine_scope list;
  storage_location : storage_location list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set_packet_capture *)

let filter ?local_ip_address ?local_port ?remote_ip_address
    ?remote_port ~protocol () : filter =
  {
    local_ip_address;
    local_port;
    protocol;
    remote_ip_address;
    remote_port;
  }

let machine_scope ?exclude_instance_ids ?include_instance_ids () :
    machine_scope =
  { exclude_instance_ids; include_instance_ids }

let storage_location ?file_path ?storage_account_id () :
    storage_location =
  { file_path; storage_account_id }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_virtual_machine_scale_set_packet_capture ?id
    ?maximum_bytes_per_packet ?maximum_bytes_per_session
    ?maximum_capture_duration_in_seconds ?timeouts ~name
    ~network_watcher_id ~virtual_machine_scale_set_id ~filter
    ~machine_scope ~storage_location () :
    azurerm_virtual_machine_scale_set_packet_capture =
  {
    id;
    maximum_bytes_per_packet;
    maximum_bytes_per_session;
    maximum_capture_duration_in_seconds;
    name;
    network_watcher_id;
    virtual_machine_scale_set_id;
    filter;
    machine_scope;
    storage_location;
    timeouts;
  }

type t = {
  id : string prop;
  maximum_bytes_per_packet : float prop;
  maximum_bytes_per_session : float prop;
  maximum_capture_duration_in_seconds : float prop;
  name : string prop;
  network_watcher_id : string prop;
  virtual_machine_scale_set_id : string prop;
}

let register ?tf_module ?id ?maximum_bytes_per_packet
    ?maximum_bytes_per_session ?maximum_capture_duration_in_seconds
    ?timeouts ~name ~network_watcher_id ~virtual_machine_scale_set_id
    ~filter ~machine_scope ~storage_location __resource_id =
  let __resource_type =
    "azurerm_virtual_machine_scale_set_packet_capture"
  in
  let __resource =
    azurerm_virtual_machine_scale_set_packet_capture ?id
      ?maximum_bytes_per_packet ?maximum_bytes_per_session
      ?maximum_capture_duration_in_seconds ?timeouts ~name
      ~network_watcher_id ~virtual_machine_scale_set_id ~filter
      ~machine_scope ~storage_location ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_scale_set_packet_capture
       __resource);
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
       virtual_machine_scale_set_id =
         Prop.computed __resource_type __resource_id
           "virtual_machine_scale_set_id";
     }
      : t)
  in
  __resource_attributes
