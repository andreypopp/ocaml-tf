(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_global_vm_shutdown_schedule__notification_settings = {
  email : string option; [@option]  (** email *)
  enabled : bool;  (** enabled *)
  time_in_minutes : float option; [@option]  (** time_in_minutes *)
  webhook_url : string option; [@option]  (** webhook_url *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_global_vm_shutdown_schedule__notification_settings *)

type azurerm_dev_test_global_vm_shutdown_schedule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_global_vm_shutdown_schedule__timeouts *)

type azurerm_dev_test_global_vm_shutdown_schedule = {
  daily_recurrence_time : string;  (** daily_recurrence_time *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  tags : (string * string) list option; [@option]  (** tags *)
  timezone : string;  (** timezone *)
  virtual_machine_id : string;  (** virtual_machine_id *)
  notification_settings :
    azurerm_dev_test_global_vm_shutdown_schedule__notification_settings
    list;
  timeouts :
    azurerm_dev_test_global_vm_shutdown_schedule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_global_vm_shutdown_schedule *)

let azurerm_dev_test_global_vm_shutdown_schedule ?enabled ?id ?tags
    ?timeouts ~daily_recurrence_time ~location ~timezone
    ~virtual_machine_id ~notification_settings __resource_id =
  let __resource_type =
    "azurerm_dev_test_global_vm_shutdown_schedule"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_global_vm_shutdown_schedule
       __resource);
  ()
