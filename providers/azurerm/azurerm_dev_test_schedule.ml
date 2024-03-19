(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type daily_recurrence = { time : string prop  (** time *) }
[@@deriving yojson_of]
(** daily_recurrence *)

type hourly_recurrence = { minute : float prop  (** minute *) }
[@@deriving yojson_of]
(** hourly_recurrence *)

type notification_settings = {
  status : string prop option; [@option]  (** status *)
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

type weekly_recurrence = {
  time : string prop;  (** time *)
  week_days : string prop list option; [@option]  (** week_days *)
}
[@@deriving yojson_of]
(** weekly_recurrence *)

type azurerm_dev_test_schedule = {
  id : string prop option; [@option]  (** id *)
  lab_name : string prop;  (** lab_name *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  task_type : string prop;  (** task_type *)
  time_zone_id : string prop;  (** time_zone_id *)
  daily_recurrence : daily_recurrence list;
  hourly_recurrence : hourly_recurrence list;
  notification_settings : notification_settings list;
  timeouts : timeouts option;
  weekly_recurrence : weekly_recurrence list;
}
[@@deriving yojson_of]
(** azurerm_dev_test_schedule *)

let daily_recurrence ~time () : daily_recurrence = { time }
let hourly_recurrence ~minute () : hourly_recurrence = { minute }

let notification_settings ?status ?time_in_minutes ?webhook_url () :
    notification_settings =
  { status; time_in_minutes; webhook_url }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let weekly_recurrence ?week_days ~time () : weekly_recurrence =
  { time; week_days }

let azurerm_dev_test_schedule ?id ?status ?tags ?timeouts ~lab_name
    ~location ~name ~resource_group_name ~task_type ~time_zone_id
    ~daily_recurrence ~hourly_recurrence ~notification_settings
    ~weekly_recurrence () : azurerm_dev_test_schedule =
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

let register ?tf_module ?id ?status ?tags ?timeouts ~lab_name
    ~location ~name ~resource_group_name ~task_type ~time_zone_id
    ~daily_recurrence ~hourly_recurrence ~notification_settings
    ~weekly_recurrence __resource_id =
  let __resource_type = "azurerm_dev_test_schedule" in
  let __resource =
    azurerm_dev_test_schedule ?id ?status ?tags ?timeouts ~lab_name
      ~location ~name ~resource_group_name ~task_type ~time_zone_id
      ~daily_recurrence ~hourly_recurrence ~notification_settings
      ~weekly_recurrence ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_schedule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       lab_name =
         Prop.computed __resource_type __resource_id "lab_name";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       task_type =
         Prop.computed __resource_type __resource_id "task_type";
       time_zone_id =
         Prop.computed __resource_type __resource_id "time_zone_id";
     }
      : t)
  in
  __resource_attributes
