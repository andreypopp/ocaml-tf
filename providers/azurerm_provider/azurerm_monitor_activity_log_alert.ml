(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_activity_log_alert__action = {
  action_group_id : string;  (** action_group_id *)
  webhook_properties : (string * string) list option; [@option]
      (** webhook_properties *)
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__action *)

type azurerm_monitor_activity_log_alert__criteria__resource_health = {
  current : string list option; [@option]  (** current *)
  previous : string list option; [@option]  (** previous *)
  reason : string list option; [@option]  (** reason *)
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__criteria__resource_health *)

type azurerm_monitor_activity_log_alert__criteria__service_health = {
  events : string list option; [@option]  (** events *)
  locations : string list option; [@option]  (** locations *)
  services : string list option; [@option]  (** services *)
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__criteria__service_health *)

type azurerm_monitor_activity_log_alert__criteria = {
  caller : string option; [@option]  (** caller *)
  category : string;  (** category *)
  level : string option; [@option]  (** level *)
  levels : string list option; [@option]  (** levels *)
  operation_name : string option; [@option]  (** operation_name *)
  recommendation_category : string option; [@option]
      (** recommendation_category *)
  recommendation_impact : string option; [@option]
      (** recommendation_impact *)
  recommendation_type : string option; [@option]
      (** recommendation_type *)
  resource_group : string option; [@option]  (** resource_group *)
  resource_groups : string list option; [@option]
      (** resource_groups *)
  resource_id : string option; [@option]  (** resource_id *)
  resource_ids : string list option; [@option]  (** resource_ids *)
  resource_provider : string option; [@option]
      (** resource_provider *)
  resource_providers : string list option; [@option]
      (** resource_providers *)
  resource_type : string option; [@option]  (** resource_type *)
  resource_types : string list option; [@option]
      (** resource_types *)
  status : string option; [@option]  (** status *)
  statuses : string list option; [@option]  (** statuses *)
  sub_status : string option; [@option]  (** sub_status *)
  sub_statuses : string list option; [@option]  (** sub_statuses *)
  resource_health :
    azurerm_monitor_activity_log_alert__criteria__resource_health
    list;
  service_health :
    azurerm_monitor_activity_log_alert__criteria__service_health list;
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__criteria *)

type azurerm_monitor_activity_log_alert__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__timeouts *)

type azurerm_monitor_activity_log_alert = {
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scopes : string list;  (** scopes *)
  tags : (string * string) list option; [@option]  (** tags *)
  action : azurerm_monitor_activity_log_alert__action list;
  criteria : azurerm_monitor_activity_log_alert__criteria list;
  timeouts : azurerm_monitor_activity_log_alert__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert *)

let azurerm_monitor_activity_log_alert ?description ?enabled ?id
    ?tags ?timeouts ~name ~resource_group_name ~scopes ~action
    ~criteria __resource_id =
  let __resource_type = "azurerm_monitor_activity_log_alert" in
  let __resource =
    {
      description;
      enabled;
      id;
      name;
      resource_group_name;
      scopes;
      tags;
      action;
      criteria;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_activity_log_alert __resource);
  ()
