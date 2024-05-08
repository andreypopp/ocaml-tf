(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backup__hourly = {
  interval : float prop;
  start_time : string prop;
  window_duration : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup__hourly) -> ()

let yojson_of_backup__hourly =
  (function
   | {
       interval = v_interval;
       start_time = v_start_time;
       window_duration = v_window_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_window_duration
         in
         ("window_duration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       `Assoc bnds
    : backup__hourly -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup__hourly

[@@@deriving.end]

type backup = {
  frequency : string prop;
  time : string prop option; [@option]
  hourly : backup__hourly list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup) -> ()

let yojson_of_backup =
  (function
   | { frequency = v_frequency; time = v_time; hourly = v_hourly } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_hourly then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backup__hourly) v_hourly
           in
           let bnd = "hourly", arg in
           bnd :: bnds
       in
       let bnds =
         match v_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       `Assoc bnds
    : backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup

[@@@deriving.end]

type retention_daily = { count : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_daily) -> ()

let yojson_of_retention_daily =
  (function
   | { count = v_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : retention_daily -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_daily

[@@@deriving.end]

type retention_monthly = {
  count : float prop;
  days : float prop list option; [@option]
  include_last_days : bool prop option; [@option]
  weekdays : string prop list option; [@option]
  weeks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_monthly) -> ()

let yojson_of_retention_monthly =
  (function
   | {
       count = v_count;
       days = v_days;
       include_last_days = v_include_last_days;
       weekdays = v_weekdays;
       weeks = v_weeks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weeks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "weeks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_weekdays with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "weekdays", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_last_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_last_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : retention_monthly -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_monthly

[@@@deriving.end]

type retention_weekly = {
  count : float prop;
  weekdays : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_weekly) -> ()

let yojson_of_retention_weekly =
  (function
   | { count = v_count; weekdays = v_weekdays } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_weekdays then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_weekdays
           in
           let bnd = "weekdays", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : retention_weekly -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_weekly

[@@@deriving.end]

type retention_yearly = {
  count : float prop;
  days : float prop list option; [@option]
  include_last_days : bool prop option; [@option]
  months : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  weekdays : string prop list option; [@option]
  weeks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_yearly) -> ()

let yojson_of_retention_yearly =
  (function
   | {
       count = v_count;
       days = v_days;
       include_last_days = v_include_last_days;
       months = v_months;
       weekdays = v_weekdays;
       weeks = v_weeks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weeks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "weeks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_weekdays with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "weekdays", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_months then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_months
           in
           let bnd = "months", arg in
           bnd :: bnds
       in
       let bnds =
         match v_include_last_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_last_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : retention_yearly -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_yearly

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

type azurerm_backup_policy_file_share = {
  id : string prop option; [@option]
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timezone : string prop option; [@option]
  backup : backup list; [@default []] [@yojson_drop_default ( = )]
  retention_daily : retention_daily list;
      [@default []] [@yojson_drop_default ( = )]
  retention_monthly : retention_monthly list;
      [@default []] [@yojson_drop_default ( = )]
  retention_weekly : retention_weekly list;
      [@default []] [@yojson_drop_default ( = )]
  retention_yearly : retention_yearly list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_backup_policy_file_share) -> ()

let yojson_of_azurerm_backup_policy_file_share =
  (function
   | {
       id = v_id;
       name = v_name;
       recovery_vault_name = v_recovery_vault_name;
       resource_group_name = v_resource_group_name;
       timezone = v_timezone;
       backup = v_backup;
       retention_daily = v_retention_daily;
       retention_monthly = v_retention_monthly;
       retention_weekly = v_retention_weekly;
       retention_yearly = v_retention_yearly;
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
         if [] = v_retention_yearly then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_yearly)
               v_retention_yearly
           in
           let bnd = "retention_yearly", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_retention_weekly then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_weekly)
               v_retention_weekly
           in
           let bnd = "retention_weekly", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_retention_monthly then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_monthly)
               v_retention_monthly
           in
           let bnd = "retention_monthly", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_retention_daily then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_daily)
               v_retention_daily
           in
           let bnd = "retention_daily", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backup then bnds
         else
           let arg = (yojson_of_list yojson_of_backup) v_backup in
           let bnd = "backup", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_vault_name
         in
         ("recovery_vault_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_backup_policy_file_share ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_backup_policy_file_share

[@@@deriving.end]

let backup__hourly ~interval ~start_time ~window_duration () :
    backup__hourly =
  { interval; start_time; window_duration }

let backup ?time ?(hourly = []) ~frequency () : backup =
  { frequency; time; hourly }

let retention_daily ~count () : retention_daily = { count }

let retention_monthly ?days ?include_last_days ?weekdays ?weeks
    ~count () : retention_monthly =
  { count; days; include_last_days; weekdays; weeks }

let retention_weekly ~count ~weekdays () : retention_weekly =
  { count; weekdays }

let retention_yearly ?days ?include_last_days ?weekdays ?weeks ~count
    ~months () : retention_yearly =
  { count; days; include_last_days; months; weekdays; weeks }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_backup_policy_file_share ?id ?timezone
    ?(retention_monthly = []) ?(retention_weekly = [])
    ?(retention_yearly = []) ?timeouts ~name ~recovery_vault_name
    ~resource_group_name ~backup ~retention_daily () :
    azurerm_backup_policy_file_share =
  {
    id;
    name;
    recovery_vault_name;
    resource_group_name;
    timezone;
    backup;
    retention_daily;
    retention_monthly;
    retention_weekly;
    retention_yearly;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timezone : string prop;
}

let make ?id ?timezone ?(retention_monthly = [])
    ?(retention_weekly = []) ?(retention_yearly = []) ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~backup
    ~retention_daily __id =
  let __type = "azurerm_backup_policy_file_share" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       timezone = Prop.computed __type __id "timezone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_backup_policy_file_share
        (azurerm_backup_policy_file_share ?id ?timezone
           ~retention_monthly ~retention_weekly ~retention_yearly
           ?timeouts ~name ~recovery_vault_name ~resource_group_name
           ~backup ~retention_daily ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timezone ?(retention_monthly = [])
    ?(retention_weekly = []) ?(retention_yearly = []) ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~backup
    ~retention_daily __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timezone ~retention_monthly ~retention_weekly
      ~retention_yearly ?timeouts ~name ~recovery_vault_name
      ~resource_group_name ~backup ~retention_daily __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
