(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_monitor_alert_prometheus_rule_group__rule__action = {
  action_group_id : string;  (** action_group_id *)
  action_properties : (string * string) list option; [@option]
      (** action_properties *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group__rule__action *)

type azurerm_monitor_alert_prometheus_rule_group__rule__alert_resolution = {
  auto_resolved : bool option; [@option]  (** auto_resolved *)
  time_to_resolve : string option; [@option]  (** time_to_resolve *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group__rule__alert_resolution *)

type azurerm_monitor_alert_prometheus_rule_group__rule = {
  alert : string option; [@option]  (** alert *)
  annotations : (string * string) list option; [@option]
      (** annotations *)
  enabled : bool option; [@option]  (** enabled *)
  expression : string;  (** expression *)
  for_ : string option; [@option] [@key "for"]  (** for *)
  labels : (string * string) list option; [@option]  (** labels *)
  record : string option; [@option]  (** record *)
  severity : float option; [@option]  (** severity *)
  action :
    azurerm_monitor_alert_prometheus_rule_group__rule__action list;
  alert_resolution :
    azurerm_monitor_alert_prometheus_rule_group__rule__alert_resolution
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group__rule *)

type azurerm_monitor_alert_prometheus_rule_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group__timeouts *)

type azurerm_monitor_alert_prometheus_rule_group = {
  cluster_name : string option; [@option]  (** cluster_name *)
  description : string option; [@option]  (** description *)
  interval : string option; [@option]  (** interval *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  rule_group_enabled : bool option; [@option]
      (** rule_group_enabled *)
  scopes : string list;  (** scopes *)
  tags : (string * string) list option; [@option]  (** tags *)
  rule : azurerm_monitor_alert_prometheus_rule_group__rule list;
  timeouts :
    azurerm_monitor_alert_prometheus_rule_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group *)

let azurerm_monitor_alert_prometheus_rule_group ?cluster_name
    ?description ?interval ?rule_group_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~scopes ~rule __resource_id
    =
  let __resource_type =
    "azurerm_monitor_alert_prometheus_rule_group"
  in
  let __resource =
    {
      cluster_name;
      description;
      interval;
      location;
      name;
      resource_group_name;
      rule_group_enabled;
      scopes;
      tags;
      rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_alert_prometheus_rule_group __resource);
  ()
