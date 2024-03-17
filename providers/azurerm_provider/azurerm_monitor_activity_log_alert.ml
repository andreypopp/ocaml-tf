(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_activity_log_alert__action = {
  action_group_id : string prop;  (** action_group_id *)
  webhook_properties : (string * string prop) list option; [@option]
      (** webhook_properties *)
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__action *)

type azurerm_monitor_activity_log_alert__criteria__resource_health = {
  current : string prop list option; [@option]  (** current *)
  previous : string prop list option; [@option]  (** previous *)
  reason : string prop list option; [@option]  (** reason *)
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__criteria__resource_health *)

type azurerm_monitor_activity_log_alert__criteria__service_health = {
  events : string prop list option; [@option]  (** events *)
  locations : string prop list option; [@option]  (** locations *)
  services : string prop list option; [@option]  (** services *)
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__criteria__service_health *)

type azurerm_monitor_activity_log_alert__criteria = {
  caller : string prop option; [@option]  (** caller *)
  category : string prop;  (** category *)
  level : string prop option; [@option]  (** level *)
  levels : string prop list option; [@option]  (** levels *)
  operation_name : string prop option; [@option]
      (** operation_name *)
  recommendation_category : string prop option; [@option]
      (** recommendation_category *)
  recommendation_impact : string prop option; [@option]
      (** recommendation_impact *)
  recommendation_type : string prop option; [@option]
      (** recommendation_type *)
  resource_group : string prop option; [@option]
      (** resource_group *)
  resource_groups : string prop list option; [@option]
      (** resource_groups *)
  resource_id : string prop option; [@option]  (** resource_id *)
  resource_ids : string prop list option; [@option]
      (** resource_ids *)
  resource_provider : string prop option; [@option]
      (** resource_provider *)
  resource_providers : string prop list option; [@option]
      (** resource_providers *)
  resource_type : string prop option; [@option]  (** resource_type *)
  resource_types : string prop list option; [@option]
      (** resource_types *)
  status : string prop option; [@option]  (** status *)
  statuses : string prop list option; [@option]  (** statuses *)
  sub_status : string prop option; [@option]  (** sub_status *)
  sub_statuses : string prop list option; [@option]
      (** sub_statuses *)
  resource_health :
    azurerm_monitor_activity_log_alert__criteria__resource_health
    list;
  service_health :
    azurerm_monitor_activity_log_alert__criteria__service_health list;
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__criteria *)

type azurerm_monitor_activity_log_alert__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert__timeouts *)

type azurerm_monitor_activity_log_alert = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
