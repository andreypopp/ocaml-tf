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

type azurerm_sentinel_data_connector_office_365 = {
  exchange_enabled : bool prop option; [@option]
      (** exchange_enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  sharepoint_enabled : bool prop option; [@option]
      (** sharepoint_enabled *)
  teams_enabled : bool prop option; [@option]  (** teams_enabled *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_office_365 *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_office_365 ?exchange_enabled ?id
    ?sharepoint_enabled ?teams_enabled ?tenant_id ?timeouts
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_office_365 =
  {
    exchange_enabled;
    id;
    log_analytics_workspace_id;
    name;
    sharepoint_enabled;
    teams_enabled;
    tenant_id;
    timeouts;
  }

type t = {
  exchange_enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  sharepoint_enabled : bool prop;
  teams_enabled : bool prop;
  tenant_id : string prop;
}

let make ?exchange_enabled ?id ?sharepoint_enabled ?teams_enabled
    ?tenant_id ?timeouts ~log_analytics_workspace_id ~name __id =
  let __type = "azurerm_sentinel_data_connector_office_365" in
  let __attrs =
    ({
       exchange_enabled =
         Prop.computed __type __id "exchange_enabled";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       sharepoint_enabled =
         Prop.computed __type __id "sharepoint_enabled";
       teams_enabled = Prop.computed __type __id "teams_enabled";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_office_365
        (azurerm_sentinel_data_connector_office_365 ?exchange_enabled
           ?id ?sharepoint_enabled ?teams_enabled ?tenant_id
           ?timeouts ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?exchange_enabled ?id ?sharepoint_enabled
    ?teams_enabled ?tenant_id ?timeouts ~log_analytics_workspace_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?exchange_enabled ?id ?sharepoint_enabled ?teams_enabled
      ?tenant_id ?timeouts ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
