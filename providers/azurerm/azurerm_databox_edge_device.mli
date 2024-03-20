(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type device_properties = {
  capacity : float prop;  (** capacity *)
  configured_role_types : string prop list;
      (** configured_role_types *)
  culture : string prop;  (** culture *)
  hcs_version : string prop;  (** hcs_version *)
  model : string prop;  (** model *)
  node_count : float prop;  (** node_count *)
  serial_number : string prop;  (** serial_number *)
  software_version : string prop;  (** software_version *)
  status : string prop;  (** status *)
  time_zone : string prop;  (** time_zone *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_databox_edge_device

val azurerm_databox_edge_device :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_databox_edge_device

val yojson_of_azurerm_databox_edge_device :
  azurerm_databox_edge_device -> json

(** RESOURCE REGISTRATION *)

type t = private {
  device_properties : device_properties list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t Tf_core.resource
