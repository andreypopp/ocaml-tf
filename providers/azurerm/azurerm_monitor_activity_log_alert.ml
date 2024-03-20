(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  action_group_id : string prop;  (** action_group_id *)
  webhook_properties : (string * string prop) list option; [@option]
      (** webhook_properties *)
}
[@@deriving yojson_of]
(** action *)

type criteria__resource_health = {
  current : string prop list option; [@option]  (** current *)
  previous : string prop list option; [@option]  (** previous *)
  reason : string prop list option; [@option]  (** reason *)
}
[@@deriving yojson_of]
(** criteria__resource_health *)

type criteria__service_health = {
  events : string prop list option; [@option]  (** events *)
  locations : string prop list option; [@option]  (** locations *)
  services : string prop list option; [@option]  (** services *)
}
[@@deriving yojson_of]
(** criteria__service_health *)

type criteria = {
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
  resource_health : criteria__resource_health list;
  service_health : criteria__service_health list;
}
[@@deriving yojson_of]
(** criteria *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_activity_log_alert = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  action : action list;
  criteria : criteria list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_activity_log_alert *)

let action ?webhook_properties ~action_group_id () : action =
  { action_group_id; webhook_properties }

let criteria__resource_health ?current ?previous ?reason () :
    criteria__resource_health =
  { current; previous; reason }

let criteria__service_health ?events ?locations ?services () :
    criteria__service_health =
  { events; locations; services }

let criteria ?caller ?level ?levels ?operation_name
    ?recommendation_category ?recommendation_impact
    ?recommendation_type ?resource_group ?resource_groups
    ?resource_id ?resource_ids ?resource_provider ?resource_providers
    ?resource_type ?resource_types ?status ?statuses ?sub_status
    ?sub_statuses ~category ~resource_health ~service_health () :
    criteria =
  {
    caller;
    category;
    level;
    levels;
    operation_name;
    recommendation_category;
    recommendation_impact;
    recommendation_type;
    resource_group;
    resource_groups;
    resource_id;
    resource_ids;
    resource_provider;
    resource_providers;
    resource_type;
    resource_types;
    status;
    statuses;
    sub_status;
    sub_statuses;
    resource_health;
    service_health;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_activity_log_alert ?description ?enabled ?id
    ?tags ?timeouts ~name ~resource_group_name ~scopes ~action
    ~criteria () : azurerm_monitor_activity_log_alert =
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
    ~resource_group_name ~scopes ~action ~criteria __id =
  let __type = "azurerm_monitor_activity_log_alert" in
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
      yojson_of_azurerm_monitor_activity_log_alert
        (azurerm_monitor_activity_log_alert ?description ?enabled ?id
           ?tags ?timeouts ~name ~resource_group_name ~scopes ~action
           ~criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags ?timeouts
    ~name ~resource_group_name ~scopes ~action ~criteria __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ?timeouts ~name
      ~resource_group_name ~scopes ~action ~criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
