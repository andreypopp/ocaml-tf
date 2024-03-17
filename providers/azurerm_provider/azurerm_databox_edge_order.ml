(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_databox_edge_order__contact = {
  company_name : string prop;  (** company_name *)
  emails : string prop list;  (** emails *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order__contact *)

type azurerm_databox_edge_order__shipment_address = {
  address : string prop list;  (** address *)
  city : string prop;  (** city *)
  country : string prop;  (** country *)
  postal_code : string prop;  (** postal_code *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order__shipment_address *)

type azurerm_databox_edge_order__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order__timeouts *)

type azurerm_databox_edge_order__return_tracking = {
  carrier_name : string prop;  (** carrier_name *)
  serial_number : string prop;  (** serial_number *)
  tracking_id : string prop;  (** tracking_id *)
  tracking_url : string prop;  (** tracking_url *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_order__shipment_history = {
  additional_details : (string * string prop) list;
      (** additional_details *)
  comments : string prop;  (** comments *)
  last_update : string prop;  (** last_update *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_order__shipment_tracking = {
  carrier_name : string prop;  (** carrier_name *)
  serial_number : string prop;  (** serial_number *)
  tracking_id : string prop;  (** tracking_id *)
  tracking_url : string prop;  (** tracking_url *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_order__status = {
  additional_details : (string * string prop) list;
      (** additional_details *)
  comments : string prop;  (** comments *)
  info : string prop;  (** info *)
  last_update : string prop;  (** last_update *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_order = {
  device_name : string prop;  (** device_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  contact : azurerm_databox_edge_order__contact list;
  shipment_address :
    azurerm_databox_edge_order__shipment_address list;
  timeouts : azurerm_databox_edge_order__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order *)

let azurerm_databox_edge_order ?id ?timeouts ~device_name
    ~resource_group_name ~contact ~shipment_address __resource_id =
  let __resource_type = "azurerm_databox_edge_order" in
  let __resource =
    {
      device_name;
      id;
      resource_group_name;
      contact;
      shipment_address;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_databox_edge_order __resource);
  ()
