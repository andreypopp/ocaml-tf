(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  action_group : string prop list;  (** action_group *)
  custom_webhook_payload : string prop option; [@option]
      (** custom_webhook_payload *)
  email_subject : string prop option; [@option]  (** email_subject *)
}
[@@deriving yojson_of]
(** action *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type trigger__metric_trigger = {
  metric_column : string prop option; [@option]  (** metric_column *)
  metric_trigger_type : string prop;  (** metric_trigger_type *)
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
}
[@@deriving yojson_of]
(** trigger__metric_trigger *)

type trigger = {
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
  metric_trigger : trigger__metric_trigger list;
}
[@@deriving yojson_of]
(** trigger *)

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
  action : action list;
  timeouts : timeouts option;
  trigger : trigger list;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert *)

let action ?custom_webhook_payload ?email_subject ~action_group () :
    action =
  { action_group; custom_webhook_payload; email_subject }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let trigger__metric_trigger ?metric_column ~metric_trigger_type
    ~operator ~threshold () : trigger__metric_trigger =
  { metric_column; metric_trigger_type; operator; threshold }

let trigger ~operator ~threshold ~metric_trigger () : trigger =
  { operator; threshold; metric_trigger }

let azurerm_monitor_scheduled_query_rules_alert
    ?authorized_resource_ids ?auto_mitigation_enabled ?description
    ?enabled ?id ?query_type ?severity ?tags ?throttling ?timeouts
    ~data_source_id ~frequency ~location ~name ~query
    ~resource_group_name ~time_window ~action ~trigger () :
    azurerm_monitor_scheduled_query_rules_alert =
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

let make ?authorized_resource_ids ?auto_mitigation_enabled
    ?description ?enabled ?id ?query_type ?severity ?tags ?throttling
    ?timeouts ~data_source_id ~frequency ~location ~name ~query
    ~resource_group_name ~time_window ~action ~trigger __id =
  let __type = "azurerm_monitor_scheduled_query_rules_alert" in
  let __attrs =
    ({
       authorized_resource_ids =
         Prop.computed __type __id "authorized_resource_ids";
       auto_mitigation_enabled =
         Prop.computed __type __id "auto_mitigation_enabled";
       data_source_id = Prop.computed __type __id "data_source_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       query = Prop.computed __type __id "query";
       query_type = Prop.computed __type __id "query_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       severity = Prop.computed __type __id "severity";
       tags = Prop.computed __type __id "tags";
       throttling = Prop.computed __type __id "throttling";
       time_window = Prop.computed __type __id "time_window";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_scheduled_query_rules_alert
        (azurerm_monitor_scheduled_query_rules_alert
           ?authorized_resource_ids ?auto_mitigation_enabled
           ?description ?enabled ?id ?query_type ?severity ?tags
           ?throttling ?timeouts ~data_source_id ~frequency ~location
           ~name ~query ~resource_group_name ~time_window ~action
           ~trigger ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized_resource_ids
    ?auto_mitigation_enabled ?description ?enabled ?id ?query_type
    ?severity ?tags ?throttling ?timeouts ~data_source_id ~frequency
    ~location ~name ~query ~resource_group_name ~time_window ~action
    ~trigger __id =
  let (r : _ Tf_core.resource) =
    make ?authorized_resource_ids ?auto_mitigation_enabled
      ?description ?enabled ?id ?query_type ?severity ?tags
      ?throttling ?timeouts ~data_source_id ~frequency ~location
      ~name ~query ~resource_group_name ~time_window ~action ~trigger
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
