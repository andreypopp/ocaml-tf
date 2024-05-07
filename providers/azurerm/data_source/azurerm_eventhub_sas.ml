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

type azurerm_eventhub_sas = {
  connection_string : string prop;
  expiry : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_eventhub_sas) -> ()

let yojson_of_azurerm_eventhub_sas =
  (function
   | {
       connection_string = v_connection_string;
       expiry = v_expiry;
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
         let arg = yojson_of_prop yojson_of_string v_expiry in
         ("expiry", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_eventhub_sas -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventhub_sas

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_eventhub_sas ?id ?timeouts ~connection_string ~expiry ()
    : azurerm_eventhub_sas =
  { connection_string; expiry; id; timeouts }

type t = {
  tf_name : string;
  connection_string : string prop;
  expiry : string prop;
  id : string prop;
  sas : string prop;
}

let make ?id ?timeouts ~connection_string ~expiry __id =
  let __type = "azurerm_eventhub_sas" in
  let __attrs =
    ({
       tf_name = __id;
       connection_string =
         Prop.computed __type __id "connection_string";
       expiry = Prop.computed __type __id "expiry";
       id = Prop.computed __type __id "id";
       sas = Prop.computed __type __id "sas";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_sas
        (azurerm_eventhub_sas ?id ?timeouts ~connection_string
           ~expiry ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~connection_string ~expiry __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~connection_string ~expiry __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
