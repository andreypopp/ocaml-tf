(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type contact = {
  company_name : string prop;
  emails : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  phone_number : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : contact) -> ()

let yojson_of_contact =
  (function
   | {
       company_name = v_company_name;
       emails = v_emails;
       name = v_name;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_emails then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_emails
           in
           let bnd = "emails", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_company_name in
         ("company_name", arg) :: bnds
       in
       `Assoc bnds
    : contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact

[@@@deriving.end]

type shipment_address = {
  address : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  city : string prop;
  country : string prop;
  postal_code : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shipment_address) -> ()

let yojson_of_shipment_address =
  (function
   | {
       address = v_address;
       city = v_city;
       country = v_country;
       postal_code = v_postal_code;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_postal_code in
         ("postal_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country in
         ("country", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_city in
         ("city", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_address then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_address
           in
           let bnd = "address", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : shipment_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shipment_address

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type return_tracking = {
  carrier_name : string prop;
  serial_number : string prop;
  tracking_id : string prop;
  tracking_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_tracking) -> ()

let yojson_of_return_tracking =
  (function
   | {
       carrier_name = v_carrier_name;
       serial_number = v_serial_number;
       tracking_id = v_tracking_id;
       tracking_url = v_tracking_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tracking_url in
         ("tracking_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tracking_id in
         ("tracking_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_serial_number in
         ("serial_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_carrier_name in
         ("carrier_name", arg) :: bnds
       in
       `Assoc bnds
    : return_tracking -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_tracking

[@@@deriving.end]

type shipment_history = {
  additional_details : (string * string prop) list;
  comments : string prop;
  last_update : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shipment_history) -> ()

let yojson_of_shipment_history =
  (function
   | {
       additional_details = v_additional_details;
       comments = v_comments;
       last_update = v_last_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_update in
         ("last_update", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comments in
         ("comments", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_additional_details
         in
         ("additional_details", arg) :: bnds
       in
       `Assoc bnds
    : shipment_history -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shipment_history

[@@@deriving.end]

type shipment_tracking = {
  carrier_name : string prop;
  serial_number : string prop;
  tracking_id : string prop;
  tracking_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shipment_tracking) -> ()

let yojson_of_shipment_tracking =
  (function
   | {
       carrier_name = v_carrier_name;
       serial_number = v_serial_number;
       tracking_id = v_tracking_id;
       tracking_url = v_tracking_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tracking_url in
         ("tracking_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tracking_id in
         ("tracking_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_serial_number in
         ("serial_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_carrier_name in
         ("carrier_name", arg) :: bnds
       in
       `Assoc bnds
    : shipment_tracking -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shipment_tracking

[@@@deriving.end]

type status = {
  additional_details : (string * string prop) list;
  comments : string prop;
  info : string prop;
  last_update : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       additional_details = v_additional_details;
       comments = v_comments;
       info = v_info;
       last_update = v_last_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_update in
         ("last_update", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_info in
         ("info", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comments in
         ("comments", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_additional_details
         in
         ("additional_details", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type azurerm_databox_edge_order = {
  device_name : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  contact : contact list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shipment_address : shipment_address list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_databox_edge_order) -> ()

let yojson_of_azurerm_databox_edge_order =
  (function
   | {
       device_name = v_device_name;
       id = v_id;
       resource_group_name = v_resource_group_name;
       contact = v_contact;
       shipment_address = v_shipment_address;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_shipment_address then bnds
         else
           let arg =
             (yojson_of_list yojson_of_shipment_address)
               v_shipment_address
           in
           let bnd = "shipment_address", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_contact then bnds
         else
           let arg = (yojson_of_list yojson_of_contact) v_contact in
           let bnd = "contact", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_databox_edge_order -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_databox_edge_order

[@@@deriving.end]

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

let make ?id ?timeouts ~device_name ~resource_group_name ~contact
    ~shipment_address __id =
  let __type = "azurerm_databox_edge_order" in
  let __attrs =
    ({
       tf_name = __id;
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
