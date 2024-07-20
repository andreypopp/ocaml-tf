(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_retention_rule__life_cycle = {
  data_store_type : string prop;
  duration : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_retention_rule__life_cycle) -> ()

let yojson_of_default_retention_rule__life_cycle =
  (function
   | { data_store_type = v_data_store_type; duration = v_duration }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_store_type
         in
         ("data_store_type", arg) :: bnds
       in
       `Assoc bnds
    : default_retention_rule__life_cycle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_retention_rule__life_cycle

[@@@deriving.end]

type default_retention_rule = {
  life_cycle : default_retention_rule__life_cycle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_retention_rule) -> ()

let yojson_of_default_retention_rule =
  (function
   | { life_cycle = v_life_cycle } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_life_cycle then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_retention_rule__life_cycle)
               v_life_cycle
           in
           let bnd = "life_cycle", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : default_retention_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_retention_rule

[@@@deriving.end]

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

type retention_rule__life_cycle = {
  data_store_type : string prop;
  duration : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_rule__life_cycle) -> ()

let yojson_of_retention_rule__life_cycle =
  (function
   | { data_store_type = v_data_store_type; duration = v_duration }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_store_type
         in
         ("data_store_type", arg) :: bnds
       in
       `Assoc bnds
    : retention_rule__life_cycle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_rule__life_cycle

[@@@deriving.end]

type retention_rule = {
  name : string prop;
  priority : float prop;
  criteria : retention_rule__criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  life_cycle : retention_rule__life_cycle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_rule) -> ()

let yojson_of_retention_rule =
  (function
   | {
       name = v_name;
       priority = v_priority;
       criteria = v_criteria;
       life_cycle = v_life_cycle;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_life_cycle then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_rule__life_cycle)
               v_life_cycle
           in
           let bnd = "life_cycle", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_criteria then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_rule__criteria)
               v_criteria
           in
           let bnd = "criteria", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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

type azurerm_data_protection_backup_policy_postgresql_flexible_server = {
  backup_repeating_time_intervals : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  name : string prop;
  time_zone : string prop option; [@option]
  vault_id : string prop;
  default_retention_rule : default_retention_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  retention_rule : retention_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_data_protection_backup_policy_postgresql_flexible_server) ->
  ()

let yojson_of_azurerm_data_protection_backup_policy_postgresql_flexible_server
    =
  (function
   | {
       backup_repeating_time_intervals =
         v_backup_repeating_time_intervals;
       id = v_id;
       name = v_name;
       time_zone = v_time_zone;
       vault_id = v_vault_id;
       default_retention_rule = v_default_retention_rule;
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
         if Stdlib.( = ) [] v_retention_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_rule)
               v_retention_rule
           in
           let bnd = "retention_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_retention_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_retention_rule)
               v_default_retention_rule
           in
           let bnd = "default_retention_rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
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
         if Stdlib.( = ) [] v_backup_repeating_time_intervals then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_backup_repeating_time_intervals
           in
           let bnd = "backup_repeating_time_intervals", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_protection_backup_policy_postgresql_flexible_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_data_protection_backup_policy_postgresql_flexible_server

[@@@deriving.end]

let default_retention_rule__life_cycle ~data_store_type ~duration ()
    : default_retention_rule__life_cycle =
  { data_store_type; duration }

let default_retention_rule ~life_cycle () : default_retention_rule =
  { life_cycle }

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

let retention_rule__life_cycle ~data_store_type ~duration () :
    retention_rule__life_cycle =
  { data_store_type; duration }

let retention_rule ~name ~priority ~criteria ~life_cycle () :
    retention_rule =
  { name; priority; criteria; life_cycle }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_policy_postgresql_flexible_server
    ?id ?time_zone ?(retention_rule = []) ?timeouts
    ~backup_repeating_time_intervals ~name ~vault_id
    ~default_retention_rule () :
    azurerm_data_protection_backup_policy_postgresql_flexible_server
    =
  {
    backup_repeating_time_intervals;
    id;
    name;
    time_zone;
    vault_id;
    default_retention_rule;
    retention_rule;
    timeouts;
  }

type t = {
  tf_name : string;
  backup_repeating_time_intervals : string list prop;
  id : string prop;
  name : string prop;
  time_zone : string prop;
  vault_id : string prop;
}

let make ?id ?time_zone ?(retention_rule = []) ?timeouts
    ~backup_repeating_time_intervals ~name ~vault_id
    ~default_retention_rule __id =
  let __type =
    "azurerm_data_protection_backup_policy_postgresql_flexible_server"
  in
  let __attrs =
    ({
       tf_name = __id;
       backup_repeating_time_intervals =
         Prop.computed __type __id "backup_repeating_time_intervals";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       time_zone = Prop.computed __type __id "time_zone";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_policy_postgresql_flexible_server
        (azurerm_data_protection_backup_policy_postgresql_flexible_server
           ?id ?time_zone ~retention_rule ?timeouts
           ~backup_repeating_time_intervals ~name ~vault_id
           ~default_retention_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?time_zone ?(retention_rule = [])
    ?timeouts ~backup_repeating_time_intervals ~name ~vault_id
    ~default_retention_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?time_zone ~retention_rule ?timeouts
      ~backup_repeating_time_intervals ~name ~vault_id
      ~default_retention_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
