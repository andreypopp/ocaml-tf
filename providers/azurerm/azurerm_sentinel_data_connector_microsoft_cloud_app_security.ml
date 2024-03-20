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

type azurerm_sentinel_data_connector_microsoft_cloud_app_security = {
  alerts_enabled : bool prop option; [@option]  (** alerts_enabled *)
  discovery_logs_enabled : bool prop option; [@option]
      (** discovery_logs_enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_cloud_app_security *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_microsoft_cloud_app_security
    ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id ?timeouts
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_microsoft_cloud_app_security =
  {
    alerts_enabled;
    discovery_logs_enabled;
    id;
    log_analytics_workspace_id;
    name;
    tenant_id;
    timeouts;
  }

type t = {
  alerts_enabled : bool prop;
  discovery_logs_enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  tenant_id : string prop;
}

let make ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name __id =
  let __type =
    "azurerm_sentinel_data_connector_microsoft_cloud_app_security"
  in
  let __attrs =
    ({
       alerts_enabled = Prop.computed __type __id "alerts_enabled";
       discovery_logs_enabled =
         Prop.computed __type __id "discovery_logs_enabled";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_microsoft_cloud_app_security
        (azurerm_sentinel_data_connector_microsoft_cloud_app_security
           ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id
           ?timeouts ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?alerts_enabled ?discovery_logs_enabled ?id
    ?tenant_id ?timeouts ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id
      ?timeouts ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
