(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_data_connector_microsoft_threat_intelligence = {
  bing_safety_phishing_url_lookback_date : string prop option;
      [@option]
      (** bing_safety_phishing_url_lookback_date *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  microsoft_emerging_threat_feed_lookback_date : string prop option;
      [@option]
      (** microsoft_emerging_threat_feed_lookback_date *)
  name : string prop;  (** name *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_threat_intelligence *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sentinel_data_connector_microsoft_threat_intelligence
    ?bing_safety_phishing_url_lookback_date ?id
    ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_microsoft_threat_intelligence =
  {
    bing_safety_phishing_url_lookback_date;
    id;
    log_analytics_workspace_id;
    microsoft_emerging_threat_feed_lookback_date;
    name;
    tenant_id;
    timeouts;
  }

type t = {
  bing_safety_phishing_url_lookback_date : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  microsoft_emerging_threat_feed_lookback_date : string prop;
  name : string prop;
  tenant_id : string prop;
}

let make ?bing_safety_phishing_url_lookback_date ?id
    ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name __id =
  let __type =
    "azurerm_sentinel_data_connector_microsoft_threat_intelligence"
  in
  let __attrs =
    ({
       bing_safety_phishing_url_lookback_date =
         Prop.computed __type __id
           "bing_safety_phishing_url_lookback_date";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       microsoft_emerging_threat_feed_lookback_date =
         Prop.computed __type __id
           "microsoft_emerging_threat_feed_lookback_date";
       name = Prop.computed __type __id "name";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_microsoft_threat_intelligence
        (azurerm_sentinel_data_connector_microsoft_threat_intelligence
           ?bing_safety_phishing_url_lookback_date ?id
           ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
           ?timeouts ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?bing_safety_phishing_url_lookback_date ?id
    ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?bing_safety_phishing_url_lookback_date ?id
      ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
      ?timeouts ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
