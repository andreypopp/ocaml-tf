(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type contact = {
  company_name : string prop;  (** company_name *)
  emails : string prop list;  (** emails *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** contact *)

type shipment_address = {
  address : string prop list;  (** address *)
  city : string prop;  (** city *)
  country : string prop;  (** country *)
  postal_code : string prop;  (** postal_code *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]
(** shipment_address *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type return_tracking = {
  carrier_name : string prop;  (** carrier_name *)
  serial_number : string prop;  (** serial_number *)
  tracking_id : string prop;  (** tracking_id *)
  tracking_url : string prop;  (** tracking_url *)
}
[@@deriving yojson_of]

type shipment_history = {
  additional_details : (string * string prop) list;
      (** additional_details *)
  comments : string prop;  (** comments *)
  last_update : string prop;  (** last_update *)
}
[@@deriving yojson_of]

type shipment_tracking = {
  carrier_name : string prop;  (** carrier_name *)
  serial_number : string prop;  (** serial_number *)
  tracking_id : string prop;  (** tracking_id *)
  tracking_url : string prop;  (** tracking_url *)
}
[@@deriving yojson_of]

type status = {
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
  contact : contact list;
  shipment_address : shipment_address list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databox_edge_order *)

let contact ~company_name ~emails ~name ~phone_number () : contact =
  { company_name; emails; name; phone_number }

let shipment_address ~address ~city ~country ~postal_code ~state () :
    shipment_address =
  { address; city; country; postal_code; state }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_databox_edge_order ?id ?timeouts ~device_name
    ~resource_group_name ~contact ~shipment_address () :
    azurerm_databox_edge_order =
  {
    device_name;
    id;
    resource_group_name;
    contact;
    shipment_address;
    timeouts;
  }

type t = {
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

let make ?id ?timeouts ~device_name ~resource_group_name ~contact
    ~shipment_address __id =
  let __type = "azurerm_databox_edge_order" in
  let __attrs =
    ({
       device_name = Prop.computed __type __id "device_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       return_tracking = Prop.computed __type __id "return_tracking";
       serial_number = Prop.computed __type __id "serial_number";
       shipment_history =
         Prop.computed __type __id "shipment_history";
       shipment_tracking =
         Prop.computed __type __id "shipment_tracking";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_databox_edge_order
        (azurerm_databox_edge_order ?id ?timeouts ~device_name
           ~resource_group_name ~contact ~shipment_address ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~device_name
    ~resource_group_name ~contact ~shipment_address __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~device_name ~resource_group_name ~contact
      ~shipment_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
