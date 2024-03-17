(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databox_edge_order__contact
type azurerm_databox_edge_order__shipment_address
type azurerm_databox_edge_order__timeouts

type azurerm_databox_edge_order__return_tracking = {
  carrier_name : string;  (** carrier_name *)
  serial_number : string;  (** serial_number *)
  tracking_id : string;  (** tracking_id *)
  tracking_url : string;  (** tracking_url *)
}

type azurerm_databox_edge_order__shipment_history = {
  additional_details : (string * string) list;
      (** additional_details *)
  comments : string;  (** comments *)
  last_update : string;  (** last_update *)
}

type azurerm_databox_edge_order__shipment_tracking = {
  carrier_name : string;  (** carrier_name *)
  serial_number : string;  (** serial_number *)
  tracking_id : string;  (** tracking_id *)
  tracking_url : string;  (** tracking_url *)
}

type azurerm_databox_edge_order__status = {
  additional_details : (string * string) list;
      (** additional_details *)
  comments : string;  (** comments *)
  info : string;  (** info *)
  last_update : string;  (** last_update *)
}

type azurerm_databox_edge_order

val azurerm_databox_edge_order :
  ?id:string ->
  ?timeouts:azurerm_databox_edge_order__timeouts ->
  device_name:string ->
  resource_group_name:string ->
  contact:azurerm_databox_edge_order__contact list ->
  shipment_address:azurerm_databox_edge_order__shipment_address list ->
  string ->
  unit
