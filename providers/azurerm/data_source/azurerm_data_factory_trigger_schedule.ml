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

type schedule__monthly = { week : float prop; weekday : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__monthly) -> ()

let yojson_of_schedule__monthly =
  (function
   | { week = v_week; weekday = v_weekday } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_weekday in
         ("weekday", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_week in
         ("week", arg) :: bnds
       in
       `Assoc bnds
    : schedule__monthly -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__monthly

[@@@deriving.end]

type schedule = {
  days_of_month : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  days_of_week : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hours : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  minutes : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monthly : schedule__monthly list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       days_of_month = v_days_of_month;
       days_of_week = v_days_of_week;
       hours = v_hours;
       minutes = v_minutes;
       monthly = v_monthly;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_monthly then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule__monthly) v_monthly
           in
           let bnd = "monthly", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_minutes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_minutes
           in
           let bnd = "minutes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hours then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_hours
           in
           let bnd = "hours", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_days_of_week then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_days_of_week
           in
           let bnd = "days_of_week", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_days_of_month then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_days_of_month
           in
           let bnd = "days_of_month", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type azurerm_data_factory_trigger_schedule = {
  data_factory_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_trigger_schedule) -> ()

let yojson_of_azurerm_data_factory_trigger_schedule =
  (function
   | {
       data_factory_id = v_data_factory_id;
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
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_trigger_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_trigger_schedule

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_data_factory_trigger_schedule ?id ?timeouts
    ~data_factory_id ~name () : azurerm_data_factory_trigger_schedule
    =
  { data_factory_id; id; name; timeouts }

type t = {
  tf_name : string;
  activated : bool prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  end_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  name : string prop;
  pipeline_name : string prop;
  schedule : schedule list prop;
  start_time : string prop;
  time_zone : string prop;
}

let make ?id ?timeouts ~data_factory_id ~name __id =
  let __type = "azurerm_data_factory_trigger_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       activated = Prop.computed __type __id "activated";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       end_time = Prop.computed __type __id "end_time";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       name = Prop.computed __type __id "name";
       pipeline_name = Prop.computed __type __id "pipeline_name";
       schedule = Prop.computed __type __id "schedule";
       start_time = Prop.computed __type __id "start_time";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_trigger_schedule
        (azurerm_data_factory_trigger_schedule ?id ?timeouts
           ~data_factory_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~data_factory_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~data_factory_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
