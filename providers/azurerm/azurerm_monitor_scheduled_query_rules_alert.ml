(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_alert__action = {
  action_group : string prop list;  (** action_group *)
  custom_webhook_payload : string prop option; [@option]
      (** custom_webhook_payload *)
  email_subject : string prop option; [@option]  (** email_subject *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert__action *)

type azurerm_monitor_scheduled_query_rules_alert__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert__timeouts *)

type azurerm_monitor_scheduled_query_rules_alert__trigger__metric_trigger = {
  metric_column : string prop option; [@option]  (** metric_column *)
  metric_trigger_type : string prop;  (** metric_trigger_type *)
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert__trigger__metric_trigger *)

type azurerm_monitor_scheduled_query_rules_alert__trigger = {
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
  metric_trigger :
    azurerm_monitor_scheduled_query_rules_alert__trigger__metric_trigger
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert__trigger *)

type azurerm_monitor_scheduled_query_rules_alert = {
  authorized_resource_ids : string prop list option; [@option]
      (** authorized_resource_ids *)
  auto_mitigation_enabled : bool prop option; [@option]
      (** auto_mitigation_enabled *)
  data_source_id : string prop;  (** data_source_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  frequency : float prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  query : string prop;  (** query *)
  query_type : string prop option; [@option]  (** query_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  severity : float prop option; [@option]  (** severity *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  throttling : float prop option; [@option]  (** throttling *)
  time_window : float prop;  (** time_window *)
  action : azurerm_monitor_scheduled_query_rules_alert__action list;
  timeouts :
    azurerm_monitor_scheduled_query_rules_alert__timeouts option;
  trigger : azurerm_monitor_scheduled_query_rules_alert__trigger list;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert *)

type t = {
  authorized_resource_ids : string list prop;
  auto_mitigation_enabled : bool prop;
  data_source_id : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  query : string prop;
  query_type : string prop;
  resource_group_name : string prop;
  severity : float prop;
  tags : (string * string) list prop;
  throttling : float prop;
  time_window : float prop;
}

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
    ({
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
      : azurerm_monitor_scheduled_query_rules_alert)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_scheduled_query_rules_alert __resource);
  let __resource_attributes =
    ({
       authorized_resource_ids =
         Prop.computed __resource_type __resource_id
           "authorized_resource_ids";
       auto_mitigation_enabled =
         Prop.computed __resource_type __resource_id
           "auto_mitigation_enabled";
       data_source_id =
         Prop.computed __resource_type __resource_id "data_source_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       query = Prop.computed __resource_type __resource_id "query";
       query_type =
         Prop.computed __resource_type __resource_id "query_type";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       severity =
         Prop.computed __resource_type __resource_id "severity";
       tags = Prop.computed __resource_type __resource_id "tags";
       throttling =
         Prop.computed __resource_type __resource_id "throttling";
       time_window =
         Prop.computed __resource_type __resource_id "time_window";
     }
      : t)
  in
  __resource_attributes
