(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type protection_policy__backup = {
  frequency : string prop option; [@option]
  frequency_in_minutes : float prop option; [@option]
  time : string prop option; [@option]
  weekdays : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protection_policy__backup) -> ()

let yojson_of_protection_policy__backup =
  (function
   | {
       frequency = v_frequency;
       frequency_in_minutes = v_frequency_in_minutes;
       time = v_time;
       weekdays = v_weekdays;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frequency_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "frequency_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frequency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : protection_policy__backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection_policy__backup

[@@@deriving.end]

type protection_policy__retention_daily = { count : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : protection_policy__retention_daily) -> ()

let yojson_of_protection_policy__retention_daily =
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
    : protection_policy__retention_daily ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection_policy__retention_daily

[@@@deriving.end]

type protection_policy__retention_monthly = {
  count : float prop;
  format_type : string prop;
  monthdays : float prop list option; [@option]
  weekdays : string prop list option; [@option]
  weeks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protection_policy__retention_monthly) -> ()

let yojson_of_protection_policy__retention_monthly =
  (function
   | {
       count = v_count;
       format_type = v_format_type;
       monthdays = v_monthdays;
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
         match v_monthdays with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "monthdays", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format_type in
         ("format_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : protection_policy__retention_monthly ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection_policy__retention_monthly

[@@@deriving.end]

type protection_policy__retention_weekly = {
  count : float prop;
  weekdays : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protection_policy__retention_weekly) -> ()

let yojson_of_protection_policy__retention_weekly =
  (function
   | { count = v_count; weekdays = v_weekdays } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_weekdays
         in
         ("weekdays", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : protection_policy__retention_weekly ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection_policy__retention_weekly

[@@@deriving.end]

type protection_policy__retention_yearly = {
  count : float prop;
  format_type : string prop;
  monthdays : float prop list option; [@option]
  months : string prop list;
  weekdays : string prop list option; [@option]
  weeks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protection_policy__retention_yearly) -> ()

let yojson_of_protection_policy__retention_yearly =
  (function
   | {
       count = v_count;
       format_type = v_format_type;
       monthdays = v_monthdays;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_months
         in
         ("months", arg) :: bnds
       in
       let bnds =
         match v_monthdays with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "monthdays", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format_type in
         ("format_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : protection_policy__retention_yearly ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection_policy__retention_yearly

[@@@deriving.end]

type protection_policy__simple_retention = { count : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : protection_policy__simple_retention) -> ()

let yojson_of_protection_policy__simple_retention =
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
    : protection_policy__simple_retention ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection_policy__simple_retention

[@@@deriving.end]

type protection_policy = {
  policy_type : string prop;
  backup : protection_policy__backup list;
  retention_daily : protection_policy__retention_daily list;
  retention_monthly : protection_policy__retention_monthly list;
  retention_weekly : protection_policy__retention_weekly list;
  retention_yearly : protection_policy__retention_yearly list;
  simple_retention : protection_policy__simple_retention list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protection_policy) -> ()

let yojson_of_protection_policy =
  (function
   | {
       policy_type = v_policy_type;
       backup = v_backup;
       retention_daily = v_retention_daily;
       retention_monthly = v_retention_monthly;
       retention_weekly = v_retention_weekly;
       retention_yearly = v_retention_yearly;
       simple_retention = v_simple_retention;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_protection_policy__simple_retention
             v_simple_retention
         in
         ("simple_retention", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_protection_policy__retention_yearly
             v_retention_yearly
         in
         ("retention_yearly", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_protection_policy__retention_weekly
             v_retention_weekly
         in
         ("retention_weekly", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_protection_policy__retention_monthly
             v_retention_monthly
         in
         ("retention_monthly", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_protection_policy__retention_daily
             v_retention_daily
         in
         ("retention_daily", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_protection_policy__backup
             v_backup
         in
         ("backup", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_type in
         ("policy_type", arg) :: bnds
       in
       `Assoc bnds
    : protection_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection_policy

[@@@deriving.end]

type settings = {
  compression_enabled : bool prop option; [@option]
  time_zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       compression_enabled = v_compression_enabled;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         match v_compression_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "compression_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

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

type azurerm_backup_policy_vm_workload = {
  id : string prop option; [@option]
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  workload_type : string prop;
  protection_policy : protection_policy list;
  settings : settings list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_backup_policy_vm_workload) -> ()

let yojson_of_azurerm_backup_policy_vm_workload =
  (function
   | {
       id = v_id;
       name = v_name;
       recovery_vault_name = v_recovery_vault_name;
       resource_group_name = v_resource_group_name;
       workload_type = v_workload_type;
       protection_policy = v_protection_policy;
       settings = v_settings;
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
         let arg = yojson_of_list yojson_of_settings v_settings in
         ("settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_protection_policy
             v_protection_policy
         in
         ("protection_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workload_type in
         ("workload_type", arg) :: bnds
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
    : azurerm_backup_policy_vm_workload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_backup_policy_vm_workload

[@@@deriving.end]

let protection_policy__backup ?frequency ?frequency_in_minutes ?time
    ?weekdays () : protection_policy__backup =
  { frequency; frequency_in_minutes; time; weekdays }

let protection_policy__retention_daily ~count () :
    protection_policy__retention_daily =
  { count }

let protection_policy__retention_monthly ?monthdays ?weekdays ?weeks
    ~count ~format_type () : protection_policy__retention_monthly =
  { count; format_type; monthdays; weekdays; weeks }

let protection_policy__retention_weekly ~count ~weekdays () :
    protection_policy__retention_weekly =
  { count; weekdays }

let protection_policy__retention_yearly ?monthdays ?weekdays ?weeks
    ~count ~format_type ~months () :
    protection_policy__retention_yearly =
  { count; format_type; monthdays; months; weekdays; weeks }

let protection_policy__simple_retention ~count () :
    protection_policy__simple_retention =
  { count }

let protection_policy ?(retention_daily = [])
    ?(retention_monthly = []) ?(retention_weekly = [])
    ?(retention_yearly = []) ?(simple_retention = []) ~policy_type
    ~backup () : protection_policy =
  {
    policy_type;
    backup;
    retention_daily;
    retention_monthly;
    retention_weekly;
    retention_yearly;
    simple_retention;
  }

let settings ?compression_enabled ~time_zone () : settings =
  { compression_enabled; time_zone }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_backup_policy_vm_workload ?id ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~workload_type
    ~protection_policy ~settings () :
    azurerm_backup_policy_vm_workload =
  {
    id;
    name;
    recovery_vault_name;
    resource_group_name;
    workload_type;
    protection_policy;
    settings;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  workload_type : string prop;
}

let make ?id ?timeouts ~name ~recovery_vault_name
    ~resource_group_name ~workload_type ~protection_policy ~settings
    __id =
  let __type = "azurerm_backup_policy_vm_workload" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       workload_type = Prop.computed __type __id "workload_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_backup_policy_vm_workload
        (azurerm_backup_policy_vm_workload ?id ?timeouts ~name
           ~recovery_vault_name ~resource_group_name ~workload_type
           ~protection_policy ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_name
    ~resource_group_name ~workload_type ~protection_policy ~settings
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_vault_name
      ~resource_group_name ~workload_type ~protection_policy
      ~settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
