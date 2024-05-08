(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type long_term_retention_policy = {
  immutable_backups_enabled : bool prop option; [@option]
  monthly_retention : string prop option; [@option]
  week_of_year : float prop option; [@option]
  weekly_retention : string prop option; [@option]
  yearly_retention : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : long_term_retention_policy) -> ()

let yojson_of_long_term_retention_policy =
  (function
   | {
       immutable_backups_enabled = v_immutable_backups_enabled;
       monthly_retention = v_monthly_retention;
       week_of_year = v_week_of_year;
       weekly_retention = v_weekly_retention;
       yearly_retention = v_yearly_retention;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_yearly_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "yearly_retention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_weekly_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weekly_retention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_week_of_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "week_of_year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monthly_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "monthly_retention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_immutable_backups_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "immutable_backups_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : long_term_retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_long_term_retention_policy

[@@@deriving.end]

type point_in_time_restore = {
  restore_point_in_time : string prop;
  source_database_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : point_in_time_restore) -> ()

let yojson_of_point_in_time_restore =
  (function
   | {
       restore_point_in_time = v_restore_point_in_time;
       source_database_id = v_source_database_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_database_id
         in
         ("source_database_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_restore_point_in_time
         in
         ("restore_point_in_time", arg) :: bnds
       in
       `Assoc bnds
    : point_in_time_restore -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_point_in_time_restore

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

type azurerm_mssql_managed_database = {
  id : string prop option; [@option]
  managed_instance_id : string prop;
  name : string prop;
  short_term_retention_days : float prop option; [@option]
  long_term_retention_policy : long_term_retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  point_in_time_restore : point_in_time_restore list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_managed_database) -> ()

let yojson_of_azurerm_mssql_managed_database =
  (function
   | {
       id = v_id;
       managed_instance_id = v_managed_instance_id;
       name = v_name;
       short_term_retention_days = v_short_term_retention_days;
       long_term_retention_policy = v_long_term_retention_policy;
       point_in_time_restore = v_point_in_time_restore;
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
         if Stdlib.( = ) [] v_point_in_time_restore then bnds
         else
           let arg =
             (yojson_of_list yojson_of_point_in_time_restore)
               v_point_in_time_restore
           in
           let bnd = "point_in_time_restore", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_long_term_retention_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_long_term_retention_policy)
               v_long_term_retention_policy
           in
           let bnd = "long_term_retention_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_short_term_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "short_term_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_instance_id
         in
         ("managed_instance_id", arg) :: bnds
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
    : azurerm_mssql_managed_database ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_managed_database

[@@@deriving.end]

let long_term_retention_policy ?immutable_backups_enabled
    ?monthly_retention ?week_of_year ?weekly_retention
    ?yearly_retention () : long_term_retention_policy =
  {
    immutable_backups_enabled;
    monthly_retention;
    week_of_year;
    weekly_retention;
    yearly_retention;
  }

let point_in_time_restore ~restore_point_in_time ~source_database_id
    () : point_in_time_restore =
  { restore_point_in_time; source_database_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_managed_database ?id ?short_term_retention_days
    ?(long_term_retention_policy = []) ?(point_in_time_restore = [])
    ?timeouts ~managed_instance_id ~name () :
    azurerm_mssql_managed_database =
  {
    id;
    managed_instance_id;
    name;
    short_term_retention_days;
    long_term_retention_policy;
    point_in_time_restore;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  managed_instance_id : string prop;
  name : string prop;
  short_term_retention_days : float prop;
}

let make ?id ?short_term_retention_days
    ?(long_term_retention_policy = []) ?(point_in_time_restore = [])
    ?timeouts ~managed_instance_id ~name __id =
  let __type = "azurerm_mssql_managed_database" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       managed_instance_id =
         Prop.computed __type __id "managed_instance_id";
       name = Prop.computed __type __id "name";
       short_term_retention_days =
         Prop.computed __type __id "short_term_retention_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_managed_database
        (azurerm_mssql_managed_database ?id
           ?short_term_retention_days ~long_term_retention_policy
           ~point_in_time_restore ?timeouts ~managed_instance_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?short_term_retention_days
    ?(long_term_retention_policy = []) ?(point_in_time_restore = [])
    ?timeouts ~managed_instance_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?short_term_retention_days ~long_term_retention_policy
      ~point_in_time_restore ?timeouts ~managed_instance_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
