(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monthly_occurrence = {
  day : string prop;
  occurrence : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monthly_occurrence) -> ()

let yojson_of_monthly_occurrence =
  (function
   | { day = v_day; occurrence = v_occurrence } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_occurrence in
         ("occurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : monthly_occurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monthly_occurrence

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

type azurerm_automation_schedule = {
  automation_account_name : string prop;
  description : string prop option; [@option]
  expiry_time : string prop option; [@option]
  frequency : string prop;
  id : string prop option; [@option]
  interval : float prop option; [@option]
  month_days : float prop list option; [@option]
  name : string prop;
  resource_group_name : string prop;
  start_time : string prop option; [@option]
  timezone : string prop option; [@option]
  week_days : string prop list option; [@option]
  monthly_occurrence : monthly_occurrence list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_schedule) -> ()

let yojson_of_azurerm_automation_schedule =
  (function
   | {
       automation_account_name = v_automation_account_name;
       description = v_description;
       expiry_time = v_expiry_time;
       frequency = v_frequency;
       id = v_id;
       interval = v_interval;
       month_days = v_month_days;
       name = v_name;
       resource_group_name = v_resource_group_name;
       start_time = v_start_time;
       timezone = v_timezone;
       week_days = v_week_days;
       monthly_occurrence = v_monthly_occurrence;
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
           yojson_of_list yojson_of_monthly_occurrence
             v_monthly_occurrence
         in
         ("monthly_occurrence", arg) :: bnds
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
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_month_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "month_days", arg in
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
       let bnds =
         match v_expiry_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiry_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_schedule

[@@@deriving.end]

let monthly_occurrence ~day ~occurrence () : monthly_occurrence =
  { day; occurrence }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_schedule ?description ?expiry_time ?id
    ?interval ?month_days ?start_time ?timezone ?week_days
    ?(monthly_occurrence = []) ?timeouts ~automation_account_name
    ~frequency ~name ~resource_group_name () :
    azurerm_automation_schedule =
  {
    automation_account_name;
    description;
    expiry_time;
    frequency;
    id;
    interval;
    month_days;
    name;
    resource_group_name;
    start_time;
    timezone;
    week_days;
    monthly_occurrence;
    timeouts;
  }

type t = {
  tf_name : string;
  automation_account_name : string prop;
  description : string prop;
  expiry_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  month_days : float list prop;
  name : string prop;
  resource_group_name : string prop;
  start_time : string prop;
  timezone : string prop;
  week_days : string list prop;
}

let make ?description ?expiry_time ?id ?interval ?month_days
    ?start_time ?timezone ?week_days ?(monthly_occurrence = [])
    ?timeouts ~automation_account_name ~frequency ~name
    ~resource_group_name __id =
  let __type = "azurerm_automation_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       description = Prop.computed __type __id "description";
       expiry_time = Prop.computed __type __id "expiry_time";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       month_days = Prop.computed __type __id "month_days";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       start_time = Prop.computed __type __id "start_time";
       timezone = Prop.computed __type __id "timezone";
       week_days = Prop.computed __type __id "week_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_schedule
        (azurerm_automation_schedule ?description ?expiry_time ?id
           ?interval ?month_days ?start_time ?timezone ?week_days
           ~monthly_occurrence ?timeouts ~automation_account_name
           ~frequency ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?expiry_time ?id ?interval
    ?month_days ?start_time ?timezone ?week_days
    ?(monthly_occurrence = []) ?timeouts ~automation_account_name
    ~frequency ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?expiry_time ?id ?interval ?month_days
      ?start_time ?timezone ?week_days ~monthly_occurrence ?timeouts
      ~automation_account_name ~frequency ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
