(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_alert_rule_threat_intelligence = {
  alert_rule_template_guid : string prop;
      (** alert_rule_template_guid *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_threat_intelligence *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_threat_intelligence ?enabled ?id
    ?timeouts ~alert_rule_template_guid ~log_analytics_workspace_id
    ~name () : azurerm_sentinel_alert_rule_threat_intelligence =
  {
    alert_rule_template_guid;
    enabled;
    id;
    log_analytics_workspace_id;
    name;
    timeouts;
  }

type t = {
  alert_rule_template_guid : string prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

let make ?enabled ?id ?timeouts ~alert_rule_template_guid
    ~log_analytics_workspace_id ~name __id =
  let __type = "azurerm_sentinel_alert_rule_threat_intelligence" in
  let __attrs =
    ({
       alert_rule_template_guid =
         Prop.computed __type __id "alert_rule_template_guid";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_alert_rule_threat_intelligence
        (azurerm_sentinel_alert_rule_threat_intelligence ?enabled ?id
           ?timeouts ~alert_rule_template_guid
           ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?timeouts
    ~alert_rule_template_guid ~log_analytics_workspace_id ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?timeouts ~alert_rule_template_guid
      ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
