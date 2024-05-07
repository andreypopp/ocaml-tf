(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  ?local_ip_address:string prop ->
  ?local_port:string prop ->
  ?remote_ip_address:string prop ->
  ?remote_port:string prop ->
  protocol:string prop ->
  unit ->
  filter

type storage_location

val storage_location :
  ?file_path:string prop ->
  ?storage_account_id:string prop ->
  unit ->
  storage_location

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_network_packet_capture

val azurerm_network_packet_capture :
  ?id:string prop ->
  ?maximum_bytes_per_packet:float prop ->
  ?maximum_bytes_per_session:float prop ->
  ?maximum_capture_duration:float prop ->
  ?filter:filter list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_watcher_name:string prop ->
  resource_group_name:string prop ->
  target_resource_id:string prop ->
  storage_location:storage_location list ->
  unit ->
  azurerm_network_packet_capture

val yojson_of_azurerm_network_packet_capture :
  azurerm_network_packet_capture -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  maximum_bytes_per_packet : float prop;
  maximum_bytes_per_session : float prop;
  maximum_capture_duration : float prop;
  name : string prop;
  network_watcher_name : string prop;
  resource_group_name : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?maximum_bytes_per_packet:float prop ->
  ?maximum_bytes_per_session:float prop ->
  ?maximum_capture_duration:float prop ->
  ?filter:filter list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_watcher_name:string prop ->
  resource_group_name:string prop ->
  target_resource_id:string prop ->
  storage_location:storage_location list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?maximum_bytes_per_packet:float prop ->
  ?maximum_bytes_per_session:float prop ->
  ?maximum_capture_duration:float prop ->
  ?filter:filter list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_watcher_name:string prop ->
  resource_group_name:string prop ->
  target_resource_id:string prop ->
  storage_location:storage_location list ->
  string ->
  t Tf_core.resource
