(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts *)

type azurerm_sentinel_data_connector_microsoft_threat_intelligence = {
  bing_safety_phishing_url_lookback_date : string option; [@option]
      (** bing_safety_phishing_url_lookback_date *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  microsoft_emerging_threat_feed_lookback_date : string option;
      [@option]
      (** microsoft_emerging_threat_feed_lookback_date *)
  name : string;  (** name *)
  timeouts :
    azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_threat_intelligence *)

let azurerm_sentinel_data_connector_microsoft_threat_intelligence
    ?bing_safety_phishing_url_lookback_date
    ?microsoft_emerging_threat_feed_lookback_date ?timeouts
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_microsoft_threat_intelligence"
  in
  let __resource =
    {
      bing_safety_phishing_url_lookback_date;
      log_analytics_workspace_id;
      microsoft_emerging_threat_feed_lookback_date;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_microsoft_threat_intelligence
       __resource);
  ()
