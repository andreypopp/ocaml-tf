(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databox_edge_order__contact
type azurerm_databox_edge_order__shipment_address
type azurerm_databox_edge_order__timeouts

type azurerm_databox_edge_order__return_tracking = {
  carrier_name : string prop;  (** carrier_name *)
  serial_number : string prop;  (** serial_number *)
  tracking_id : string prop;  (** tracking_id *)
  tracking_url : string prop;  (** tracking_url *)
}

type azurerm_databox_edge_order__shipment_history = {
  additional_details : (string * string prop) list;
      (** additional_details *)
  comments : string prop;  (** comments *)
  last_update : string prop;  (** last_update *)
}

type azurerm_databox_edge_order__shipment_tracking = {
  carrier_name : string prop;  (** carrier_name *)
  serial_number : string prop;  (** serial_number *)
  tracking_id : string prop;  (** tracking_id *)
  tracking_url : string prop;  (** tracking_url *)
}

type azurerm_databox_edge_order__status = {
  additional_details : (string * string prop) list;
      (** additional_details *)
  comments : string prop;  (** comments *)
  info : string prop;  (** info *)
  last_update : string prop;  (** last_update *)
}

type azurerm_databox_edge_order

type t = private {
  device_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  return_tracking :
    azurerm_databox_edge_order__return_tracking list prop;
  serial_number : string prop;
  shipment_history :
    azurerm_databox_edge_order__shipment_history list prop;
  shipment_tracking :
    azurerm_databox_edge_order__shipment_tracking list prop;
  status : azurerm_databox_edge_order__status list prop;
}

val azurerm_databox_edge_order :
  ?id:string prop ->
  ?timeouts:azurerm_databox_edge_order__timeouts ->
  device_name:string prop ->
  resource_group_name:string prop ->
  contact:azurerm_databox_edge_order__contact list ->
  shipment_address:azurerm_databox_edge_order__shipment_address list ->
  string ->
  t
