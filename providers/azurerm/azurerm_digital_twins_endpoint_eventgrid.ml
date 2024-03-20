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

type azurerm_digital_twins_endpoint_eventgrid = {
  dead_letter_storage_secret : string prop option; [@option]
  digital_twins_id : string prop;
  eventgrid_topic_endpoint : string prop;
  eventgrid_topic_primary_access_key : string prop;
  eventgrid_topic_secondary_access_key : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_digital_twins_endpoint_eventgrid) -> ()

let yojson_of_azurerm_digital_twins_endpoint_eventgrid =
  (function
   | {
       dead_letter_storage_secret = v_dead_letter_storage_secret;
       digital_twins_id = v_digital_twins_id;
       eventgrid_topic_endpoint = v_eventgrid_topic_endpoint;
       eventgrid_topic_primary_access_key =
         v_eventgrid_topic_primary_access_key;
       eventgrid_topic_secondary_access_key =
         v_eventgrid_topic_secondary_access_key;
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
             v_eventgrid_topic_secondary_access_key
         in
         ("eventgrid_topic_secondary_access_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_eventgrid_topic_primary_access_key
         in
         ("eventgrid_topic_primary_access_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_eventgrid_topic_endpoint
         in
         ("eventgrid_topic_endpoint", arg) :: bnds
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
    : azurerm_digital_twins_endpoint_eventgrid ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_digital_twins_endpoint_eventgrid

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_digital_twins_endpoint_eventgrid
    ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name () :
    azurerm_digital_twins_endpoint_eventgrid =
  {
    dead_letter_storage_secret;
    digital_twins_id;
    eventgrid_topic_endpoint;
    eventgrid_topic_primary_access_key;
    eventgrid_topic_secondary_access_key;
    id;
    name;
    timeouts;
  }

type t = {
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  eventgrid_topic_endpoint : string prop;
  eventgrid_topic_primary_access_key : string prop;
  eventgrid_topic_secondary_access_key : string prop;
  id : string prop;
  name : string prop;
}

let make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name __id =
  let __type = "azurerm_digital_twins_endpoint_eventgrid" in
  let __attrs =
    ({
       dead_letter_storage_secret =
         Prop.computed __type __id "dead_letter_storage_secret";
       digital_twins_id =
         Prop.computed __type __id "digital_twins_id";
       eventgrid_topic_endpoint =
         Prop.computed __type __id "eventgrid_topic_endpoint";
       eventgrid_topic_primary_access_key =
         Prop.computed __type __id
           "eventgrid_topic_primary_access_key";
       eventgrid_topic_secondary_access_key =
         Prop.computed __type __id
           "eventgrid_topic_secondary_access_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_digital_twins_endpoint_eventgrid
        (azurerm_digital_twins_endpoint_eventgrid
           ?dead_letter_storage_secret ?id ?timeouts
           ~digital_twins_id ~eventgrid_topic_endpoint
           ~eventgrid_topic_primary_access_key
           ~eventgrid_topic_secondary_access_key ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?dead_letter_storage_secret ?id ?timeouts
    ~digital_twins_id ~eventgrid_topic_endpoint
    ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name __id =
  let (r : _ Tf_core.resource) =
    make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
      ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
      ~eventgrid_topic_secondary_access_key ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
