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

type daily_schedule = {
  hour : float prop;
  minute : float prop;
  snapshots_to_keep : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : daily_schedule) -> ()

let yojson_of_daily_schedule =
  (function
   | {
       hour = v_hour;
       minute = v_minute;
       snapshots_to_keep = v_snapshots_to_keep;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshots_to_keep
         in
         ("snapshots_to_keep", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute in
         ("minute", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour in
         ("hour", arg) :: bnds
       in
       `Assoc bnds
    : daily_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_daily_schedule

[@@@deriving.end]

type hourly_schedule = {
  minute : float prop;
  snapshots_to_keep : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hourly_schedule) -> ()

let yojson_of_hourly_schedule =
  (function
   | { minute = v_minute; snapshots_to_keep = v_snapshots_to_keep }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshots_to_keep
         in
         ("snapshots_to_keep", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute in
         ("minute", arg) :: bnds
       in
       `Assoc bnds
    : hourly_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hourly_schedule

[@@@deriving.end]

type monthly_schedule = {
  days_of_month : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hour : float prop;
  minute : float prop;
  snapshots_to_keep : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monthly_schedule) -> ()

let yojson_of_monthly_schedule =
  (function
   | {
       days_of_month = v_days_of_month;
       hour = v_hour;
       minute = v_minute;
       snapshots_to_keep = v_snapshots_to_keep;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshots_to_keep
         in
         ("snapshots_to_keep", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute in
         ("minute", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour in
         ("hour", arg) :: bnds
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
    : monthly_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monthly_schedule

[@@@deriving.end]

type weekly_schedule = {
  days_of_week : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hour : float prop;
  minute : float prop;
  snapshots_to_keep : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : weekly_schedule) -> ()

let yojson_of_weekly_schedule =
  (function
   | {
       days_of_week = v_days_of_week;
       hour = v_hour;
       minute = v_minute;
       snapshots_to_keep = v_snapshots_to_keep;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshots_to_keep
         in
         ("snapshots_to_keep", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute in
         ("minute", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour in
         ("hour", arg) :: bnds
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
       `Assoc bnds
    : weekly_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_weekly_schedule

[@@@deriving.end]

type azurerm_netapp_snapshot_policy = {
  account_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_snapshot_policy) -> ()

let yojson_of_azurerm_netapp_snapshot_policy =
  (function
   | {
       account_name = v_account_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_netapp_snapshot_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_snapshot_policy

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_netapp_snapshot_policy ?id ?timeouts ~account_name ~name
    ~resource_group_name () : azurerm_netapp_snapshot_policy =
  { account_name; id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  account_name : string prop;
  daily_schedule : daily_schedule list prop;
  enabled : bool prop;
  hourly_schedule : hourly_schedule list prop;
  id : string prop;
  location : string prop;
  monthly_schedule : monthly_schedule list prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  weekly_schedule : weekly_schedule list prop;
}

let make ?id ?timeouts ~account_name ~name ~resource_group_name __id
    =
  let __type = "azurerm_netapp_snapshot_policy" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       daily_schedule = Prop.computed __type __id "daily_schedule";
       enabled = Prop.computed __type __id "enabled";
       hourly_schedule = Prop.computed __type __id "hourly_schedule";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       monthly_schedule =
         Prop.computed __type __id "monthly_schedule";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       weekly_schedule = Prop.computed __type __id "weekly_schedule";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_snapshot_policy
        (azurerm_netapp_snapshot_policy ?id ?timeouts ~account_name
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
