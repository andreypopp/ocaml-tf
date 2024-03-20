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

type azurerm_sentinel_data_connector_threat_intelligence_taxii = {
  api_root_url : string prop;  (** api_root_url *)
  collection_id : string prop;  (** collection_id *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  lookback_date : string prop option; [@option]  (** lookback_date *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  polling_frequency : string prop option; [@option]
      (** polling_frequency *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  user_name : string prop option; [@option]  (** user_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_threat_intelligence_taxii *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_threat_intelligence_taxii ?id
    ?lookback_date ?password ?polling_frequency ?tenant_id ?user_name
    ?timeouts ~api_root_url ~collection_id ~display_name
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_threat_intelligence_taxii =
  {
    api_root_url;
    collection_id;
    display_name;
    id;
    log_analytics_workspace_id;
    lookback_date;
    name;
    password;
    polling_frequency;
    tenant_id;
    user_name;
    timeouts;
  }

type t = {
  api_root_url : string prop;
  collection_id : string prop;
  display_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  lookback_date : string prop;
  name : string prop;
  password : string prop;
  polling_frequency : string prop;
  tenant_id : string prop;
  user_name : string prop;
}

let make ?id ?lookback_date ?password ?polling_frequency ?tenant_id
    ?user_name ?timeouts ~api_root_url ~collection_id ~display_name
    ~log_analytics_workspace_id ~name __id =
  let __type =
    "azurerm_sentinel_data_connector_threat_intelligence_taxii"
  in
  let __attrs =
    ({
       api_root_url = Prop.computed __type __id "api_root_url";
       collection_id = Prop.computed __type __id "collection_id";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       lookback_date = Prop.computed __type __id "lookback_date";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       polling_frequency =
         Prop.computed __type __id "polling_frequency";
       tenant_id = Prop.computed __type __id "tenant_id";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_threat_intelligence_taxii
        (azurerm_sentinel_data_connector_threat_intelligence_taxii
           ?id ?lookback_date ?password ?polling_frequency ?tenant_id
           ?user_name ?timeouts ~api_root_url ~collection_id
           ~display_name ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?lookback_date ?password
    ?polling_frequency ?tenant_id ?user_name ?timeouts ~api_root_url
    ~collection_id ~display_name ~log_analytics_workspace_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?lookback_date ?password ?polling_frequency ?tenant_id
      ?user_name ?timeouts ~api_root_url ~collection_id ~display_name
      ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
