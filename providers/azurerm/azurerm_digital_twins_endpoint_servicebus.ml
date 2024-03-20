(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_digital_twins_endpoint_servicebus = {
  dead_letter_storage_secret : string prop option; [@option]
  digital_twins_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  servicebus_primary_connection_string : string prop;
  servicebus_secondary_connection_string : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_digital_twins_endpoint_servicebus) -> ()

let yojson_of_azurerm_digital_twins_endpoint_servicebus =
  (function
   | {
       dead_letter_storage_secret = v_dead_letter_storage_secret;
       digital_twins_id = v_digital_twins_id;
       id = v_id;
       name = v_name;
       servicebus_primary_connection_string =
         v_servicebus_primary_connection_string;
       servicebus_secondary_connection_string =
         v_servicebus_secondary_connection_string;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_servicebus_secondary_connection_string
         in
         ("servicebus_secondary_connection_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_servicebus_primary_connection_string
         in
         ("servicebus_primary_connection_string", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_digital_twins_id
         in
         ("digital_twins_id", arg) :: bnds
       in
       let bnds =
         match v_dead_letter_storage_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dead_letter_storage_secret", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_digital_twins_endpoint_servicebus ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_digital_twins_endpoint_servicebus

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_digital_twins_endpoint_servicebus
    ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id ~name
    ~servicebus_primary_connection_string
    ~servicebus_secondary_connection_string () :
    azurerm_digital_twins_endpoint_servicebus =
  {
    dead_letter_storage_secret;
    digital_twins_id;
    id;
    name;
    servicebus_primary_connection_string;
    servicebus_secondary_connection_string;
    timeouts;
  }

type t = {
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  id : string prop;
  name : string prop;
  servicebus_primary_connection_string : string prop;
  servicebus_secondary_connection_string : string prop;
}

let make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~name ~servicebus_primary_connection_string
    ~servicebus_secondary_connection_string __id =
  let __type = "azurerm_digital_twins_endpoint_servicebus" in
  let __attrs =
    ({
       dead_letter_storage_secret =
         Prop.computed __type __id "dead_letter_storage_secret";
       digital_twins_id =
         Prop.computed __type __id "digital_twins_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       servicebus_primary_connection_string =
         Prop.computed __type __id
           "servicebus_primary_connection_string";
       servicebus_secondary_connection_string =
         Prop.computed __type __id
           "servicebus_secondary_connection_string";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_digital_twins_endpoint_servicebus
        (azurerm_digital_twins_endpoint_servicebus
           ?dead_letter_storage_secret ?id ?timeouts
           ~digital_twins_id ~name
           ~servicebus_primary_connection_string
           ~servicebus_secondary_connection_string ());
    attrs = __attrs;
  }

let register ?tf_module ?dead_letter_storage_secret ?id ?timeouts
    ~digital_twins_id ~name ~servicebus_primary_connection_string
    ~servicebus_secondary_connection_string __id =
  let (r : _ Tf_core.resource) =
    make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
      ~name ~servicebus_primary_connection_string
      ~servicebus_secondary_connection_string __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
