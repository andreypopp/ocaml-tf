(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type return_tracking = {
  carrier_name : string prop;  (** carrier_name *)
  serial_number : string prop;  (** serial_number *)
  tracking_id : string prop;  (** tracking_id *)
  tracking_url : string prop;  (** tracking_url *)
}

type shipment_history = {
  additional_details : (string * string prop) list;
      (** additional_details *)
  comments : string prop;  (** comments *)
  last_update : string prop;  (** last_update *)
}

type shipment_tracking = {
  carrier_name : string prop;  (** carrier_name *)
  serial_number : string prop;  (** serial_number *)
  tracking_id : string prop;  (** tracking_id *)
  tracking_url : string prop;  (** tracking_url *)
}

type status = {
  additional_details : (string * string prop) list;
      (** additional_details *)
  comments : string prop;  (** comments *)
  info : string prop;  (** info *)
  last_update : string prop;  (** last_update *)
}

type contact

val contact :
  company_name:string prop ->
  emails:string prop list ->
  name:string prop ->
  phone_number:string prop ->
  unit ->
  contact

type shipment_address

val shipment_address :
  address:string prop list ->
  city:string prop ->
  country:string prop ->
  postal_code:string prop ->
  state:string prop ->
  unit ->
  shipment_address

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_databox_edge_order

val azurerm_databox_edge_order :
  ?id:string prop ->
  ?timeouts:timeouts ->
  device_name:string prop ->
  resource_group_name:string prop ->
  contact:contact list ->
  shipment_address:shipment_address list ->
  unit ->
  azurerm_databox_edge_order

val yojson_of_azurerm_databox_edge_order :
  azurerm_databox_edge_order -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  return_tracking : return_tracking list prop;
  serial_number : string prop;
  shipment_history : shipment_history list prop;
  shipment_tracking : shipment_tracking list prop;
  status : status list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  device_name:string prop ->
  resource_group_name:string prop ->
  contact:contact list ->
  shipment_address:shipment_address list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  device_name:string prop ->
  resource_group_name:string prop ->
  contact:contact list ->
  shipment_address:shipment_address list ->
  string ->
  t Tf_core.resource
