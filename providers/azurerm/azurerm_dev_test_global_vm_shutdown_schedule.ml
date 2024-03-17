(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_global_vm_shutdown_schedule__notification_settings = {
  email : string prop option; [@option]  (** email *)
  enabled : bool prop;  (** enabled *)
  time_in_minutes : float prop option; [@option]
      (** time_in_minutes *)
  webhook_url : string prop option; [@option]  (** webhook_url *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_global_vm_shutdown_schedule__notification_settings *)

type azurerm_dev_test_global_vm_shutdown_schedule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_global_vm_shutdown_schedule__timeouts *)

type azurerm_dev_test_global_vm_shutdown_schedule = {
  daily_recurrence_time : string prop;  (** daily_recurrence_time *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timezone : string prop;  (** timezone *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  notification_settings :
    azurerm_dev_test_global_vm_shutdown_schedule__notification_settings
    list;
  timeouts :
    azurerm_dev_test_global_vm_shutdown_schedule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_global_vm_shutdown_schedule *)

type t = {
  daily_recurrence_time : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  virtual_machine_id : string prop;
}

let azurerm_dev_test_global_vm_shutdown_schedule ?enabled ?id ?tags
    ?timeouts ~daily_recurrence_time ~location ~timezone
    ~virtual_machine_id ~notification_settings __resource_id =
  let __resource_type =
    "azurerm_dev_test_global_vm_shutdown_schedule"
  in
  let __resource =
    ({
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
      : azurerm_dev_test_global_vm_shutdown_schedule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_global_vm_shutdown_schedule
       __resource);
  let __resource_attributes =
    ({
       daily_recurrence_time =
         Prop.computed __resource_type __resource_id
           "daily_recurrence_time";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       tags = Prop.computed __resource_type __resource_id "tags";
       timezone =
         Prop.computed __resource_type __resource_id "timezone";
       virtual_machine_id =
         Prop.computed __resource_type __resource_id
           "virtual_machine_id";
     }
      : t)
  in
  __resource_attributes
