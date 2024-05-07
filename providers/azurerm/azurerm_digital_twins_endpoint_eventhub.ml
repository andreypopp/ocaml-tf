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

type azurerm_digital_twins_endpoint_eventhub = {
  dead_letter_storage_secret : string prop option; [@option]
  digital_twins_id : string prop;
  eventhub_primary_connection_string : string prop;
  eventhub_secondary_connection_string : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_digital_twins_endpoint_eventhub) -> ()

let yojson_of_azurerm_digital_twins_endpoint_eventhub =
  (function
   | {
       dead_letter_storage_secret = v_dead_letter_storage_secret;
       digital_twins_id = v_digital_twins_id;
       eventhub_primary_connection_string =
         v_eventhub_primary_connection_string;
       eventhub_secondary_connection_string =
         v_eventhub_secondary_connection_string;
       id = v_id;
       name = v_name;
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
           yojson_of_prop yojson_of_string
             v_eventhub_secondary_connection_string
         in
         ("eventhub_secondary_connection_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_eventhub_primary_connection_string
         in
         ("eventhub_primary_connection_string", arg) :: bnds
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
    : azurerm_digital_twins_endpoint_eventhub ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_digital_twins_endpoint_eventhub

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_digital_twins_endpoint_eventhub
    ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~eventhub_primary_connection_string
    ~eventhub_secondary_connection_string ~name () :
    azurerm_digital_twins_endpoint_eventhub =
  {
    dead_letter_storage_secret;
    digital_twins_id;
    eventhub_primary_connection_string;
    eventhub_secondary_connection_string;
    id;
    name;
    timeouts;
  }

type t = {
  tf_name : string;
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  eventhub_primary_connection_string : string prop;
  eventhub_secondary_connection_string : string prop;
  id : string prop;
  name : string prop;
}

let make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~eventhub_primary_connection_string
    ~eventhub_secondary_connection_string ~name __id =
  let __type = "azurerm_digital_twins_endpoint_eventhub" in
  let __attrs =
    ({
       tf_name = __id;
       dead_letter_storage_secret =
         Prop.computed __type __id "dead_letter_storage_secret";
       digital_twins_id =
         Prop.computed __type __id "digital_twins_id";
       eventhub_primary_connection_string =
         Prop.computed __type __id
           "eventhub_primary_connection_string";
       eventhub_secondary_connection_string =
         Prop.computed __type __id
           "eventhub_secondary_connection_string";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_digital_twins_endpoint_eventhub
        (azurerm_digital_twins_endpoint_eventhub
           ?dead_letter_storage_secret ?id ?timeouts
           ~digital_twins_id ~eventhub_primary_connection_string
           ~eventhub_secondary_connection_string ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?dead_letter_storage_secret ?id ?timeouts
    ~digital_twins_id ~eventhub_primary_connection_string
    ~eventhub_secondary_connection_string ~name __id =
  let (r : _ Tf_core.resource) =
    make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
      ~eventhub_primary_connection_string
      ~eventhub_secondary_connection_string ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
