(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification_settings = {
  email : string prop option; [@option]
  enabled : bool prop;
  time_in_minutes : float prop option; [@option]
  webhook_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_settings) -> ()

let yojson_of_notification_settings =
  (function
   | {
       email = v_email;
       enabled = v_enabled;
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
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

type azurerm_dev_test_global_vm_shutdown_schedule = {
  daily_recurrence_time : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timezone : string prop;
  virtual_machine_id : string prop;
  notification_settings : notification_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_test_global_vm_shutdown_schedule) -> ()

let yojson_of_azurerm_dev_test_global_vm_shutdown_schedule =
  (function
   | {
       daily_recurrence_time = v_daily_recurrence_time;
       enabled = v_enabled;
       id = v_id;
       location = v_location;
       tags = v_tags;
       timezone = v_timezone;
       virtual_machine_id = v_virtual_machine_id;
       notification_settings = v_notification_settings;
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
         if Stdlib.( = ) [] v_notification_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_settings)
               v_notification_settings
           in
           let bnd = "notification_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_id
         in
         ("virtual_machine_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timezone in
         ("timezone", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_daily_recurrence_time
         in
         ("daily_recurrence_time", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_dev_test_global_vm_shutdown_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_test_global_vm_shutdown_schedule

[@@@deriving.end]

let notification_settings ?email ?time_in_minutes ?webhook_url
    ~enabled () : notification_settings =
  { email; enabled; time_in_minutes; webhook_url }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_test_global_vm_shutdown_schedule ?enabled ?id ?tags
    ?timeouts ~daily_recurrence_time ~location ~timezone
    ~virtual_machine_id ~notification_settings () :
    azurerm_dev_test_global_vm_shutdown_schedule =
  {
    daily_recurrence_time;
    enabled;
    id;
    location;
    tags;
    timezone;
    virtual_machine_id;
    notification_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  daily_recurrence_time : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  tags : string Tf_core.assoc prop;
  timezone : string prop;
  virtual_machine_id : string prop;
}

let make ?enabled ?id ?tags ?timeouts ~daily_recurrence_time
    ~location ~timezone ~virtual_machine_id ~notification_settings
    __id =
  let __type = "azurerm_dev_test_global_vm_shutdown_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       daily_recurrence_time =
         Prop.computed __type __id "daily_recurrence_time";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       tags = Prop.computed __type __id "tags";
       timezone = Prop.computed __type __id "timezone";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_test_global_vm_shutdown_schedule
        (azurerm_dev_test_global_vm_shutdown_schedule ?enabled ?id
           ?tags ?timeouts ~daily_recurrence_time ~location ~timezone
           ~virtual_machine_id ~notification_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?tags ?timeouts
    ~daily_recurrence_time ~location ~timezone ~virtual_machine_id
    ~notification_settings __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?tags ?timeouts ~daily_recurrence_time
      ~location ~timezone ~virtual_machine_id ~notification_settings
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
