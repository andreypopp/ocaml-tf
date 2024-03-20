(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_group = {
  email_subject : string prop option; [@option]  (** email_subject *)
  ids : string prop list;  (** ids *)
  webhook_payload : string prop option; [@option]
      (** webhook_payload *)
}
[@@deriving yojson_of]
(** action_group *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  action_group : action_group list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_smart_detector_alert_rule *)

let action_group ?email_subject ?webhook_payload ~ids () :
    action_group =
  { email_subject; ids; webhook_payload }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_smart_detector_alert_rule ?description ?enabled
    ?id ?tags ?throttling_duration ?timeouts ~detector_type
    ~frequency ~name ~resource_group_name ~scope_resource_ids
    ~severity ~action_group () :
    azurerm_monitor_smart_detector_alert_rule =
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

type t = {
  description : string prop;
  detector_type : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_resource_ids : string list prop;
  severity : string prop;
  tags : (string * string) list prop;
  throttling_duration : string prop;
}

let make ?description ?enabled ?id ?tags ?throttling_duration
    ?timeouts ~detector_type ~frequency ~name ~resource_group_name
    ~scope_resource_ids ~severity ~action_group __id =
  let __type = "azurerm_monitor_smart_detector_alert_rule" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       detector_type = Prop.computed __type __id "detector_type";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope_resource_ids =
         Prop.computed __type __id "scope_resource_ids";
       severity = Prop.computed __type __id "severity";
       tags = Prop.computed __type __id "tags";
       throttling_duration =
         Prop.computed __type __id "throttling_duration";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_smart_detector_alert_rule
        (azurerm_monitor_smart_detector_alert_rule ?description
           ?enabled ?id ?tags ?throttling_duration ?timeouts
           ~detector_type ~frequency ~name ~resource_group_name
           ~scope_resource_ids ~severity ~action_group ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags
    ?throttling_duration ?timeouts ~detector_type ~frequency ~name
    ~resource_group_name ~scope_resource_ids ~severity ~action_group
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ?throttling_duration
      ?timeouts ~detector_type ~frequency ~name ~resource_group_name
      ~scope_resource_ids ~severity ~action_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
