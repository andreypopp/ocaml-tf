(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type recurrence = {
  expiration_date : string prop;
  frequency : string prop;
  interval : float prop option; [@option]
  week_days : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence) -> ()

let yojson_of_recurrence =
  (function
   | {
       expiration_date = v_expiration_date;
       frequency = v_frequency;
       interval = v_interval;
       week_days = v_week_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_week_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "week_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_date
         in
         ("expiration_date", arg) :: bnds
       in
       `Assoc bnds
    : recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence

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

type azurerm_lab_service_schedule = {
  id : string prop option; [@option]
  lab_id : string prop;
  name : string prop;
  notes : string prop option; [@option]
  start_time : string prop option; [@option]
  stop_time : string prop;
  time_zone : string prop;
  recurrence : recurrence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lab_service_schedule) -> ()

let yojson_of_azurerm_lab_service_schedule =
  (function
   | {
       id = v_id;
       lab_id = v_lab_id;
       name = v_name;
       notes = v_notes;
       start_time = v_start_time;
       stop_time = v_stop_time;
       time_zone = v_time_zone;
       recurrence = v_recurrence;
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
         if Stdlib.( = ) [] v_recurrence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurrence) v_recurrence
           in
           let bnd = "recurrence", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stop_time in
         ("stop_time", arg) :: bnds
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
         match v_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lab_id in
         ("lab_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lab_service_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lab_service_schedule

[@@@deriving.end]

let recurrence ?interval ?week_days ~expiration_date ~frequency () :
    recurrence =
  { expiration_date; frequency; interval; week_days }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lab_service_schedule ?id ?notes ?start_time
    ?(recurrence = []) ?timeouts ~lab_id ~name ~stop_time ~time_zone
    () : azurerm_lab_service_schedule =
  {
    id;
    lab_id;
    name;
    notes;
    start_time;
    stop_time;
    time_zone;
    recurrence;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  lab_id : string prop;
  name : string prop;
  notes : string prop;
  start_time : string prop;
  stop_time : string prop;
  time_zone : string prop;
}

let make ?id ?notes ?start_time ?(recurrence = []) ?timeouts ~lab_id
    ~name ~stop_time ~time_zone __id =
  let __type = "azurerm_lab_service_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       lab_id = Prop.computed __type __id "lab_id";
       name = Prop.computed __type __id "name";
       notes = Prop.computed __type __id "notes";
       start_time = Prop.computed __type __id "start_time";
       stop_time = Prop.computed __type __id "stop_time";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lab_service_schedule
        (azurerm_lab_service_schedule ?id ?notes ?start_time
           ~recurrence ?timeouts ~lab_id ~name ~stop_time ~time_zone
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?notes ?start_time ?(recurrence = [])
    ?timeouts ~lab_id ~name ~stop_time ~time_zone __id =
  let (r : _ Tf_core.resource) =
    make ?id ?notes ?start_time ~recurrence ?timeouts ~lab_id ~name
      ~stop_time ~time_zone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
