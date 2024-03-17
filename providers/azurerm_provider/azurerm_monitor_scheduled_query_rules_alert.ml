(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_alert__action = {
  action_group : string list;  (** action_group *)
  custom_webhook_payload : string option; [@option]
      (** custom_webhook_payload *)
  email_subject : string option; [@option]  (** email_subject *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert__action *)

type azurerm_monitor_scheduled_query_rules_alert__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert__timeouts *)

type azurerm_monitor_scheduled_query_rules_alert__trigger__metric_trigger = {
  metric_column : string option; [@option]  (** metric_column *)
  metric_trigger_type : string;  (** metric_trigger_type *)
  operator : string;  (** operator *)
  threshold : float;  (** threshold *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert__trigger__metric_trigger *)

type azurerm_monitor_scheduled_query_rules_alert__trigger = {
  operator : string;  (** operator *)
  threshold : float;  (** threshold *)
  metric_trigger :
    azurerm_monitor_scheduled_query_rules_alert__trigger__metric_trigger
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert__trigger *)

type azurerm_monitor_scheduled_query_rules_alert = {
  authorized_resource_ids : string list option; [@option]
      (** authorized_resource_ids *)
  auto_mitigation_enabled : bool option; [@option]
      (** auto_mitigation_enabled *)
  data_source_id : string;  (** data_source_id *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  frequency : float;  (** frequency *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  query : string;  (** query *)
  query_type : string option; [@option]  (** query_type *)
  resource_group_name : string;  (** resource_group_name *)
  severity : float option; [@option]  (** severity *)
  tags : (string * string) list option; [@option]  (** tags *)
  throttling : float option; [@option]  (** throttling *)
  time_window : float;  (** time_window *)
  action : azurerm_monitor_scheduled_query_rules_alert__action list;
  timeouts :
    azurerm_monitor_scheduled_query_rules_alert__timeouts option;
  trigger : azurerm_monitor_scheduled_query_rules_alert__trigger list;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert *)

let azurerm_monitor_scheduled_query_rules_alert
    ?authorized_resource_ids ?auto_mitigation_enabled ?description
    ?enabled ?id ?query_type ?severity ?tags ?throttling ?timeouts
    ~data_source_id ~frequency ~location ~name ~query
    ~resource_group_name ~time_window ~action ~trigger __resource_id
    =
  let __resource_type =
    "azurerm_monitor_scheduled_query_rules_alert"
  in
  let __resource =
    {
      authorized_resource_ids;
      auto_mitigation_enabled;
      data_source_id;
      description;
      enabled;
      frequency;
      id;
      location;
      name;
      query;
      query_type;
      resource_group_name;
      severity;
      tags;
      throttling;
      time_window;
      action;
      timeouts;
      trigger;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_scheduled_query_rules_alert __resource);
  ()
