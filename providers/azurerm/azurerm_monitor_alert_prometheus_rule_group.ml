(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_alert_prometheus_rule_group__rule__action = {
  action_group_id : string prop;  (** action_group_id *)
  action_properties : (string * string prop) list option; [@option]
      (** action_properties *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group__rule__action *)

type azurerm_monitor_alert_prometheus_rule_group__rule__alert_resolution = {
  auto_resolved : bool prop option; [@option]  (** auto_resolved *)
  time_to_resolve : string prop option; [@option]
      (** time_to_resolve *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group__rule__alert_resolution *)

type azurerm_monitor_alert_prometheus_rule_group__rule = {
  alert : string prop option; [@option]  (** alert *)
  annotations : (string * string prop) list option; [@option]
      (** annotations *)
  enabled : bool prop option; [@option]  (** enabled *)
  expression : string prop;  (** expression *)
  for_ : string prop option; [@option] [@key "for"]  (** for *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  record : string prop option; [@option]  (** record *)
  severity : float prop option; [@option]  (** severity *)
  action :
    azurerm_monitor_alert_prometheus_rule_group__rule__action list;
  alert_resolution :
    azurerm_monitor_alert_prometheus_rule_group__rule__alert_resolution
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group__rule *)

type azurerm_monitor_alert_prometheus_rule_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group__timeouts *)

type azurerm_monitor_alert_prometheus_rule_group = {
  cluster_name : string prop option; [@option]  (** cluster_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  interval : string prop option; [@option]  (** interval *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  rule_group_enabled : bool prop option; [@option]
      (** rule_group_enabled *)
  scopes : string prop list;  (** scopes *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  rule : azurerm_monitor_alert_prometheus_rule_group__rule list;
  timeouts :
    azurerm_monitor_alert_prometheus_rule_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group *)

type t = {
  cluster_name : string prop;
  description : string prop;
  id : string prop;
  interval : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  rule_group_enabled : bool prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

let azurerm_monitor_alert_prometheus_rule_group ?cluster_name
    ?description ?id ?interval ?rule_group_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~scopes ~rule __resource_id
    =
  let __resource_type =
    "azurerm_monitor_alert_prometheus_rule_group"
  in
  let __resource =
    ({
       cluster_name;
       description;
       id;
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
      : azurerm_monitor_alert_prometheus_rule_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_alert_prometheus_rule_group __resource);
  let __resource_attributes =
    ({
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       interval =
         Prop.computed __resource_type __resource_id "interval";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       rule_group_enabled =
         Prop.computed __resource_type __resource_id
           "rule_group_enabled";
       scopes = Prop.computed __resource_type __resource_id "scopes";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
