(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  enabled : bool prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  daily_schedule : daily_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hourly_schedule : hourly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monthly_schedule : monthly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  weekly_schedule : weekly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_snapshot_policy) -> ()

let yojson_of_azurerm_netapp_snapshot_policy =
  (function
   | {
       account_name = v_account_name;
       enabled = v_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       daily_schedule = v_daily_schedule;
       hourly_schedule = v_hourly_schedule;
       monthly_schedule = v_monthly_schedule;
       timeouts = v_timeouts;
       weekly_schedule = v_weekly_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weekly_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_weekly_schedule)
               v_weekly_schedule
           in
           let bnd = "weekly_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monthly_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monthly_schedule)
               v_monthly_schedule
           in
           let bnd = "monthly_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hourly_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hourly_schedule)
               v_hourly_schedule
           in
           let bnd = "hourly_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_daily_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_daily_schedule)
               v_daily_schedule
           in
           let bnd = "daily_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
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

let daily_schedule ~hour ~minute ~snapshots_to_keep () :
    daily_schedule =
  { hour; minute; snapshots_to_keep }

let hourly_schedule ~minute ~snapshots_to_keep () : hourly_schedule =
  { minute; snapshots_to_keep }

let monthly_schedule ~days_of_month ~hour ~minute ~snapshots_to_keep
    () : monthly_schedule =
  { days_of_month; hour; minute; snapshots_to_keep }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let weekly_schedule ~days_of_week ~hour ~minute ~snapshots_to_keep ()
    : weekly_schedule =
  { days_of_week; hour; minute; snapshots_to_keep }

let azurerm_netapp_snapshot_policy ?id ?tags ?(daily_schedule = [])
    ?(hourly_schedule = []) ?(monthly_schedule = []) ?timeouts
    ?(weekly_schedule = []) ~account_name ~enabled ~location ~name
    ~resource_group_name () : azurerm_netapp_snapshot_policy =
  {
    account_name;
    enabled;
    id;
    location;
    name;
    resource_group_name;
    tags;
    daily_schedule;
    hourly_schedule;
    monthly_schedule;
    timeouts;
    weekly_schedule;
  }

type t = {
  tf_name : string;
  account_name : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ?(daily_schedule = []) ?(hourly_schedule = [])
    ?(monthly_schedule = []) ?timeouts ?(weekly_schedule = [])
    ~account_name ~enabled ~location ~name ~resource_group_name __id
    =
  let __type = "azurerm_netapp_snapshot_policy" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_snapshot_policy
        (azurerm_netapp_snapshot_policy ?id ?tags ~daily_schedule
           ~hourly_schedule ~monthly_schedule ?timeouts
           ~weekly_schedule ~account_name ~enabled ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(daily_schedule = [])
    ?(hourly_schedule = []) ?(monthly_schedule = []) ?timeouts
    ?(weekly_schedule = []) ~account_name ~enabled ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~daily_schedule ~hourly_schedule ~monthly_schedule
      ?timeouts ~weekly_schedule ~account_name ~enabled ~location
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
