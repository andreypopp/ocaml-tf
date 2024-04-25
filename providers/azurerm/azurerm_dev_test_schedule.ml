(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type daily_recurrence = { time : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : daily_recurrence) -> ()

let yojson_of_daily_recurrence =
  (function
   | { time = v_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time in
         ("time", arg) :: bnds
       in
       `Assoc bnds
    : daily_recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_daily_recurrence

[@@@deriving.end]

type hourly_recurrence = { minute : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : hourly_recurrence) -> ()

let yojson_of_hourly_recurrence =
  (function
   | { minute = v_minute } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute in
         ("minute", arg) :: bnds
       in
       `Assoc bnds
    : hourly_recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hourly_recurrence

[@@@deriving.end]

type notification_settings = {
  status : string prop option; [@option]
  time_in_minutes : float prop option; [@option]
  webhook_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_settings) -> ()

let yojson_of_notification_settings =
  (function
   | {
       status = v_status;
       time_in_minutes = v_time_in_minutes;
       webhook_url = v_webhook_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_webhook_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "webhook_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_time_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "time_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notification_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_settings

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

type weekly_recurrence = {
  time : string prop;
  week_days : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : weekly_recurrence) -> ()

let yojson_of_weekly_recurrence =
  (function
   | { time = v_time; week_days = v_week_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_time in
         ("time", arg) :: bnds
       in
       `Assoc bnds
    : weekly_recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_weekly_recurrence

[@@@deriving.end]

type azurerm_dev_test_schedule = {
  id : string prop option; [@option]
  lab_name : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  task_type : string prop;
  time_zone_id : string prop;
  daily_recurrence : daily_recurrence list;
  hourly_recurrence : hourly_recurrence list;
  notification_settings : notification_settings list;
  timeouts : timeouts option;
  weekly_recurrence : weekly_recurrence list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_test_schedule) -> ()

let yojson_of_azurerm_dev_test_schedule =
  (function
   | {
       id = v_id;
       lab_name = v_lab_name;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       status = v_status;
       tags = v_tags;
       task_type = v_task_type;
       time_zone_id = v_time_zone_id;
       daily_recurrence = v_daily_recurrence;
       hourly_recurrence = v_hourly_recurrence;
       notification_settings = v_notification_settings;
       timeouts = v_timeouts;
       weekly_recurrence = v_weekly_recurrence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_weekly_recurrence
             v_weekly_recurrence
         in
         ("weekly_recurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_notification_settings
             v_notification_settings
         in
         ("notification_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hourly_recurrence
             v_hourly_recurrence
         in
         ("hourly_recurrence", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_daily_recurrence
             v_daily_recurrence
         in
         ("daily_recurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone_id in
         ("time_zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_task_type in
         ("task_type", arg) :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
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
         let arg = yojson_of_prop yojson_of_string v_lab_name in
         ("lab_name", arg) :: bnds
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
    : azurerm_dev_test_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_test_schedule

[@@@deriving.end]

let daily_recurrence ~time () : daily_recurrence = { time }
let hourly_recurrence ~minute () : hourly_recurrence = { minute }

let notification_settings ?status ?time_in_minutes ?webhook_url () :
    notification_settings =
  { status; time_in_minutes; webhook_url }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let weekly_recurrence ?week_days ~time () : weekly_recurrence =
  { time; week_days }

let azurerm_dev_test_schedule ?id ?status ?tags
    ?(daily_recurrence = []) ?(hourly_recurrence = []) ?timeouts
    ?(weekly_recurrence = []) ~lab_name ~location ~name
    ~resource_group_name ~task_type ~time_zone_id
    ~notification_settings () : azurerm_dev_test_schedule =
  {
    id;
    lab_name;
    location;
    name;
    resource_group_name;
    status;
    tags;
    task_type;
    time_zone_id;
    daily_recurrence;
    hourly_recurrence;
    notification_settings;
    timeouts;
    weekly_recurrence;
  }

type t = {
  id : string prop;
  lab_name : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  task_type : string prop;
  time_zone_id : string prop;
}

let make ?id ?status ?tags ?(daily_recurrence = [])
    ?(hourly_recurrence = []) ?timeouts ?(weekly_recurrence = [])
    ~lab_name ~location ~name ~resource_group_name ~task_type
    ~time_zone_id ~notification_settings __id =
  let __type = "azurerm_dev_test_schedule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       lab_name = Prop.computed __type __id "lab_name";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       task_type = Prop.computed __type __id "task_type";
       time_zone_id = Prop.computed __type __id "time_zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_test_schedule
        (azurerm_dev_test_schedule ?id ?status ?tags
           ~daily_recurrence ~hourly_recurrence ?timeouts
           ~weekly_recurrence ~lab_name ~location ~name
           ~resource_group_name ~task_type ~time_zone_id
           ~notification_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ?tags ?(daily_recurrence = [])
    ?(hourly_recurrence = []) ?timeouts ?(weekly_recurrence = [])
    ~lab_name ~location ~name ~resource_group_name ~task_type
    ~time_zone_id ~notification_settings __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ?tags ~daily_recurrence ~hourly_recurrence
      ?timeouts ~weekly_recurrence ~lab_name ~location ~name
      ~resource_group_name ~task_type ~time_zone_id
      ~notification_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
