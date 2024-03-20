(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification_settings = {
  email : string prop option; [@option]  (** email *)
  enabled : bool prop;  (** enabled *)
  time_in_minutes : float prop option; [@option]
      (** time_in_minutes *)
  webhook_url : string prop option; [@option]  (** webhook_url *)
}
[@@deriving yojson_of]
(** notification_settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_test_global_vm_shutdown_schedule = {
  daily_recurrence_time : string prop;  (** daily_recurrence_time *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timezone : string prop;  (** timezone *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  notification_settings : notification_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_global_vm_shutdown_schedule *)

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
  daily_recurrence_time : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  virtual_machine_id : string prop;
}

let make ?enabled ?id ?tags ?timeouts ~daily_recurrence_time
    ~location ~timezone ~virtual_machine_id ~notification_settings
    __id =
  let __type = "azurerm_dev_test_global_vm_shutdown_schedule" in
  let __attrs =
    ({
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
