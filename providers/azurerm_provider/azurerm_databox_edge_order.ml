(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_databox_edge_order__contact = {
  company_name : string;  (** company_name *)
  emails : string list;  (** emails *)
  name : string;  (** name *)
  phone_number : string;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order__contact *)

type azurerm_databox_edge_order__shipment_address = {
  address : string list;  (** address *)
  city : string;  (** city *)
  country : string;  (** country *)
  postal_code : string;  (** postal_code *)
  state : string;  (** state *)
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order__shipment_address *)

type azurerm_databox_edge_order__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order__timeouts *)

type azurerm_databox_edge_order__return_tracking = {
  carrier_name : string;  (** carrier_name *)
  serial_number : string;  (** serial_number *)
  tracking_id : string;  (** tracking_id *)
  tracking_url : string;  (** tracking_url *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_order__shipment_history = {
  additional_details : (string * string) list;
      (** additional_details *)
  comments : string;  (** comments *)
  last_update : string;  (** last_update *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_order__shipment_tracking = {
  carrier_name : string;  (** carrier_name *)
  serial_number : string;  (** serial_number *)
  tracking_id : string;  (** tracking_id *)
  tracking_url : string;  (** tracking_url *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_order__status = {
  additional_details : (string * string) list;
      (** additional_details *)
  comments : string;  (** comments *)
  info : string;  (** info *)
  last_update : string;  (** last_update *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_order = {
  device_name : string;  (** device_name *)
  resource_group_name : string;  (** resource_group_name *)
  contact : azurerm_databox_edge_order__contact list;
  shipment_address :
    azurerm_databox_edge_order__shipment_address list;
  timeouts : azurerm_databox_edge_order__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order *)

let azurerm_databox_edge_order ?timeouts ~device_name
    ~resource_group_name ~contact ~shipment_address __resource_id =
  let __resource_type = "azurerm_databox_edge_order" in
  let __resource =
    {
      device_name;
      resource_group_name;
      contact;
      shipment_address;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_databox_edge_order __resource);
  ()
