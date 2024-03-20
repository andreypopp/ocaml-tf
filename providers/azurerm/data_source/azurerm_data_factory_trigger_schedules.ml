(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_data_factory_trigger_schedules = {
  data_factory_id : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_trigger_schedules) -> ()

let yojson_of_azurerm_data_factory_trigger_schedules =
  (function
   | {
       data_factory_id = v_data_factory_id;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_trigger_schedules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_trigger_schedules

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_data_factory_trigger_schedules ?id ?timeouts
    ~data_factory_id () : azurerm_data_factory_trigger_schedules =
  { data_factory_id; id; timeouts }

type t = {
  data_factory_id : string prop;
  id : string prop;
  items : string list prop;
}

let make ?id ?timeouts ~data_factory_id __id =
  let __type = "azurerm_data_factory_trigger_schedules" in
  let __attrs =
    ({
       data_factory_id = Prop.computed __type __id "data_factory_id";
       id = Prop.computed __type __id "id";
       items = Prop.computed __type __id "items";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_trigger_schedules
        (azurerm_data_factory_trigger_schedules ?id ?timeouts
           ~data_factory_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~data_factory_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~data_factory_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
