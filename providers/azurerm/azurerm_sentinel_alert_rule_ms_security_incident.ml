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

type azurerm_sentinel_alert_rule_ms_security_incident = {
  alert_rule_template_guid : string prop option; [@option]
      (** alert_rule_template_guid *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  display_name_exclude_filter : string prop list option; [@option]
      (** display_name_exclude_filter *)
  display_name_filter : string prop list option; [@option]
      (** display_name_filter *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  product_filter : string prop;  (** product_filter *)
  severity_filter : string prop list;  (** severity_filter *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_ms_security_incident *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_ms_security_incident
    ?alert_rule_template_guid ?description
    ?display_name_exclude_filter ?display_name_filter ?enabled ?id
    ?timeouts ~display_name ~log_analytics_workspace_id ~name
    ~product_filter ~severity_filter () :
    azurerm_sentinel_alert_rule_ms_security_incident =
  {
    alert_rule_template_guid;
    description;
    display_name;
    display_name_exclude_filter;
    display_name_filter;
    enabled;
    id;
    log_analytics_workspace_id;
    name;
    product_filter;
    severity_filter;
    timeouts;
  }

type t = {
  alert_rule_template_guid : string prop;
  description : string prop;
  display_name : string prop;
  display_name_exclude_filter : string list prop;
  display_name_filter : string list prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  product_filter : string prop;
  severity_filter : string list prop;
}

let make ?alert_rule_template_guid ?description
    ?display_name_exclude_filter ?display_name_filter ?enabled ?id
    ?timeouts ~display_name ~log_analytics_workspace_id ~name
    ~product_filter ~severity_filter __id =
  let __type = "azurerm_sentinel_alert_rule_ms_security_incident" in
  let __attrs =
    ({
       alert_rule_template_guid =
         Prop.computed __type __id "alert_rule_template_guid";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       display_name_exclude_filter =
         Prop.computed __type __id "display_name_exclude_filter";
       display_name_filter =
         Prop.computed __type __id "display_name_filter";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       product_filter = Prop.computed __type __id "product_filter";
       severity_filter = Prop.computed __type __id "severity_filter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_alert_rule_ms_security_incident
        (azurerm_sentinel_alert_rule_ms_security_incident
           ?alert_rule_template_guid ?description
           ?display_name_exclude_filter ?display_name_filter ?enabled
           ?id ?timeouts ~display_name ~log_analytics_workspace_id
           ~name ~product_filter ~severity_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?alert_rule_template_guid ?description
    ?display_name_exclude_filter ?display_name_filter ?enabled ?id
    ?timeouts ~display_name ~log_analytics_workspace_id ~name
    ~product_filter ~severity_filter __id =
  let (r : _ Tf_core.resource) =
    make ?alert_rule_template_guid ?description
      ?display_name_exclude_filter ?display_name_filter ?enabled ?id
      ?timeouts ~display_name ~log_analytics_workspace_id ~name
      ~product_filter ~severity_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
