(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type release_criteria__recurrence__schedule__monthly = {
  week : float prop;
  weekday : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : release_criteria__recurrence__schedule__monthly) -> ()

let yojson_of_release_criteria__recurrence__schedule__monthly =
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
    : release_criteria__recurrence__schedule__monthly ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_release_criteria__recurrence__schedule__monthly

[@@@deriving.end]

type release_criteria__recurrence__schedule = {
  hours : float prop list option; [@option]
  minutes : float prop list option; [@option]
  month_days : float prop list option; [@option]
  week_days : string prop list option; [@option]
  monthly : release_criteria__recurrence__schedule__monthly list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : release_criteria__recurrence__schedule) -> ()

let yojson_of_release_criteria__recurrence__schedule =
  (function
   | {
       hours = v_hours;
       minutes = v_minutes;
       month_days = v_month_days;
       week_days = v_week_days;
       monthly = v_monthly;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_monthly then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_release_criteria__recurrence__schedule__monthly)
               v_monthly
           in
           let bnd = "monthly", arg in
           bnd :: bnds
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
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : release_criteria__recurrence__schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_release_criteria__recurrence__schedule

[@@@deriving.end]

type release_criteria__recurrence = {
  end_time : string prop option; [@option]
  frequency : string prop;
  interval : float prop;
  start_time : string prop option; [@option]
  time_zone : string prop option; [@option]
  schedule : release_criteria__recurrence__schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : release_criteria__recurrence) -> ()

let yojson_of_release_criteria__recurrence =
  (function
   | {
       end_time = v_end_time;
       frequency = v_frequency;
       interval = v_interval;
       start_time = v_start_time;
       time_zone = v_time_zone;
       schedule = v_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_release_criteria__recurrence__schedule)
               v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
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
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : release_criteria__recurrence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_release_criteria__recurrence

[@@@deriving.end]

type release_criteria = {
  batch_size : float prop option; [@option]
  message_count : float prop option; [@option]
  recurrence : release_criteria__recurrence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : release_criteria) -> ()

let yojson_of_release_criteria =
  (function
   | {
       batch_size = v_batch_size;
       message_count = v_message_count;
       recurrence = v_recurrence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recurrence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_release_criteria__recurrence)
               v_recurrence
           in
           let bnd = "recurrence", arg in
           bnd :: bnds
       in
       let bnds =
         match v_message_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "message_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : release_criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_release_criteria

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

type azurerm_logic_app_integration_account_batch_configuration = {
  batch_group_name : string prop;
  id : string prop option; [@option]
  integration_account_name : string prop;
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  resource_group_name : string prop;
  release_criteria : release_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_logic_app_integration_account_batch_configuration) ->
  ()

let yojson_of_azurerm_logic_app_integration_account_batch_configuration
    =
  (function
   | {
       batch_group_name = v_batch_group_name;
       id = v_id;
       integration_account_name = v_integration_account_name;
       metadata = v_metadata;
       name = v_name;
       resource_group_name = v_resource_group_name;
       release_criteria = v_release_criteria;
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
         if Stdlib.( = ) [] v_release_criteria then bnds
         else
           let arg =
             (yojson_of_list yojson_of_release_criteria)
               v_release_criteria
           in
           let bnd = "release_criteria", arg in
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
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integration_account_name
         in
         ("integration_account_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_batch_group_name
         in
         ("batch_group_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_logic_app_integration_account_batch_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_logic_app_integration_account_batch_configuration

[@@@deriving.end]

let release_criteria__recurrence__schedule__monthly ~week ~weekday ()
    : release_criteria__recurrence__schedule__monthly =
  { week; weekday }

let release_criteria__recurrence__schedule ?hours ?minutes
    ?month_days ?week_days ~monthly () :
    release_criteria__recurrence__schedule =
  { hours; minutes; month_days; week_days; monthly }

let release_criteria__recurrence ?end_time ?start_time ?time_zone
    ?(schedule = []) ~frequency ~interval () :
    release_criteria__recurrence =
  { end_time; frequency; interval; start_time; time_zone; schedule }

let release_criteria ?batch_size ?message_count ?(recurrence = []) ()
    : release_criteria =
  { batch_size; message_count; recurrence }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_batch_configuration ?id
    ?metadata ?timeouts ~batch_group_name ~integration_account_name
    ~name ~resource_group_name ~release_criteria () :
    azurerm_logic_app_integration_account_batch_configuration =
  {
    batch_group_name;
    id;
    integration_account_name;
    metadata;
    name;
    resource_group_name;
    release_criteria;
    timeouts;
  }

type t = {
  tf_name : string;
  batch_group_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?metadata ?timeouts ~batch_group_name
    ~integration_account_name ~name ~resource_group_name
    ~release_criteria __id =
  let __type =
    "azurerm_logic_app_integration_account_batch_configuration"
  in
  let __attrs =
    ({
       tf_name = __id;
       batch_group_name =
         Prop.computed __type __id "batch_group_name";
       id = Prop.computed __type __id "id";
       integration_account_name =
         Prop.computed __type __id "integration_account_name";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_integration_account_batch_configuration
        (azurerm_logic_app_integration_account_batch_configuration
           ?id ?metadata ?timeouts ~batch_group_name
           ~integration_account_name ~name ~resource_group_name
           ~release_criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?timeouts ~batch_group_name
    ~integration_account_name ~name ~resource_group_name
    ~release_criteria __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?timeouts ~batch_group_name
      ~integration_account_name ~name ~resource_group_name
      ~release_criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
