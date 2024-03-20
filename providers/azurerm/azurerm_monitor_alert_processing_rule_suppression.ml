(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition__alert_context = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__alert_context *)

type condition__alert_rule_id = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__alert_rule_id *)

type condition__alert_rule_name = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__alert_rule_name *)

type condition__description = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__description *)

type condition__monitor_condition = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__monitor_condition *)

type condition__monitor_service = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__monitor_service *)

type condition__severity = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__severity *)

type condition__signal_type = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__signal_type *)

type condition__target_resource = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__target_resource *)

type condition__target_resource_group = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__target_resource_group *)

type condition__target_resource_type = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__target_resource_type *)

type condition = {
  alert_context : condition__alert_context list;
  alert_rule_id : condition__alert_rule_id list;
  alert_rule_name : condition__alert_rule_name list;
  description : condition__description list;
  monitor_condition : condition__monitor_condition list;
  monitor_service : condition__monitor_service list;
  severity : condition__severity list;
  signal_type : condition__signal_type list;
  target_resource : condition__target_resource list;
  target_resource_group : condition__target_resource_group list;
  target_resource_type : condition__target_resource_type list;
}
[@@deriving yojson_of]
(** condition *)

type schedule__recurrence__daily = {
  end_time : string prop;  (** end_time *)
  start_time : string prop;  (** start_time *)
}
[@@deriving yojson_of]
(** schedule__recurrence__daily *)

type schedule__recurrence__monthly = {
  days_of_month : float prop list;  (** days_of_month *)
  end_time : string prop option; [@option]  (** end_time *)
  start_time : string prop option; [@option]  (** start_time *)
}
[@@deriving yojson_of]
(** schedule__recurrence__monthly *)

type schedule__recurrence__weekly = {
  days_of_week : string prop list;  (** days_of_week *)
  end_time : string prop option; [@option]  (** end_time *)
  start_time : string prop option; [@option]  (** start_time *)
}
[@@deriving yojson_of]
(** schedule__recurrence__weekly *)

type schedule__recurrence = {
  daily : schedule__recurrence__daily list;
  monthly : schedule__recurrence__monthly list;
  weekly : schedule__recurrence__weekly list;
}
[@@deriving yojson_of]
(** schedule__recurrence *)

type schedule = {
  effective_from : string prop option; [@option]
      (** effective_from *)
  effective_until : string prop option; [@option]
      (** effective_until *)
  time_zone : string prop option; [@option]  (** time_zone *)
  recurrence : schedule__recurrence list;
}
[@@deriving yojson_of]
(** schedule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_alert_processing_rule_suppression = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  condition : condition list;
  schedule : schedule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_processing_rule_suppression *)

let condition__alert_context ~operator ~values () :
    condition__alert_context =
  { operator; values }

let condition__alert_rule_id ~operator ~values () :
    condition__alert_rule_id =
  { operator; values }

let condition__alert_rule_name ~operator ~values () :
    condition__alert_rule_name =
  { operator; values }

let condition__description ~operator ~values () :
    condition__description =
  { operator; values }

let condition__monitor_condition ~operator ~values () :
    condition__monitor_condition =
  { operator; values }

let condition__monitor_service ~operator ~values () :
    condition__monitor_service =
  { operator; values }

let condition__severity ~operator ~values () : condition__severity =
  { operator; values }

let condition__signal_type ~operator ~values () :
    condition__signal_type =
  { operator; values }

let condition__target_resource ~operator ~values () :
    condition__target_resource =
  { operator; values }

let condition__target_resource_group ~operator ~values () :
    condition__target_resource_group =
  { operator; values }

let condition__target_resource_type ~operator ~values () :
    condition__target_resource_type =
  { operator; values }

let condition ~alert_context ~alert_rule_id ~alert_rule_name
    ~description ~monitor_condition ~monitor_service ~severity
    ~signal_type ~target_resource ~target_resource_group
    ~target_resource_type () : condition =
  {
    alert_context;
    alert_rule_id;
    alert_rule_name;
    description;
    monitor_condition;
    monitor_service;
    severity;
    signal_type;
    target_resource;
    target_resource_group;
    target_resource_type;
  }

let schedule__recurrence__daily ~end_time ~start_time () :
    schedule__recurrence__daily =
  { end_time; start_time }

let schedule__recurrence__monthly ?end_time ?start_time
    ~days_of_month () : schedule__recurrence__monthly =
  { days_of_month; end_time; start_time }

let schedule__recurrence__weekly ?end_time ?start_time ~days_of_week
    () : schedule__recurrence__weekly =
  { days_of_week; end_time; start_time }

let schedule__recurrence ~daily ~monthly ~weekly () :
    schedule__recurrence =
  { daily; monthly; weekly }

let schedule ?effective_from ?effective_until ?time_zone ~recurrence
    () : schedule =
  { effective_from; effective_until; time_zone; recurrence }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_alert_processing_rule_suppression ?description
    ?enabled ?id ?tags ?timeouts ~name ~resource_group_name ~scopes
    ~condition ~schedule () :
    azurerm_monitor_alert_processing_rule_suppression =
  {
    description;
    enabled;
    id;
    name;
    resource_group_name;
    scopes;
    tags;
    condition;
    schedule;
    timeouts;
  }

type t = {
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

let make ?description ?enabled ?id ?tags ?timeouts ~name
    ~resource_group_name ~scopes ~condition ~schedule __id =
  let __type = "azurerm_monitor_alert_processing_rule_suppression" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scopes = Prop.computed __type __id "scopes";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_alert_processing_rule_suppression
        (azurerm_monitor_alert_processing_rule_suppression
           ?description ?enabled ?id ?tags ?timeouts ~name
           ~resource_group_name ~scopes ~condition ~schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags ?timeouts
    ~name ~resource_group_name ~scopes ~condition ~schedule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ?timeouts ~name
      ~resource_group_name ~scopes ~condition ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
