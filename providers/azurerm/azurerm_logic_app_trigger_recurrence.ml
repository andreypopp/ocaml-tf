(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type schedule = {
  at_these_hours : float prop list option; [@option]
  at_these_minutes : float prop list option; [@option]
  on_these_days : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       at_these_hours = v_at_these_hours;
       at_these_minutes = v_at_these_minutes;
       on_these_days = v_on_these_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_on_these_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "on_these_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_at_these_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "at_these_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_at_these_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "at_these_hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

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

type azurerm_logic_app_trigger_recurrence = {
  frequency : string prop;
  id : string prop option; [@option]
  interval : float prop;
  logic_app_id : string prop;
  name : string prop;
  start_time : string prop option; [@option]
  time_zone : string prop option; [@option]
  schedule : schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logic_app_trigger_recurrence) -> ()

let yojson_of_azurerm_logic_app_trigger_recurrence =
  (function
   | {
       frequency = v_frequency;
       id = v_id;
       interval = v_interval;
       logic_app_id = v_logic_app_id;
       name = v_name;
       start_time = v_start_time;
       time_zone = v_time_zone;
       schedule = v_schedule;
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
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule) v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_logic_app_id in
         ("logic_app_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_logic_app_trigger_recurrence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_trigger_recurrence

[@@@deriving.end]

let schedule ?at_these_hours ?at_these_minutes ?on_these_days () :
    schedule =
  { at_these_hours; at_these_minutes; on_these_days }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_trigger_recurrence ?id ?start_time ?time_zone
    ?(schedule = []) ?timeouts ~frequency ~interval ~logic_app_id
    ~name () : azurerm_logic_app_trigger_recurrence =
  {
    frequency;
    id;
    interval;
    logic_app_id;
    name;
    start_time;
    time_zone;
    schedule;
    timeouts;
  }

type t = {
  tf_name : string;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  logic_app_id : string prop;
  name : string prop;
  start_time : string prop;
  time_zone : string prop;
}

let make ?id ?start_time ?time_zone ?(schedule = []) ?timeouts
    ~frequency ~interval ~logic_app_id ~name __id =
  let __type = "azurerm_logic_app_trigger_recurrence" in
  let __attrs =
    ({
       tf_name = __id;
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       logic_app_id = Prop.computed __type __id "logic_app_id";
       name = Prop.computed __type __id "name";
       start_time = Prop.computed __type __id "start_time";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_trigger_recurrence
        (azurerm_logic_app_trigger_recurrence ?id ?start_time
           ?time_zone ~schedule ?timeouts ~frequency ~interval
           ~logic_app_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?start_time ?time_zone ?(schedule = [])
    ?timeouts ~frequency ~interval ~logic_app_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?start_time ?time_zone ~schedule ?timeouts ~frequency
      ~interval ~logic_app_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
