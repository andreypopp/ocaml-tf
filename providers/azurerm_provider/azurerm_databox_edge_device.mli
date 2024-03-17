(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databox_edge_device__timeouts

type azurerm_databox_edge_device__device_properties = {
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

type azurerm_databox_edge_device

val azurerm_databox_edge_device :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_databox_edge_device__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  unit
