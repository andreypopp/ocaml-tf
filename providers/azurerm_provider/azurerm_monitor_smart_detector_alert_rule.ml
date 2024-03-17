(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_smart_detector_alert_rule__action_group = {
  email_subject : string prop option; [@option]  (** email_subject *)
  ids : string prop list;  (** ids *)
  webhook_payload : string prop option; [@option]
      (** webhook_payload *)
}
[@@deriving yojson_of]
(** azurerm_monitor_smart_detector_alert_rule__action_group *)

type azurerm_monitor_smart_detector_alert_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_smart_detector_alert_rule__timeouts *)

type azurerm_monitor_smart_detector_alert_rule = {
  description : string prop option; [@option]  (** description *)
  detector_type : string prop;  (** detector_type *)
  enabled : bool prop option; [@option]  (** enabled *)
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope_resource_ids : string prop list;  (** scope_resource_ids *)
  severity : string prop;  (** severity *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  throttling_duration : string prop option; [@option]
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
