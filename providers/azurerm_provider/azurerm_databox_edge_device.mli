(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databox_edge_device__timeouts

type azurerm_databox_edge_device__device_properties = {
  capacity : float;  (** capacity *)
  configured_role_types : string list;  (** configured_role_types *)
  culture : string;  (** culture *)
  hcs_version : string;  (** hcs_version *)
  model : string;  (** model *)
  node_count : float;  (** node_count *)
  serial_number : string;  (** serial_number *)
  software_version : string;  (** software_version *)
  status : string;  (** status *)
  time_zone : string;  (** time_zone *)
  type_ : string; [@key "type"]  (** type *)
}

type azurerm_databox_edge_device

val azurerm_databox_edge_device :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_databox_edge_device__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
