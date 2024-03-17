(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_smart_detector_alert_rule__action_group = {
  email_subject : string option; [@option]  (** email_subject *)
  ids : string list;  (** ids *)
  webhook_payload : string option; [@option]  (** webhook_payload *)
}
[@@deriving yojson_of]
(** azurerm_monitor_smart_detector_alert_rule__action_group *)

type azurerm_monitor_smart_detector_alert_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_smart_detector_alert_rule__timeouts *)

type azurerm_monitor_smart_detector_alert_rule = {
  description : string option; [@option]  (** description *)
  detector_type : string;  (** detector_type *)
  enabled : bool option; [@option]  (** enabled *)
  frequency : string;  (** frequency *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scope_resource_ids : string list;  (** scope_resource_ids *)
  severity : string;  (** severity *)
  tags : (string * string) list option; [@option]  (** tags *)
  throttling_duration : string option; [@option]
      (** throttling_duration *)
  action_group :
    azurerm_monitor_smart_detector_alert_rule__action_group list;
  timeouts :
    azurerm_monitor_smart_detector_alert_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_smart_detector_alert_rule *)

let azurerm_monitor_smart_detector_alert_rule ?description ?enabled
    ?id ?tags ?throttling_duration ?timeouts ~detector_type
    ~frequency ~name ~resource_group_name ~scope_resource_ids
    ~severity ~action_group __resource_id =
  let __resource_type =
    "azurerm_monitor_smart_detector_alert_rule"
  in
  let __resource =
    {
      description;
      detector_type;
      enabled;
      frequency;
      id;
      name;
      resource_group_name;
      scope_resource_ids;
      severity;
      tags;
      throttling_duration;
      action_group;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_smart_detector_alert_rule __resource);
  ()
