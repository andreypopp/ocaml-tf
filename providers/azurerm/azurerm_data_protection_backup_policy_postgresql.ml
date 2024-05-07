(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type retention_rule__criteria = {
  absolute_criteria : string prop option; [@option]
  days_of_week : string prop list option; [@option]
  months_of_year : string prop list option; [@option]
  scheduled_backup_times : string prop list option; [@option]
  weeks_of_month : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_rule__criteria) -> ()

let yojson_of_retention_rule__criteria =
  (function
   | {
       absolute_criteria = v_absolute_criteria;
       days_of_week = v_days_of_week;
       months_of_year = v_months_of_year;
       scheduled_backup_times = v_scheduled_backup_times;
       weeks_of_month = v_weeks_of_month;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weeks_of_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "weeks_of_month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scheduled_backup_times with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scheduled_backup_times", arg in
             bnd :: bnds
       in
       let bnds =
         match v_months_of_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "months_of_year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "days_of_week", arg in
             bnd :: bnds
       in
       let bnds =
         match v_absolute_criteria with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "absolute_criteria", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retention_rule__criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_rule__criteria

[@@@deriving.end]

type retention_rule = {
  duration : string prop;
  name : string prop;
  priority : float prop;
  criteria : retention_rule__criteria list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_rule) -> ()

let yojson_of_retention_rule =
  (function
   | {
       duration = v_duration;
       name = v_name;
       priority = v_priority;
       criteria = v_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_retention_rule__criteria
             v_criteria
         in
         ("criteria", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : retention_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_rule

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_data_protection_backup_policy_postgresql = {
  backup_repeating_time_intervals : string prop list;
  default_retention_duration : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  time_zone : string prop option; [@option]
  vault_name : string prop;
  retention_rule : retention_rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_protection_backup_policy_postgresql) -> ()

let yojson_of_azurerm_data_protection_backup_policy_postgresql =
  (function
   | {
       backup_repeating_time_intervals =
         v_backup_repeating_time_intervals;
       default_retention_duration = v_default_retention_duration;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       time_zone = v_time_zone;
       vault_name = v_vault_name;
       retention_rule = v_retention_rule;
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
           yojson_of_list yojson_of_retention_rule v_retention_rule
         in
         ("retention_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vault_name in
         ("vault_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_default_retention_duration
         in
         ("default_retention_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_backup_repeating_time_intervals
         in
         ("backup_repeating_time_intervals", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_protection_backup_policy_postgresql ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_protection_backup_policy_postgresql

[@@@deriving.end]

let retention_rule__criteria ?absolute_criteria ?days_of_week
    ?months_of_year ?scheduled_backup_times ?weeks_of_month () :
    retention_rule__criteria =
  {
    absolute_criteria;
    days_of_week;
    months_of_year;
    scheduled_backup_times;
    weeks_of_month;
  }

let retention_rule ~duration ~name ~priority ~criteria () :
    retention_rule =
  { duration; name; priority; criteria }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_policy_postgresql ?id ?time_zone
    ?(retention_rule = []) ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~resource_group_name
    ~vault_name () : azurerm_data_protection_backup_policy_postgresql
    =
  {
    backup_repeating_time_intervals;
    default_retention_duration;
    id;
    name;
    resource_group_name;
    time_zone;
    vault_name;
    retention_rule;
    timeouts;
  }

type t = {
  tf_name : string;
  backup_repeating_time_intervals : string list prop;
  default_retention_duration : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  time_zone : string prop;
  vault_name : string prop;
}

let make ?id ?time_zone ?(retention_rule = []) ?timeouts
    ~backup_repeating_time_intervals ~default_retention_duration
    ~name ~resource_group_name ~vault_name __id =
  let __type = "azurerm_data_protection_backup_policy_postgresql" in
  let __attrs =
    ({
       tf_name = __id;
       backup_repeating_time_intervals =
         Prop.computed __type __id "backup_repeating_time_intervals";
       default_retention_duration =
         Prop.computed __type __id "default_retention_duration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       time_zone = Prop.computed __type __id "time_zone";
       vault_name = Prop.computed __type __id "vault_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_policy_postgresql
        (azurerm_data_protection_backup_policy_postgresql ?id
           ?time_zone ~retention_rule ?timeouts
           ~backup_repeating_time_intervals
           ~default_retention_duration ~name ~resource_group_name
           ~vault_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?time_zone ?(retention_rule = [])
    ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~resource_group_name
    ~vault_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?time_zone ~retention_rule ?timeouts
      ~backup_repeating_time_intervals ~default_retention_duration
      ~name ~resource_group_name ~vault_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
