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

type snapshot_schedule = {
  name : string prop;
  recurrence : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_schedule) -> ()

let yojson_of_snapshot_schedule =
  (function
   | {
       name = v_name;
       recurrence = v_recurrence;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_recurrence in
         ("recurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule

[@@@deriving.end]

type azurerm_data_share = {
  account_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_share) -> ()

let yojson_of_azurerm_data_share =
  (function
   | {
       account_id = v_account_id;
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_share -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_share

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_data_share ?id ?timeouts ~account_id ~name () :
    azurerm_data_share =
  { account_id; id; name; timeouts }

type t = {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  snapshot_schedule : snapshot_schedule list prop;
  terms : string prop;
}

let make ?id ?timeouts ~account_id ~name __id =
  let __type = "azurerm_data_share" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       snapshot_schedule =
         Prop.computed __type __id "snapshot_schedule";
       terms = Prop.computed __type __id "terms";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_share
        (azurerm_data_share ?id ?timeouts ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
