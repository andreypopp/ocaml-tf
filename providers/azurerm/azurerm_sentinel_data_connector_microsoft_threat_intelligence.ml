(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts *)

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
  timeouts :
    azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_threat_intelligence *)

type t = {
  bing_safety_phishing_url_lookback_date : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  microsoft_emerging_threat_feed_lookback_date : string prop;
  name : string prop;
  tenant_id : string prop;
}

let azurerm_sentinel_data_connector_microsoft_threat_intelligence
    ?bing_safety_phishing_url_lookback_date ?id
    ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_microsoft_threat_intelligence"
  in
  let __resource =
    ({
       bing_safety_phishing_url_lookback_date;
       id;
       log_analytics_workspace_id;
       microsoft_emerging_threat_feed_lookback_date;
       name;
       tenant_id;
       timeouts;
     }
      : azurerm_sentinel_data_connector_microsoft_threat_intelligence)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_microsoft_threat_intelligence
       __resource);
  let __resource_attributes =
    ({
       bing_safety_phishing_url_lookback_date =
         Prop.computed __resource_type __resource_id
           "bing_safety_phishing_url_lookback_date";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       microsoft_emerging_threat_feed_lookback_date =
         Prop.computed __resource_type __resource_id
           "microsoft_emerging_threat_feed_lookback_date";
       name = Prop.computed __resource_type __resource_id "name";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
