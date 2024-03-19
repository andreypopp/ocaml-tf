(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type condition__description = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__description *)

type condition__monitor = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__monitor *)

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

type condition__target_resource_type = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__target_resource_type *)

type condition = {
  alert_context : condition__alert_context list;
  alert_rule_id : condition__alert_rule_id list;
  description : condition__description list;
  monitor : condition__monitor list;
  monitor_service : condition__monitor_service list;
  severity : condition__severity list;
  target_resource_type : condition__target_resource_type list;
}
[@@deriving yojson_of]
(** condition *)

type scope = {
  resource_ids : string prop list;  (** resource_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** scope *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_action_rule_action_group = {
  action_group_id : string prop;  (** action_group_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  condition : condition list;
  scope : scope list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group *)

let condition__alert_context ~operator ~values () :
    condition__alert_context =
  { operator; values }

let condition__alert_rule_id ~operator ~values () :
    condition__alert_rule_id =
  { operator; values }

let condition__description ~operator ~values () :
    condition__description =
  { operator; values }

let condition__monitor ~operator ~values () : condition__monitor =
  { operator; values }

let condition__monitor_service ~operator ~values () :
    condition__monitor_service =
  { operator; values }

let condition__severity ~operator ~values () : condition__severity =
  { operator; values }

let condition__target_resource_type ~operator ~values () :
    condition__target_resource_type =
  { operator; values }

let condition ~alert_context ~alert_rule_id ~description ~monitor
    ~monitor_service ~severity ~target_resource_type () : condition =
  {
    alert_context;
    alert_rule_id;
    description;
    monitor;
    monitor_service;
    severity;
    target_resource_type;
  }

let scope ~resource_ids ~type_ () : scope = { resource_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_action_rule_action_group ?description ?enabled
    ?id ?tags ?timeouts ~action_group_id ~name ~resource_group_name
    ~condition ~scope () : azurerm_monitor_action_rule_action_group =
  {
    action_group_id;
    description;
    enabled;
    id;
    name;
    resource_group_name;
    tags;
    condition;
    scope;
    timeouts;
  }

type t = {
  action_group_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?description ?enabled ?id ?tags ?timeouts
    ~action_group_id ~name ~resource_group_name ~condition ~scope
    __resource_id =
  let __resource_type = "azurerm_monitor_action_rule_action_group" in
  let __resource =
    azurerm_monitor_action_rule_action_group ?description ?enabled
      ?id ?tags ?timeouts ~action_group_id ~name ~resource_group_name
      ~condition ~scope ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_action_rule_action_group __resource);
  let __resource_attributes =
    ({
       action_group_id =
         Prop.computed __resource_type __resource_id
           "action_group_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
