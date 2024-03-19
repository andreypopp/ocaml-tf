(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rule__action = {
  action_group_id : string prop;  (** action_group_id *)
  action_properties : (string * string prop) list option; [@option]
      (** action_properties *)
}
[@@deriving yojson_of]
(** rule__action *)

type rule__alert_resolution = {
  auto_resolved : bool prop option; [@option]  (** auto_resolved *)
  time_to_resolve : string prop option; [@option]
      (** time_to_resolve *)
}
[@@deriving yojson_of]
(** rule__alert_resolution *)

type rule = {
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
  action : rule__action list;
  alert_resolution : rule__alert_resolution list;
}
[@@deriving yojson_of]
(** rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_alert_prometheus_rule_group *)

let rule__action ?action_properties ~action_group_id () :
    rule__action =
  { action_group_id; action_properties }

let rule__alert_resolution ?auto_resolved ?time_to_resolve () :
    rule__alert_resolution =
  { auto_resolved; time_to_resolve }

let rule ?alert ?annotations ?enabled ?for_ ?labels ?record ?severity
    ~expression ~action ~alert_resolution () : rule =
  {
    alert;
    annotations;
    enabled;
    expression;
    for_;
    labels;
    record;
    severity;
    action;
    alert_resolution;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_alert_prometheus_rule_group ?cluster_name
    ?description ?id ?interval ?rule_group_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~scopes ~rule () :
    azurerm_monitor_alert_prometheus_rule_group =
  {
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

let register ?tf_module ?cluster_name ?description ?id ?interval
    ?rule_group_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~scopes ~rule __resource_id =
  let __resource_type =
    "azurerm_monitor_alert_prometheus_rule_group"
  in
  let __resource =
    azurerm_monitor_alert_prometheus_rule_group ?cluster_name
      ?description ?id ?interval ?rule_group_enabled ?tags ?timeouts
      ~location ~name ~resource_group_name ~scopes ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
