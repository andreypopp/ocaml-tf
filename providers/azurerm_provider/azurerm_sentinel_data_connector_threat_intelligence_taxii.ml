(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts *)

type azurerm_sentinel_data_connector_threat_intelligence_taxii = {
  api_root_url : string;  (** api_root_url *)
  collection_id : string;  (** collection_id *)
  display_name : string;  (** display_name *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  lookback_date : string option; [@option]  (** lookback_date *)
  name : string;  (** name *)
  password : string option; [@option]  (** password *)
  polling_frequency : string option; [@option]
      (** polling_frequency *)
  user_name : string option; [@option]  (** user_name *)
  timeouts :
    azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_threat_intelligence_taxii *)

let azurerm_sentinel_data_connector_threat_intelligence_taxii
    ?lookback_date ?password ?polling_frequency ?user_name ?timeouts
    ~api_root_url ~collection_id ~display_name
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_threat_intelligence_taxii"
  in
  let __resource =
    {
      api_root_url;
      collection_id;
      display_name;
      log_analytics_workspace_id;
      lookback_date;
      name;
      password;
      polling_frequency;
      user_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_threat_intelligence_taxii
       __resource);
  ()
