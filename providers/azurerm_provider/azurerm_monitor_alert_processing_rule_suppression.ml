(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_alert_processing_rule_suppression__condition__alert_context = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__alert_context *)

type azurerm_monitor_alert_processing_rule_suppression__condition__alert_rule_id = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__alert_rule_id *)

type azurerm_monitor_alert_processing_rule_suppression__condition__alert_rule_name = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__alert_rule_name *)

type azurerm_monitor_alert_processing_rule_suppression__condition__description = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__description *)

type azurerm_monitor_alert_processing_rule_suppression__condition__monitor_condition = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__monitor_condition *)

type azurerm_monitor_alert_processing_rule_suppression__condition__monitor_service = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__monitor_service *)

type azurerm_monitor_alert_processing_rule_suppression__condition__severity = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__severity *)

type azurerm_monitor_alert_processing_rule_suppression__condition__signal_type = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__signal_type *)

type azurerm_monitor_alert_processing_rule_suppression__condition__target_resource = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__target_resource *)

type azurerm_monitor_alert_processing_rule_suppression__condition__target_resource_group = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__target_resource_group *)

type azurerm_monitor_alert_processing_rule_suppression__condition__target_resource_type = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition__target_resource_type *)

type azurerm_monitor_alert_processing_rule_suppression__condition = {
  alert_context :
    azurerm_monitor_alert_processing_rule_suppression__condition__alert_context
    list;
  alert_rule_id :
    azurerm_monitor_alert_processing_rule_suppression__condition__alert_rule_id
    list;
  alert_rule_name :
    azurerm_monitor_alert_processing_rule_suppression__condition__alert_rule_name
    list;
  description :
    azurerm_monitor_alert_processing_rule_suppression__condition__description
    list;
  monitor_condition :
    azurerm_monitor_alert_processing_rule_suppression__condition__monitor_condition
    list;
  monitor_service :
    azurerm_monitor_alert_processing_rule_suppression__condition__monitor_service
    list;
  severity :
    azurerm_monitor_alert_processing_rule_suppression__condition__severity
    list;
  signal_type :
    azurerm_monitor_alert_processing_rule_suppression__condition__signal_type
    list;
  target_resource :
    azurerm_monitor_alert_processing_rule_suppression__condition__target_resource
    list;
  target_resource_group :
    azurerm_monitor_alert_processing_rule_suppression__condition__target_resource_group
    list;
  target_resource_type :
    azurerm_monitor_alert_processing_rule_suppression__condition__target_resource_type
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__condition *)

type azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__daily = {
  end_time : string;  (** end_time *)
  start_time : string;  (** start_time *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__daily *)

type azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__monthly = {
  days_of_month : float list;  (** days_of_month *)
  end_time : string option; [@option]  (** end_time *)
  start_time : string option; [@option]  (** start_time *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__monthly *)

type azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__weekly = {
  days_of_week : string list;  (** days_of_week *)
  end_time : string option; [@option]  (** end_time *)
  start_time : string option; [@option]  (** start_time *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__weekly *)

type azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence = {
  daily :
    azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__daily
    list;
  monthly :
    azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__monthly
    list;
  weekly :
    azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__weekly
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence *)

type azurerm_monitor_alert_processing_rule_suppression__schedule = {
  effective_from : string option; [@option]  (** effective_from *)
  effective_until : string option; [@option]  (** effective_until *)
  time_zone : string option; [@option]  (** time_zone *)
  recurrence :
    azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__schedule *)

type azurerm_monitor_alert_processing_rule_suppression__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression__timeouts *)

type azurerm_monitor_alert_processing_rule_suppression = {
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scopes : string list;  (** scopes *)
  tags : (string * string) list option; [@option]  (** tags *)
  condition :
    azurerm_monitor_alert_processing_rule_suppression__condition list;
  schedule :
    azurerm_monitor_alert_processing_rule_suppression__schedule list;
  timeouts :
    azurerm_monitor_alert_processing_rule_suppression__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression *)

let azurerm_monitor_alert_processing_rule_suppression ?description
    ?enabled ?tags ?timeouts ~name ~resource_group_name ~scopes
    ~condition ~schedule __resource_id =
  let __resource_type =
    "azurerm_monitor_alert_processing_rule_suppression"
  in
  let __resource =
    {
      description;
      enabled;
      name;
      resource_group_name;
      scopes;
      tags;
      condition;
      schedule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_alert_processing_rule_suppression
       __resource);
  ()
